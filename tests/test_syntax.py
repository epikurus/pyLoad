# -*- coding: utf-8 -*-

import __builtin__
from os import walk
from os.path import abspath, dirname, join

from unittest import TestCase

PATH = abspath(join(dirname(abspath(__file__)), "..", ""))

# needed to register globals
from helper import Stubs

class TestSyntax(TestCase):
    pass


for path, dirs, files in walk(join(PATH, "module")):

    for f in files:
        if not f.endswith(".py") or f.startswith("__"): continue
        fpath = join(path, f)
        pack = fpath.replace(PATH, "")[1:-3] #replace / and  .py
        imp = pack.replace("/", ".")
        packages = imp.split(".")
        #__import__(imp)

        # to much sideeffect when importing
        if "web" in packages or "lib" in packages: continue
        if "ThriftTest" in packages: continue

        # currying
        def meta(imp, sig):
            def _test(self=None):
                __import__(imp)

            _test.func_name = sig
            return _test

        # generate test methods
        sig = "test_%s_%s" % (packages[-2], packages[-1])


        setattr(TestSyntax, sig, meta(imp, sig))