<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add relax</title>
</head>
<body>

<form action="http://localhost:8081/admin/relaxview" method="post">

Relax: <input type="text" name="category">
Upload Photo:<input type="file" name="imgFile" id="imgFile"/>

<button type="submit">SUBMIT</button>

</form>

</body>
</html>