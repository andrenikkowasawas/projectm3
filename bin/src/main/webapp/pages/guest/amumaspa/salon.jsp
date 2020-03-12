<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>salon info</title>
<link href='https://fonts.googleapis.com/css?family=Alegreya Sans SC' rel='stylesheet'>
<link href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round" rel="stylesheet">

<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/main.css"/>
 <link rel="stylesheet" href="https://unpkg.com/@coreui/coreui@3.0.0-beta.4/dist/css/coreui.min.css">
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.15.0/umd/popper.min.js" integrity="sha384-L2pyEeut/H3mtgCBaUNw7KWzp5n9&#43;4pDQiExs933/5QfaTh8YStYFFkOzSoXjlTb" crossorigin="anonymous"></script>
<script src="https://unpkg.com/@coreui/coreui@3.0.0-beta.4/dist/js/coreui.min.js"></script>
</head>

<body class="background" >
<div class=" welcome-logo ">
<img src="${pageContext.request.contextPath}/image/bluewaterlogo.png" class="img-fluid" alt="Responsive image">
</div>
 <div class="d-flex flex-row bd-highlight mb-3 title" >
  <div class="p-2 bd-highlight"><a href="http://localhost:8081/guest/${guestId}/relax-menu"  ><i class=" material-icons">chevron_left</i></a></div>
  <div class="p-2 bd-highlight">Salon / Amuma Spa Salon</div>
</div>

<div class="card polaroid " style="width: 45rem; margin:auto; border:none; margin-top:20px;">

<div class="d-flex justify-content-between">

<img  src="${pageContext.request.contextPath}/image/amumaspasalon.jpg" alt="amuma spa gym" style="width:270px; height: 260px;">
<div class="card-body ">
    <p class="card-text" style="font-family: 'Varela Round', sans-serif; color:black; font-size: 15px;">At the Salon, a full range of beauty services complement Amuma Spa treatments. Relax in the care of trained professionals who can provide you with a full range of treatments and services. Your visit will be personalized and fit to your style, whether it be a simple manicure or lovely wedding make-over, we have every detail covered.

Our services include hair, hand and foot care treatments. Waxing services and make-up application are also available.</p>
   <div class="d-flex justify-content-between">
   
   <!--   <a href="http://localhost:8081/guest/${guestId}/relax/salon/add-reservation" class="btn btn-primary" style="padding-top: 10px; float:right;">RESERVE NOW</a> --> 
 
    </div>
</div>
</div>
</div>
</body>
</html>