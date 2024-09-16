<div id="MyWidget_${instanceId}" class="super-widget wcm-widget-class fluig-style-guide"
    data-params="MyWidget.instance()">
    <div id='loading-oba' style='display: none;'>
        <img class="loading" style="height: 150px;" src="/consultaChamados/resources/images/Oba-loading.gif"
            alt="Loading Oba">
    </div>
    <form>
        <input type='hidden' id='hd_cod_documento' name='hd_cod_documento'>
        <input type='hidden' id='hd_cod_docs_exclui' name='hd_cod_docs_exclui'>
        <div class="panel panel-default">
            <div class="panel-heading new-panel">
                <div class='content-icon' style='margin-right: 30px; cursor: pointer;' onclick='voltaCentral()'>
                    <i class="fluigicon fluigicon-circle-arrow-left icon-md" aria-hidden="true"></i>
                </div>
                <div class='content-title'>
                    <h2 class="panel-title" style="font-size: 1.4rem;">Cadastro de Tarefas</h2>
                </div>
            </div>
            <div class="panel-body">
                <div class='row'>
                    <div class='col-md-12' style='margin-top: 25px; display: flex;'>
                        <button id="btn_addTask" type="button" class="btn-busca" onclick="addTask('Tarefa')">Nova
                            Tarefa</button>
                    </div>
                </div>
                <div class="row" id="rw_formCadTask"></div>
                <div class='row'>
                    <div class='col-md-12' style='margin-top: 25px; display: flex; justify-content: end;'>
                        <button id='btn-save' type='button' class='btn-salva' onclick='saveTasks()'>Salvar</button>
                    </div>
                </div>

                <div class='painel-pesquisa' style='margin: 60px 0;'>
                    <div class='row'>
                        <div class='new-panel panel-heading'>
                            <h2 class='panel-title' style='font-size: 1.4rem'><i
                                    class="flaticon flaticon-search icon-md" aria-hidden="true"></i> Pesquisa:</h2>
                        </div>
                    </div>
                    <div class='row' style='margin: 30px 0;'>
                        <div class='col-md-4 form-group'>
                            <label for='ztxt_busca_categoria'>Categoria</label>
                            <input class='form-control' id='ztxt_busca_categoria' name='ztxt_busca_categoria'
                                onchange='filtraFilter()'>
                        </div>

                        <div class='col-md-4 form-group'>
                            <label for='ztxt_busca_tpAtend'>Tipo de Atendimento</label>
                            <input class='form-control' id='ztxt_busca_tpAtend' name='ztxt_busca_tpAtend' readonly>
                        </div>

                        <div class='col-md-4 form-group'>
                            <br>
                            <button id='btn-filtro' style='width: 100%;' type='button' class='btn-busca'
                                onclick='pesquisaFiltro()'>Pesquisar
                            </button>
                        </div>
                    </div>

                    <div class='row'>
                        <div class='form-group col-md-12'
                            style='margin-top: 25px; display: flex; justify-content: end;'>
                            <button id='btn_limpa' type='button' class='btn-limpa'
                                onclick='limpaFiltro()'>Limpar</button>
                        </div>
                    </div>
                </div>

                <!--<div class='row'>
                    <table tablename='tb_categorias' id='tb_categorias' class='table table-hover' noaddbutton=true
                        nodeletebutton=true>
                        <thead>
                            <tr>
                                <td><label>ID do Documento</label></td>
                                <td><label>Categoria</label></td>
                                <td><label>Tipo de Atendimento</label></td>
                                <td><label>Tarefa</label></td>
                                <td><label>Tipo</label></td>
                                <td><label>Ação</label></td>
                            </tr>
                        </thead>
                        <tbody id='body_categorias'></tbody>
                    </table>
                </div> -->

                <div class="row">
                    <div class="content-line col-md-1">
                        <span>ID do Documento</span>
                    </div>
                    <div class="content-line col-md-2">
                        <span>Categoria</span>
                    </div>
                    <div class="content-line col-md-2">
                        <span>Tipo de Atendimento</span>
                    </div>
                    <div class="content-line col-md-2">
                        <span>Tarefa</span>
                    </div>
                    <div class="content-line col-md-2">
                        <span>Tipo</span>
                    </div>
                    <div class="content-line col-md-1">
                        <span>SLA</span>
                    </div>
                    <div class="content-button col-md-2">
                        <div class="content-line col-md-1">
                            <span>Ação</span>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12" id='body_categorias'>
                    </div>
                </div>
            </div>
        </div>

    </form>
</div>