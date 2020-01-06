<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="com.pixelbit.survey.pojo.Enquesta" %>
<%-- 
 	Llista totes que s'han donat d'alta al sistema
--%>

<jsp:include page="head.jsp"/>

<ul class="list-group">
        <c:forEach var="enquesta" varStatus="loop" items="${llistaEnquestes}">
			<c:forEach var="pregunta" varStatus="loop" items="${enquesta.preguntes}">
				<li class="list-group-item"> <c:out value="${pregunta.descripcio}"/> <c:out value="${pregunta.resposta}"/></li>
			</c:forEach>	                   
        </c:forEach>
</ul>

<jsp:include page="footer.jsp"/>