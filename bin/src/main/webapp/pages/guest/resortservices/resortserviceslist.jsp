<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Dining Reservation view</title>
<link href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round" rel="stylesheet">

<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/main.css"/>
 <link rel="stylesheet" href="https://unpkg.com/@coreui/coreui@3.0.0-beta.4/dist/css/coreui.min.css">

</head>
<body class="background" >
<div class=" welcome-logo ">
<img src="${pageContext.request.contextPath}/image/bluewaterlogo.png" class="img-fluid" alt="Responsive image">
</div>



<div class="d-flex flex-row bd-highlight mb-3 title" >
  <div class="p-2 bd-highlight"><a href="http://localhost:8081/guest/${guestId}/menu"  ><i class=" material-icons">chevron_left</i></a></div>
  <div class="p-2 bd-highlight" >Services</div>
</div>
<div class="scrollbar" id="style-1">
  
<div class="resortservices overflow-auto " >
<table>
<tbody>
		<c:forEach items="${resortServiceList}" var="rs">
		<tr>		  	
			
			<td>${rs.resortServiceName}</td>
						<td style="margin-right: 50px;">${rs.resortServiceDescription}</td>
						<td style="color: #5f00ff !important; font-size: 40px;">${rs.resortServiceContact}</td>
			
			
		</tr> 
		</c:forEach>
  </tbody>
  </table>
 </div>
</div>
</body>

</html>
