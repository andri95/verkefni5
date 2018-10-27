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
                % for x in range(0, len(namskeid_prufa), 1):
                   <input type="checkbox" id="{{namskeid_prufa[x]}}" name="namskeid" value="{{namskeid_prufa[x]}}">
                   <label for="{{namskeid_prufa[x]}}">{{namskeid_prufa[x]}}</label>
                % end

                <h1>Hvað viltu sitja námskeiðið marga daga?</h1>
                % for x in range(0, len(fj_daga_prufa), 1):
                   <input type="checkbox" id="{{fj_daga_prufa[x]}}" name="fj_daga" value="{{fj_daga_prufa[x]}}">
                   <label for="{{fj_daga_prufa[x]}}">{{fj_daga_prufa[x]}}</label>
                % end

                <h1>Hvaða daga viltu sitja?</h1>
                % for x in range(0, len(dagar_prufa), 1):
                   <input type="checkbox" id="{{dagar_prufa[x]}}" name="dagar" value="{{dagar_prufa[x]}}">
                   <label for="{{dagar_prufa[x]}}">{{dagar_prufa[x]}}</label>
                % end
              </fieldset>
              <fieldset>
                 <input type = "submit" name = "submit" value = "Staðfesta" />
              </fieldset>
            </form>
        </div>
    </section>
</body>