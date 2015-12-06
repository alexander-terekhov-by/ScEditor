<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Relation editor</title>
</head>
<body>
<div id="relation-list">
    <div class="header-row">
        <div class="relation-panel-header">Sс идентификатор</div>
        <div class="relation-panel-header">Русский идентификатор</div>
        <div class="relation-panel-header">Русский идентификатор</div>
    </div>
    <c:forEach var="relation" items="${relationList}">
        <div class="relation-row">
            <input class="node-name" type="text" value="${relation.nodeName}">
            <input class="rus-name" type="text" value="${relation.rus}">
            <input class="eng-name" type="text" value="${relation.eng}">
        </div>
    </c:forEach>
    <button id="make-file">Создать Scs файл</button>
    <script src="<c:url value="/resources/scripts/jquery-2.1.4.min.js" />"></script>
    <script src="<c:url value="/resources/scripts/relation-panel.js" />"></script>
</div>
</body>
</html>
