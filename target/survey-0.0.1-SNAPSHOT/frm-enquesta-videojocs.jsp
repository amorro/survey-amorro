<%@page contentType="text/html" pageEncoding="UTF-8" %>

<jsp:include page="head.jsp"/>

<div>
    <header>
        <h1>Enquesta Videojocs</h1>
    </header>

    <main>
        <form name="frm-enquesta" action="controller-enquesta" method="post">
            <input type="hidden" name="codi-empresa" value="1"/>
            <input type="hidden" name="tipus-enquesta" value="enq-videojocs"/>

            <fieldset>
                <legend>Enquesta</legend>

                <%@include file="common/camps-dades-personals.jsp" %>

                <hr/>
                <div class="form-group">
                    <label for="pregunta-1">Quina consola t'agrada més?</label>
                    <select class="form-control" id="pregunta-1" name="pregunta-1">
                        <option value="ps4">PS4</option>
                        <option value="xbox">XBOX ONE</option>
                        <option value="switch">Switch</option>
                        <option value="pc">PC</option>
                    </select>
                </div>

                <div class="form-group">
                    <label for="pregunta-2">Quina consola hauria de millorar més?</label>
                    <select class="form-control" id="pregunta-2" name="pregunta-2">
                        <option value="ps4">PS4</option>
                        <option value="xboxone">XBOX ONE</option>
                        <option value="switch">Switch</option>
                        <option value="pc">PC</option>
                    </select>
                </div>

                <div class="form-group">
                    <label for="pregunta-observacions">Quin és el joc que més t'agrada?</label>
                    <textarea class="form-control" id="pregunta-observacions" name="observacions"></textarea>
                </div>
                <button type="submit" class="btn btn-primary">Enviar dades</button>

            </fieldset>
        </form>

    </main>

</div>

<jsp:include page="footer.jsp"/>
