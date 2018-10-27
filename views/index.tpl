<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <link type="text/css" href="/static/style.css" rel="stylesheet"/>
    </head>
    <body>
    <section>
        <div>
            <h1>Námskeið</h1>
        </div>
        <div>
           <form action="/process" method="post">
                 <fieldset>
                 <h3>Notendaupplýsingar</h3>
                 <div>
                    <label>Nafn:</label>
                    <input type = "text" name = "nafn" required="required">
                 </div>
                 <div>
                    <label>Heimilisfang:</label>
                    <input type = "text" name = "heimilisfang" required="required">
                 </div>
                 <div>
                    <label>Netfang:</label>
                    <input type = "email" name = "netfang" required="required">
                 </div>
                 <div>
                    <label>Símanúmer:</label>
                    <input type = "text" name = "simi" pattern="^(\+354 )?\d{3}[ -]?\d{4}$">
                 </div>
              </fieldset>
              <fieldset>
                <h1>Veldu námskeið - ATH aðeins má velja eitt námskeið</h1>
                <div>
                   <input type="checkbox" id="python" name="namskeid" value="python">
                   <label for="python">Python</label>
                </div>
                <div>
                   <input type="checkbox" id="javascript" name="namskeid" value="jacascript">
                   <label for="javascript">JavaScript</label>
                </div>
                <div>
                   <input type="checkbox" id="gagnasofn" name="namskeid" value="gagnasofn">
                   <label for="gagnasofn">Gagnasöfn</label>
                </div>
                <div>
                   <input type="checkbox" id="winserv" name="namskeid" value="winserv">
                   <label for="winserv">Windows Server</label>
                </div>
                <h1>Hvað viltu sitja námskeiðið marga daga?</h1>
                <div>
                   <input type="checkbox" id="einn_dagur" name="fj_daga" value="einn_dagur">
                   <label for="einn_dagur">Einn dag</label>
                </div>
                <div>
                   <input type="checkbox" id="tveir_dagar name="fj_daga" value="tveir_dagar">
                   <label for="tveir_dagar">Tvo daga</label>
                </div>
                <div>
                   <input type="checkbox" id="thrir_dagar" name="fj_daga" value="thrir_dagar">
                   <label for="thrir_dagar">Þrjá daga</label>
                </div>
                <h1>Hvaða daga viltu sitja?</h1>
                <div>
                   <input type="checkbox" id="manudagur" name="dagar" value="manudagur">
                   <label for="manudagur">Mánudag</label>
                </div>
                <div>
                   <input type="checkbox" id="thridjudagur" name="dagar" value="thridjudagur">
                   <label for="thridjudagur">Þriðjudag</label>
                </div>
                <div>
                   <input type="checkbox" id="midvikudagur" name="dagar" value="midvikudagur">
                   <label for="midvikudagur">Miðvikudag</label>
                </div>
              </fieldset>
              <fieldset>
                 <input type = "submit" name = "submit" value = "Staðfesta" />
              </fieldset>
            </form>
        </div>
    </section>
</body>