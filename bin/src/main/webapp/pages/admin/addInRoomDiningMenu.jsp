<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>add in room dining menu</title>
</head>
<body>

<p>${inRoomDiningCategoryId}</p>

<form action="http://localhost:8081/admin/in-room-dining-category-list/${inRoomDiningCategoryId}/in-room-dining-menu/view" method="post">

					Menu name: <input type="text" name="menuName">
					Price: <input type="text" name="menuPrice">
					Description: <textarea name="menuDescription"></textarea>
					Image:<input type="file" name="imgFile" id="imgFile">
					<button type="submit">SUBMIT</button>
</form>

</body>
</html>