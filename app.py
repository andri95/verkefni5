
from sys import argv

import bottle
from bottle import *

bottle.debug(True)

@get('/')
def index():
    namskeid_prufa = ['Python', 'JavaScript', 'Gagnasöfn', 'Windows Server']
    fj_daga_prufa = ['1', '2', '3']
    dagar_prufa = ['Mánudagur', 'Þriðjudagur', 'Miðvikudagur']
    namskeid_py = ['For', 'While', 'If']
    namskeid_java = ['level1','level2', 'level3']
    namskeid_gagn = ['level1','level2', 'level3']
    namskeid_win = ['level1','level2', 'level3']
    return template ('index.tpl', namskeid_prufa = namskeid_prufa, fj_daga_prufa = fj_daga_prufa, dagar_prufa = dagar_prufa, namskeid_py = namskeid_py, namskeid_java = namskeid_java, namskeid_gagn = namskeid_gagn, namskeid_win = namskeid_win)


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
        val_dagur_listi = request.forms.getall('val_dagur')

        nyr_notandi=[name,address,email,phone]
        valid = True

        if valid:
            return template('undirsida.tpl', name = nyr_notandi[0])
        else:
            return redirect("/")


bottle.run(host='0.0.0.0', port=argv[1])
