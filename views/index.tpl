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
                % for x in range(len(namskeid_prufa)):
                   <input type="checkbox" id="{{namskeid_prufa[x]}}" name="namskeid" value="{{namskeid_prufa[x]}}">
                   <label for="{{namskeid_prufa[x]}}">{{namskeid_prufa[x]}}</label>
                % end

                <h1>Hvað viltu sitja námskeiðið marga daga?</h1>
                % for x in range(len(fj_daga_prufa)):
                   <input type="checkbox" id="{{fj_daga_prufa[x]}}" name="fj_daga" value="{{fj_daga_prufa[x]}}">
                   <label for="{{fj_daga_prufa[x]}}">{{fj_daga_prufa[x]}}</label>
                % end

                <h1>Hvaða daga viltu sitja?</h1>
                % for x in range(len(dagar_prufa)):
                   <input type="checkbox" id="{{dagar_prufa[x]}}" name="dagar" value="{{dagar_prufa[x]}}">
                   <label for="{{dagar_prufa[x]}}">{{dagar_prufa[x]}}</label>
                % end

                <h1>Hvaða fyrirlestur viltu sitja hvaða dag? ATH aðeins einn fyrirlestur á dag</h1>
                % for checkbox in 'namskeid':
                    % val_nams = request.forms.get(checkbox)
                % end
                % for checkbox in 'dagar':
                    % val_dagar = request.forms.get(checkbox)
                % end
                <div>
                % for x in range(len(val_dagar)):
                    <h1>{{val_dagar[x]}}</h1>
                    % for x in range(len(val_nams)):
                        % if val_nams[x] == 'Python':
                            % for x in range(len(namskeid_py)):
                                <input type="checkbox" id="{{namskeid_py[x]}}" name="namskeid_dagur" value="{{namskeid_py[x]}}">
                                <label for="{{namskeid_py[x]}}">{{namskeid_py[x]}}</label>
                            % end
                        % end
                        % elif val_nams[x] == 'JavaScript':
                            % for x in range(len(namskeid_java)):
                                <input type="checkbox" id="{{namskeid_java[x]}}" name="namskeid_dagur" value="{{namskeid_java[x]}}">
                                <label for="{{namskeid_java[x]}}">{{namskeid_java[x]}}</label>
                            % end
                        % end
                        % elif val_nams[x] == 'Gagnasöfn':
                            % for x in range(len(namskeid_gagn)):
                                <input type="checkbox" id="{{namskeid_gagn[x]}}" name="namskeid_dagur" value="{{namskeid_gagn[x]}}">
                                <label for="{{namskeid_gagn[x]}}">{{namskeid_gagn[x]}}</label>
                            % end
                        % end
                        % elif val_nams[x] == 'Windows Server':
                            % for x in range(len(namskeid_win)):
                                <input type="checkbox" id="{{namskeid_win[x]}}" name="namskeid_dagur" value="{{namskeid_win[x]}}">
                                <label for="{{namskeid_win[x]}}">{{namskeid_win[x]}}</label>
                            % end
                        % end
                    % end
                </div>
                <div>
                <h2>Þriðjudagur</h2>
                   <input type="checkbox" id="midvikudagur" name="dagar" value="midvikudagur">
                   <label for="midvikudagur">Miðvikudag</label>
                </div>
                <div>
                <h2>Miðvikudagur</h2>
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