Náði ekki að nota checkbox upplýsingarnar sem ég þurfti til að láta þetta allt virka eins og það á að gera inni í index skjalinu. Reyndi að fikta með request.forms.get í index fallinu en það náttúrulega virkaði ekki. Reyndi líka fyrir mér á netinu með litlum árangri. Heroku virkaði allavega í þetta skiptið
"""
                % for x in range(len(dagar_listi)):
                    <h2>{{dagar_listi[x]}}</h2>
                    % for i in range(len(namskeid_listi)):

                        % if namskeid_listi[i] == 'Python':
                            % for x in range(len(namskeid_py)):
                                <input type="checkbox" id="{{namskeid_py[x]}}" name="val_dagur" value="{{namskeid_py[x]}}">
                                <label for="{{namskeid_py[x]}}">{{namskeid_py[x]}}</label>
                            % end
                        % end

                        % if namskeid_listi[i] == 'JavaScript':
                            % for x in range(len(namskeid_java)):
                                <input type="checkbox" id="{{namskeid_java[x]}}" name="val_dagur" value="{{namskeid_java[x]}}">
                                <label for="{{namskeid_java[x]}}">{{namskeid_java[x]}}</label>
                            % end
                        % end

                        % if namskeid_listi[i] == 'Gagnasöfn':
                            % for x in range(len(namskeid_gagn)):
                                <input type="checkbox" id="{{namskeid_gagn[x]}}" name="val_dagur" value="{{namskeid_gagn[x]}}">
                                <label for="{{namskeid_gagn[x]}}">{{namskeid_gagn[x]}}</label>
                            % end
                        % end

                        % if namskeid_listi[i] == 'Windows Server':
                            % for x in range(len(namskeid_win)):
                                <input type="checkbox" id="{{namskeid_win[x]}}" name="val_dagur" value="{{namskeid_win[x]}}">
                                <label for="{{namskeid_win[x]}}">{{namskeid_win[x]}}</label>
                            % end
                        % end
                    % end
                % end
                """
% val_nams = []
                % val_dagar = []
                % for checkbox in namskeid_prufa:
                    % val_nams.append(checkbox)
                % end
                % for checkbox in dagar_prufa:
                    % val_dagar.append(checkbox)
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
                        % if val_nams[x] == 'JavaScript':
                            % for x in range(len(namskeid_java)):
                                <input type="checkbox" id="{{namskeid_java[x]}}" name="namskeid_dagur" value="{{namskeid_java[x]}}">
                                <label for="{{namskeid_java[x]}}">{{namskeid_java[x]}}</label>
                            % end
                        % end
                        % if val_nams[x] == 'Gagnasöfn':
                            % for x in range(len(namskeid_gagn)):
                                <input type="checkbox" id="{{namskeid_gagn[x]}}" name="namskeid_dagur" value="{{namskeid_gagn[x]}}">
                                <label for="{{namskeid_gagn[x]}}">{{namskeid_gagn[x]}}</label>
                            % end
                        % end
                        % if val_nams[x] == 'Windows Server':
                            % for x in range(len(namskeid_win)):
                                <input type="checkbox" id="{{namskeid_win[x]}}" name="namskeid_dagur" value="{{namskeid_win[x]}}">
                                <label for="{{namskeid_win[x]}}">{{namskeid_win[x]}}</label>
                            % end
                        % end
                    % end
                % end
                </div>
