#!/usr/bin/python
# -*- coding: utf-8 -*-
"""
authored by:  RaNaN

represents the object for interaction

"""
class RequestObject(object):
    def __init__(self):
        self.version = 0
        self.sender = "ip"
        self.command = None
        self.function = ""
        self.args = []
        self.response = ""