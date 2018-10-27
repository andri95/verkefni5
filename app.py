
from sys import argv

import bottle
from bottle import *

bottle.debug(True)

@get('/')
def index():
    return template ('index.tpl')

@post('/process')
def form_process():
    if request.POST.get("submit","").strip():
        name = request.forms.get('nafn')
        address = request.forms.get('heimilisfang')
        email = request.forms.get('netfang')
        phone = request.forms.get('simi')
        namskeid_listi = request.forms.getall('namskeid')
        fj_daga_listi = request.forms.getall('fj_daga')
        dagar_listi = request.forms.getall('dagar')

        nyr_notandi=[name,address,email,phone]
        valid = True

        if valid:
            return template('undirsida.tpl', name = nyr_notandi[0])
        else:
            return redirect("/")


bottle.run(host='0.0.0.0', port=argv[1])
