#!/usr/bin/env python
# -*- coding: utf-8 -*-

from sys import argv

import bottle
from bottle import *

bottle.debug(True)

@get('/')
def index():
    return template ('index.tpl')

@route("/send", method="POST")
def form_process():
    postdata = request.body.read()
    fornafn = request.forms.get("fornafn")
    eftirnafn = request.forms.get("eftirnafn")

    # heppilegra að nota template
    return template ('undirsida.tpl', postdata = postdata)

bottle.run(host='0.0.0.0', port=argv[1])
