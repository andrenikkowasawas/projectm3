<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>events list</title>
</head>
<body>
<table>
<tbody>
		<c:forEach items="${eventsList}" var="event">
		<tr>		  	
			
			<td>${event.eventName}</td>
			
		</tr>
		
		</c:forEach>
  </tbody>
  </table>
  <button><a href="http://localhost:8081/admin/home">BACK</a></button>
</body>
</html>