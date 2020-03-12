<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>in room dining menu VIEW</title>
</head>
<body>
			


			<p>menu category: ${inRoomDiningMenu.inRoomDiningCategory.menuCategory}</p>

			<p>menu name: ${menuName}</p>
			<p>PRICE: ${menuPrice}</p>
			<p>description: ${menuDescription}</p>
			<img src="${imgFile}"/>
    		
    		    		
    		    		  <button><a href="http://localhost:8081/admin/home">BACK</a></button>
    		    		
    		
</body>
</html>