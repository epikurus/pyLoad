#!/usr/bin/env python
from __future__ import with_statement
from os import makedirs
from os.path import exists, join
import threading
import logging

core = None
log = logging.getLogger("log")

class WebServer(threading.Thread):
    def __init__(self, pycore):
        global core
        threading.Thread.__init__(self)
        self.core = pycore
        core = pycore
        self.running = True
        self.server = pycore.config['webinterface']['server']
        self.https = pycore.config['webinterface']['https']
        self.cert = pycore.config["ssl"]["cert"]
        self.key = pycore.config["ssl"]["key"]
        self.host = pycore.config['webinterface']['host']
        self.port = pycore.config['webinterface']['port']

        self.setDaemon(True)

    def run(self):
        import webinterface
        global webinterface

        cache = join("tmp", "jinja_cache")
        if not exists(cache):
            makedirs(cache)

        if self.https:
            if not exists(self.cert) or not exists(self.key):
                log.warning(_("SSL certificates not found."))
                self.https = False

        if self.server in ("lighttpd", "nginx"):
            log.warning(_("Sorry, we dropped support for starting %s directly within pyLoad") % self.server)
            log.warning(_("You can use the threaded server which offers good performance and ssl,"))
            log.warning(_("of course you can still use your existing %s with pyLoads fastcgi server") % self.server)
            log.warning(_("sample configs are located in the module/web/servers directory"))
            self.server = "builtin"

        if self.server == "fastcgi":
            try:
                import flup
            except:
                log.warning(_("Can't use %(server)s, python-flup is not installed!") % {
                    "server": self.server})
                self.server = "builtin"

        if self.server == "fastcgi":
            self.start_fcgi()
        elif self.server == "threaded":
            self.start_threaded()
        else:
            self.start_builtin()

    def start_builtin(self):

        if self.https:
            log.warning(_("The simple builtin server offers no SSL, please consider using threaded instead"))

        self.core.log.info(_("Starting builtin webserver: %(host)s:%(port)d") % {"host": self.host, "port": self.port})
        webinterface.run_simple(host=self.host, port=self.port)

    def start_threaded(self):
        if self.https:
            self.core.log.info(_("Starting threaded SSL webserver: %(host)s:%(port)d") % {"host": self.host, "port": self.port})
        else:
            self.cert = ""
            self.key = ""
            self.core.log.info(_("Starting threaded webserver: %(host)s:%(port)d") % {"host": self.host, "port": self.port})

        webinterface.run_threaded(host=self.host, port=self.port, cert=self.cert, key=self.key)

    def start_fcgi(self):

        self.core.log.info(_("Starting fastcgi server: %(host)s:%(port)d") % {"host": self.host, "port": self.port})
        webinterface.run_fcgi(host=self.host, port=self.port)

    def quit(self):
        self.running = False
