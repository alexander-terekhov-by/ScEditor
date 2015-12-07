<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>NotionBuilder</title>
    <link rel="stylesheet" href="<c:url value="/resources/styles/notionbuilder.css" />"/>
    <meta charset="UTF-8">
</head>
<body>
<div class="panel">
    <h2>Build notion</h2>

    <div class="notion-form">
        <div class="notion-id">
            <span>Идентификатор: </span>
            <input id="notion-id" type="text" placeholder="Значение">
        </div>
        <div class="notion-attr-row">
            <div class="rel-caption">Русский идентификатор:</div>
            <input class="rel-key" type="hidden" value="nrel_main_idtf:">
            <input class="rel-value" type="text" placeholder="Значение">
        </div>
        <c:forEach var="relation" items="${relationList}">
            <div class="notion-attr-row">
                <div class="rel-caption">${relation.rus}:</div>
                <input class="rel-key" type="hidden" value="${relation.nodeName}">
                <input class="rel-value" type="text" placeholder="Значение">
            </div>
        </c:forEach>
    </div>

    <div class="scs-preview-panel">
        <textarea id="scs-preview"></textarea>
    </div>
    <div>
        <button id="redirect-to-upload-form">Перейти к созданию нового понятия</button>
        <button id="make-preview">Создать понятие</button>
        <button id="save-into-scs">Сохранить в Scs</button>
    </div>
</div>

<script src="<c:url value="/resources/scripts/jquery-2.1.4.min.js" />"></script>
<script src="<c:url value="/resources/scripts/notion-builder.js" />"></script>
</body>
</html>
