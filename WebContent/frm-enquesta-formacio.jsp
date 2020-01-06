<%@page contentType="text/html" pageEncoding="UTF-8" %>
<jsp:include page="head.jsp"/>

<div>
    <header>
        <h1>Enquesta Formacions</h1>
        <h2>Informàtica. Lenguatges de programació</h2>
    </header>
    <main>
        <form name="frm-enquesta" action="controller-enquesta" method="post">
            <input type="hidden" name="codi-empresa" value="1"/>
            <input type="hidden" name="tipus-enquesta" value="enq-formacio"/>

            <fieldset>
                <legend>Enquesta</legend>
                <%@include file="common/camps-dades-personals.jsp" %>

                <hr/>
                <div class="form-group">
                    <label for="pregunta-1">Quin seria el lloc de feina o àrea en el que t'agradaria
                        especialitzar-te?</label>
                    <select class="form-control" id="pregunta-1" name="pregunta-1">
                        <option value="sys-pure">PureSystem</option>
                        <option value="dev-ops">Devops</option>
                        <option value="dev-frontend">Developer Front-End</option>
                        <option value="dev-backend">Developer Back-End</option>
                        <option value="seg-perimetral">Tècnic de Seguridad Perimetral (Fortinet/PaloAlto/Bluecoat)
                        </option>
                        <option value="seg-ciberseguretat">Ciberseguretat</option>
                        <option value="arq-big-data">Arquitecte Big Data</option>
                    </select>
                </div>

                <div class="form-group">
                    <label for="pregunta-2">Quin curs t'agradaria realitzar per millorar la teva formació?</label>
                    <select class="form-control" id="pregunta-2" name="pregunta-2">
                        <option value="angular">Desenvolupament web Angular</option>
                        <option value="react">React JS Hooks</option>
                        <option value="spring">Spring Security</option>
                    </select>
                </div>

                <div class="form-group">
                    <label>Quins lleguante de programació t'agradaria aprendre?</label>
                    <div class="input-group-prepend">
                        <div class="input-group-text">
                            <input type="checkbox" name="lag-programing" value="php"/>  PHP
                        </div>
                        <div class="input-group-text">
                            <input type="checkbox" name="lag-programing" value="java"/>  Java
                        </div>
                        <div class="input-group-text">
                            <input type="checkbox" name="lag-programing" value="python"/>  Python
                        </div>
                    </div>
                </div>

                <button type="submit" class="btn btn-primary">Enviar dades</button>

            </fieldset>
        </form>
    </main>

</div>

<jsp:include page="footer.jsp"/>