<%@page contentType="text/html" pageEncoding="UTF-8" %>

<jsp:include page="head.jsp"/>

<div>
    <header>
        <h1>Enquesta eleccions generals</h1>
    </header>

    <main>
        <form name="frm-enquesta" action="controller-enquesta" method="post">
            <input type="hidden" name="codi-empresa" value="1"/>
            <input type="hidden" name="tipus-enquesta" value="enq-politica"/>

            <fieldset>
                <legend>Enquesta</legend>

                <%@include file="common/camps-dades-personals.jsp" %>

                <hr/>
                <div class="form-group">
                    <label for="pregunta-1">Quin partit polític creus que guanyarà a les próximes eleccions?</label>
                    <select class="form-control" id="pregunta-1" name="pregunta-1">
                        <option value="psoe">PSOE</option>
                        <option value="pp">PP</option>
                        <option value="podemos">Podemos</option>
                        <option value="vox">Vox</option>
                    </select>
                </div>

                <div class="form-group">
                    <label for="pregunta-2">Quin partit t'agradaria que guanyàs?</label>
                    <select class="form-control" id="pregunta-2" name="pregunta-2">
                        <option value="psoe">PSOE</option>
                        <option value="pp">PP</option>
                        <option value="podemos">Podemos</option>
                        <option value="vox">Vox</option>
                    </select>
                </div>

                <div class="form-group">
                    <label for="pregunta-observacions">Quina és la teva opinió sobre la situació política actual?</label>
                    <textarea class="form-control" id="pregunta-observacions" name="observacions"></textarea>
                </div>

                <button type="submit" class="btn btn-primary">Enviar dades</button>

            </fieldset>
        </form>

    </main>

</div>

<jsp:include page="footer.jsp"/>