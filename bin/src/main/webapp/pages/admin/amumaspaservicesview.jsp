<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SPASERVICEVIEW</title>
</head>
<body>
			


			<p>SPA cate: ${amumaSpaServices.amumaSpaCategory.spaCategory}</p>

			<p>SPA SERVICE: ${serviceName}</p>
			<p>PRICE: ${servicePrice}</p>
			<p>DURATION: ${serviceDuration}</p>
    		<p>DESCRIPTION: ${serviceDescription}</p>
    		    			<p>Image:<img src="${imgFile}" alt="${imgFile}"/></p>
    		
    		    		
    		    		  <button><a href="http://localhost:8081/admin/home">BACK</a></button>
    		    		
    		
</body>
</html>