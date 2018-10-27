
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

        name = html.escape(name)
        print(name)

        nyr_notandi=[name,address,email,phone,username,password]
        valid = True

        if valid:
            return template('signup_success.tpl', name = new_user[0])
        else:
            return redirect("/")


bottle.run(host='0.0.0.0', port=argv[1])
