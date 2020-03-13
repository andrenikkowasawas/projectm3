<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>BLUEWATER</title>
<link href='https://fonts.googleapis.com/css?family=Alegreya Sans SC' rel='stylesheet'>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/main.css"/>
 <link rel="stylesheet" href="https://unpkg.com/@coreui/coreui@3.0.0-beta.4/dist/css/coreui.min.css">
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.15.0/umd/popper.min.js" integrity="sha384-L2pyEeut/H3mtgCBaUNw7KWzp5n9&#43;4pDQiExs933/5QfaTh8YStYFFkOzSoXjlTb" crossorigin="anonymous"></script>
<script src="https://unpkg.com/@coreui/coreui@3.0.0-beta.4/dist/js/coreui.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0">

</head>

 <body class="background"  >
<div class=" welcome-logo ">
<img src="${pageContext.request.contextPath}/image/bluewaterlogo.png" class="img-fluid" alt="Responsive image">
</div>

<div class="menu-date">
<h3 class="display-4"> Hi ${guestName}</h3>
<p>${datenow}</p>
</div>


<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
  </ol>
  
  <div class="carousel-inner" style="margin:auto; width:100%; border: 1px solid red;">
  <div class="d-flex justify-content-between">
  
    <div class="carousel-item active">
    <div class="row">
    <div class="col"> 
    <div><a  class="display-5 text-decoration-none" href="http://localhost:8081/guest/${guestId}/resort-services"> <img class="menu-img" src="${pageContext.request.contextPath}/image/services.jpg" alt="resort services"></a>
    <div class="carousel-caption "  >
    <a  class="display-5 text-decoration-none" href="http://localhost:8081/guest/${guestId}/resort-services">SERVICES</a>
	</div>
	</div>
	</div> 
 <div class="col"> <a class="display-5 text-decoration-none" href="http://localhost:8081/guest/diningList/${diningId}/${guestId}/dining-dashboard">  <img class="menu-img" src="${pageContext.request.contextPath}/image/dining.jpg" alt="dining"></a>
    <div class="carousel-caption">
    <a class="display-5 text-decoration-none" href="http://localhost:8081/guest/diningList/${diningId}/${guestId}/dining-dashboard">DINING</a>
   
  </div>
  </div> 
  
     <div class="col">  <a class="display-5 text-decoration-none" href="http://localhost:8081/guest/${guestId}/relax-menu">  <img class="menu-img" src="${pageContext.request.contextPath}/image/spa.jpg" alt="relax"></a>
   <div class="carousel-caption">
   <a class="display-5 text-decoration-none" href="http://localhost:8081/guest/${guestId}/relax-menu">RELAX</a>

  </div>
  </div> 
    </div>
    </div>
    
    
    
    <div class="carousel-item " >
    <div class="row">
    <div class="col">  <a href="http://localhost:8081/guest/${guestId}/adventures"><img class="menu-img" src="${pageContext.request.contextPath}/image/adv.jpg" alt="First slide"></a>
    <div class="carousel-caption" style="border: 1px solid red;">
    <a class="display-5 text-decoration-none" href="http://localhost:8081/guest/${guestId}/adventures">ADVENTURES</a>
</div>
</div> 
 
    <div class="col"> <a href="http://localhost:8081/guest/${guestId}/events"> <img class="menu-img" src="${pageContext.request.contextPath}/image/event.jpg" alt="Second slide"></a>
   <div class="carousel-caption">
    <a class="display-5 text-decoration-none" href="http://localhost:8081/guest/${guestId}/events">EVENTS</a>
  </div>
  </div> 
  
    <div class="col"> <a href="http://localhost:8081/guest/${guestId}/feedback">  <img class="menu-img" src="${pageContext.request.contextPath}/image/feedbacks.jpg" alt="Third slide"></a>
    <div class="carousel-caption">
    <a class="display-5 text-decoration-none" href="http://localhost:8081/guest/${guestId}/feedback">FEEDBACK</a>

  </div>
  </div> 
    </div>
    </div>
    

 

   
  
  
   
    
    </div>
    </div>
  </div>
  
  
  
  
  
  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true" style="margin-top: 300px;"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next"  style="margin-top: 300px;">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>

</body>
</html>