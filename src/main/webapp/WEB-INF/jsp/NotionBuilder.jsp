<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 06.12.2015
  Time: 22:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>NotionBuilder</title>
</head>
<body>
<h2>Build notion</h2>
<c:forEach var="relation" items="${relationList}">
    <div class="notion-attr-row">
        <span>${relation.rus}</span>
        <input class="rel-key" type="hidden" value="${relation.nodeName}">
        <input class="rel-value" type="text"  placeholder="Значение">
    </div>
</c:forEach>
<button id="redirect-to-upload-form">Перейти к созданию нового понятия</button>
<button id="save-into-scs">Сохранить в Scs</button>
<script src="<c:url value="/resources/scripts/jquery-2.1.4.min.js" />"></script>
<script src="<c:url value="/resources/scripts/notion-builder.js" />"></script>
</body>
</html>
