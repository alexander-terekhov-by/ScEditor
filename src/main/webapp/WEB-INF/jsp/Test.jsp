<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>Hello</h2>

<form method="POST" enctype="multipart/form-data"  action="upload">
    File to upload: <input type="file" name="file">
    <input type="submit" value="Upload">
</form>

<a href="<c:url value="logout" />">Logout</a>
</body>
</html>
