<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>NotionBuilder</title>
</head>
<body>
<form method="POST" enctype="multipart/form-data" action="uploadNotionTemplate">
    File to upload: <input id="relation-file-input" type="file" name="file">
    <button id="upload-file">Загрузить файл с отношениями</button>
</form>
</body>
</html>
