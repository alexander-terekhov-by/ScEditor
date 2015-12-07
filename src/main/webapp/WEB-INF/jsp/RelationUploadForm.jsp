<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>NotionBuilder</title>
</head>
<body style="padding: 50px">
<h3 style="width:500px; padding-top: 20px" >
    Для создания понятия загрузите файл с отношениями, на основе которых будет строиться пониятие.
</h3>

<form method="POST" enctype="multipart/form-data" action="uploadNotionTemplate">
    File to upload: <input id="relation-file-input" type="file" name="file">
    <button id="upload-file">Загрузить файл с отношениями</button>
</form>
</body>
</html>
