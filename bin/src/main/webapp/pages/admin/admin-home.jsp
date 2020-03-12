<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<mt:admin_template title="Inventory">
	<jsp:attribute name="content">
	 	  
	<!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper" style="min-height: 925.8px;">
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<h1>
					<small>Date&Time: <span id="date"></span>
						  <span id = "time"></span></small>
				</h1>
			</section>

			<section class="content">
	
	   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"> </script>
	   
 		<!--  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/main.css"/> -->
	   
 <style> 
			.active{  
 			 background-color:red; 
			
			.invisible { 
			   visibility: hidden !important; 
			   font-size: 1px; 
			
 			 } 
 			 .badge1 {
   position:relative;
}
.badge1[data-badge]:after {
   content:attr(data-badge);
   position:absolute;
   top:-10px;
   right:-10px;
   font-size:.7em;
   background:green;
   color:white;
   width:18px;height:18px;
   text-align:center;
   line-height:18px;
   border-radius:50%;
   box-shadow:0 0 1px #333;
}

 		 </style> 
	   	
	   	<div class="container room-container" >
	<div class="form-group">
		<div id="room-dashboard" style="width: 70%;">
				<c:forEach items="${dashboardList}" var="dashboard">
						<ul class="topnav" style="display:inline-block; list-style: none;">  	
		
					
		<c:choose>
    <c:when test="${empty dashboard.guest.id}">
		<li style="border: 1px solid blue; padding-left: 10px; padding-right: 10px; width:110px;"><h1> <a href="http://localhost:8081/admin/room/${dashboard.id }/">${dashboard.roomNo} </a></h1></li>
    </c:when>
    <c:otherwise>
		<li  style="border: 1px solid blue; padding-left: 10px; padding-right: 10px; width:110px;" ><h1> <a href="http://localhost:8081/admin/room/${dashboard.id }/">${dashboard.roomNo} <span class="badge" style="background-color:red;">1</span> </a></h1> </li>
    </c:otherwise>
</c:choose>
		
			</ul>
				</c:forEach>
		
		
		</div>
	</div>
	</div>
	</section>
	  </div>


 		<script>
   		$('p').each(function() {
 		if ( $.trim( $(this).text() ).length == 0 ) {
		if ( $(this).children().length == 0 ) {
				$(this).parent().css({ 
	                "color": "white", 
 	                "background-color": "green",
	                "margin-top": "-30px" 

   		</script>
		<script>
var dt = new Date();
document.getElementById("date").innerHTML = (("0"+(dt.getMonth()+1)).slice(-2)) +"/"+ (("0"+dt.getDate()).slice(-2)) +"/"+ (dt.getFullYear());
</script>

<script>
var tm = new Date();
document.getElementById("time").innerHTML = tm.toLocaleTimeString();
</script>
	</jsp:attribute>
</mt:admin_template>


<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1" --%>
<%--     pageEncoding="ISO-8859-1"%> --%>
<!-- <!DOCTYPE html> -->
<!-- <html> -->
<!-- <head> -->
<!-- <meta charset="ISO-8859-1"> -->
<!-- <title>ADMIN-HOME</title> -->
<!-- <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous"> -->
<%-- <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/main.css"/> --%>
<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"> -->

<!-- <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script> -->
<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script> -->
<!-- <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script> -->
<!-- </head> -->
<!-- <body> -->
<!-- <nav class="navbar navbar-dark bg-dark"> -->
<!--  <a class="navbar-brand" href="#"> -->
<%--  <img src="${pageContext.request.contextPath}/image/bluewaterlogo.png" class="d-inline-block align-top"  width="140" height="50"  alt="Responsive image" style="margin-left: 10px;"> --%>
   
<!--   </a> -->
<!-- </nav> -->
<!-- <div id="admin-nav"> -->
<!-- <ul> -->
<!--   <li><a href="http://localhost:8081/admin/dashboard">Dashboard</a></li><hr> -->
<!--   <li><a href="#news">News</a></li><hr> -->
<!--   <li><a href="#contact">Contact</a></li><hr> -->
<!--   <li><a href="#about">About</a></li><hr> -->
<!-- </ul> -->
<!-- </div> -->

<!-- <button class="btn btn-primary"><a href="http://localhost:8081/admin/guest/add">ADD GUEST</a></button> -->
<!-- <button class="btn btn-primary"><a href="http://localhost:8081/admin/room/add">ADD ROOM</a></button> -->
<!-- <button class="btn btn-primary"><a href="http://localhost:8081/admin/roomList">ROOM LIST</a></button> -->
<!-- <button class="btn btn-primary"><a href="http://localhost:8081/admin/dashboard">DASHBOARD</a></button> -->
<!-- <br> -->

<!-- <button class="btn btn-primary"><a href="http://localhost:8081/admin/dining/add">ADD DINING</a></button> -->
<!-- <button class="btn btn-primary"><a href="http://localhost:8081/admin/diningList">Dining LIST</a></button> -->

<!-- <button class="btn btn-primary"><a href="http://localhost:8081/admin/themed-diner/add">ADD THEMED DINER</a></button> -->
<!-- <button class="btn btn-primary"><a href="http://localhost:8081/admin/themedDinerList">THEMED DINER LIST</a></button> -->

<!-- <br> -->

<!-- <button class="btn btn-primary"><a href="http://localhost:8081/admin/in-room-dining-category/add">ADD IN ROOM DINING CATEGORY</a></button> -->
<!-- <button class="btn btn-primary"><a href="http://localhost:8081/admin/in-room-dining-category-list"> IN ROOM DINING CATEGORY LIST</a></button> -->
<!-- <button class="btn btn-primary"><a href="http://localhost:8081/admin/in-room-dining-category-list/orderlist"> IN ROOM ORDER LIST</a></button> -->
<!-- <BR> -->

<!-- <button class="btn btn-primary"><a href="http://localhost:8081/admin/amumaSpaCategory/add">ADD AMUMASPA CATEGORY</a></button> -->
<!-- <button class="btn btn-primary"><a href="http://localhost:8081/admin/amumaSpaCategoryList"> AMUMASPA CATEGORY LIST</a></button> -->
<!-- <button class="btn btn-primary"><a href="http://localhost:8081/admin/amumaSpaServicesList"> AMUMASPA SERVICE LIST</a></button> -->

<!-- <br> -->


<!-- <button class="btn btn-primary"><a href="http://localhost:8081/admin/resort-services/add">ADD RESORT SERVICE</a></button> -->
<!-- <button class="btn btn-primary"><a href="http://localhost:8081/admin/resort-services-list"> RESORT SERVICE LIST</a></button> -->

<!-- <button class="btn btn-primary"><a href="http://localhost:8081/admin/events/add">ADD EVENT</a></button> -->
<!-- <button class="btn btn-primary"><a href="http://localhost:8081/admin/eventsList"> RESORT SERVICE LIST</a></button> -->



<!-- </body> -->
<!-- </html> -->