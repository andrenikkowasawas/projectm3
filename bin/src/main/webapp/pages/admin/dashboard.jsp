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
    
<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> --%>

<!-- <!DOCTYPE html> -->
<!-- <html> -->
<!-- <head> -->
<!-- <meta charset="ISO-8859-1"> -->
<!-- <title>ADMIN-HOME</title> -->
<!-- <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous"> -->
<%-- <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/main.css"/> --%>
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script> -->
<!--    <script  -->
<!--     src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js">  -->
          
<!--     </script>  -->
<!-- </head> -->
<!-- <style> -->

<!-- /* .active{ */ -->
<!-- /* background-color:red; */ -->

<!-- /* .invisible { */ -->
<!-- /*   visibility: hidden !important; */ -->
<!-- /*   font-size: 1px; */ -->

<!-- /* } */ -->

<!-- </style> -->
<!-- <body> -->
<!-- <nav class="navbar navbar-dark bg-dark"> -->
<!--  <a class="navbar-brand" href="#"> -->
<%--  <img src="${pageContext.request.contextPath}/image/bluewaterlogo.png" class="d-inline-block align-top"  width="120" height="50"  alt="Responsive image"> --%>
   
<!--   </a> -->
<!-- </nav> -->
<!-- <style> -->

<!-- /* .active{ */ -->
<!-- /* background-color:red; */ -->

<!-- /* .invisible { */ -->
<!-- /*   visibility: hidden !important; */ -->
<!-- /*   font-size: 1px; */ -->

<!-- /* } */ -->

<!-- </style> -->
<!-- <body> -->
<!-- <div class="d-flex bd-highlight"> -->
<!-- <div id="admin-nav"> -->
<!-- <ul> -->
<!--   <li><a href="http://localhost:8081/admin/dashboard">Rooms</a></li><hr> -->
<!--   <li><a href="#news">News</a></li><hr> -->
<!--   <li><a href="#contact">Contact</a></li><hr> -->
<!--   <li><a href="#about">About</a></li><hr> -->
<!-- </ul> -->
<!-- </div> -->

<!-- 	start here -->
<!-- <div class="container room-container" > -->
<!-- 	<div class="form-group"> -->
<!-- 		<div id="room-dashboard"> -->
<!-- 		<ul class="topnav" >  	 -->
<%-- 				<c:forEach items="${dashboardList}" var="dashboard"> --%>
		
<%-- 			<a href="http://localhost:8081/admin/room/${dashboard.id }/"> --%>
<%-- 			<li  id="room" > ${dashboard.roomNo} --%>
				
<%-- 				<p class="invisible" style="font-size:1px;">${dashboard.guest.guestFirstname}</p> --%>
			
			
<!-- 			 </li></a> -->
<%-- 				</c:forEach> --%>
		
<!-- 		</ul>	 -->
<!-- 		</div> -->
<!-- </div> -->
  
  
<!--   </div> -->
<!--   </div> -->

<!--   <script> -->
<!-- //   $('p').each(function() { -->
<!-- // 		if ( $.trim( $(this).text() ).length == 0 ) { -->
<!-- // 			if ( $(this).children().length == 0 ) { -->
<!-- // 				$(this).parent().css({  -->
<!-- // 	                "color": "white",  -->
<!-- // 	                "background-color": "green", -->
<!-- // 	                "margin-top": "-30px"  -->
	                	
<!-- // 	            });  -->
<!-- // 			} -->
<!-- // 		} -->
<!-- // 	}); -->
<!--   </script> -->
<!-- </body> -->
<!-- </body> -->
<!-- </html> -->