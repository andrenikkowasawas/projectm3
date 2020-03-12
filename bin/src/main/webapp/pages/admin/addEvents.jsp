<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ADD EVENTS</title>
</head>
<body>
<form action="http://localhost:8081/admin/eventInfo" method="post" enctype="multipart/form-data">
Event Name: <input type="text" name="eventName">
Upload Photo:<input type="file" name="imgFile" id="imgFile"/>


<button type="submit">Submit</button>
</form>
</body>
</html>