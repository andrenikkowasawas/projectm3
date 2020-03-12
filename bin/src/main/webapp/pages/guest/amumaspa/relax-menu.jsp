<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>BLUEWATER</title>
<link href='https://fonts.googleapis.com/css?family=Alegreya Sans SC' rel='stylesheet'>
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

  <div class="d-flex flex-row bd-highlight mb-3 title">
  <div class="p-2 bd-highlight"><a href="http://localhost:8081/guest/${guestId}/menu"  ><i class=" material-icons">chevron_left</i></a></div>
  <div class="p-2 bd-highlight">Relax</div>
</div>
  
  <div class="d-flex justify-content-around boxboard">
    
    <div  class="relax"> <a href="http://localhost:8081/guest/${guestId }/relax/spa"><img class="relax-menu-img polaroid" src="${pageContext.request.contextPath}/image/therapies.png" alt="spa"></a>
  <div style="margin-left: 20px; font-size: 25px; width: 125px; " >
<p class="display-5" style="margin-top: -80px; color:black;">Spa</p>
</div>
</div> 

   <div  class="relax"> <a href="http://localhost:8081/guest/${guestId }/relax/gym"><img class="relax-menu-img polaroid" src="${pageContext.request.contextPath}/image/gym.png" alt="gym"></a>
  <div style="margin-left: 20px; font-size: 25px; width: 125px; " >
<p class="display-5" style="margin-top: -80px; color:black;">Gym</p>
</div>
</div> 
 
 
  <div  class="relax"> <a href="http://localhost:8081/guest/${guestId }/relax/salon"><img class="relax-menu-img polaroid" src="${pageContext.request.contextPath}/image/salon.png" alt="salon"></a>
  <div style="margin-left: 20px; font-size: 25px; width: 125px; " >
<p class="display-5" style="margin-top: -80px; color:black;">Salon</p>
</div>
</div> 
 
     
  </div>

    
</body>
</html>