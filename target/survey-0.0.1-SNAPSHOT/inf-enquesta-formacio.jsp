<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="com.pixelbit.survey.pojo.EnquestaFormacio" %>

<jsp:include page="head.jsp"/>

	<h1>Enquesta enviada</h1>
	
	<hr/>
	
	<header>
		<h1>Dades de l'enquesta</h1>
		<h2>${tipusEnquesta}</h2>
	</header>
	
	<section>
		<h3>Dades personals</h3>
		<p>Tractament:<c:out value="${enquesta.entrevistat.tractament}"/></p>
		<p>DNI:<c:out value="${enquesta.entrevistat.dni}"/></p>
		<p>Nom:<c:out value="${enquesta.entrevistat.nom}"/></p>
		<p>Llinatges:<c:out value="${enquesta.entrevistat.llinatges}"/></p>
		<p>Email:<c:out value="${enquesta.entrevistat.email}"/></p>
		<p>telefon:<c:out value="${enquesta.entrevistat.telefon}"/></p>
	</section>

	<hr/>
	
	<section>
		<h3>Preguntes</h3>
		<ul>
        <c:forEach var="pregunta" varStatus="loop" items="${enquesta.preguntes}">
            <li> <c:out value="${pregunta.descripcio}"/> <c:out value="${pregunta.resposta}"/></li>            
        </c:forEach>
        </ul>
	</section>
	
	<section>
		<h3>Nous estudis a realitzar</h3>
				<ul>
        <c:forEach var="estudi" varStatus="loop" items="${enquesta.opcionsEstudis}">
            <li> <c:out value="${estudi}"/> </li>            
        </c:forEach>
        </ul>
	</section>

<jsp:include page="footer.jsp"/>