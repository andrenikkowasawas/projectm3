<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>add amumaspa services</title>
</head>
<body>

<p>${amumaSpaCategoryId}</p>

<form action="http://localhost:8081/admin/amumaSpaCategoryList/${amumaSpaCategoryId}/amumaSpaServices/view" method="post">

					Service: <input type="text" name="serviceName">
					Price: <input type="text" name="servicePrice">
					Duration: <input type="text" name="serviceDuration">
										Description: <input type="text" name="serviceDescription">
										Upload Photo:<input type="file" name="imgFile" id="imgFile"/>
										
					
					<button type="submit">SUBMIT</button>
</form>

</body>
</html>