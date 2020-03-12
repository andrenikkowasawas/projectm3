<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<mt:admin_template title="Inventory">
	<jsp:attribute name="content">
	 	  
	<!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper" style="min-height: 925.8px;">
			<!-- Content Header (Page header) -->
			

			<section class="content">
	
	   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"> </script>
	  
	   
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
	   	<section class="content-header">
				<h1>
					<small>Date&Time: <span id="date"></span>
						  <span id = "time"></span></small>
				</h1>
			</section>
	   								<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#roomModal" style="float:right;">ADD ROOM</button>
	   	
	<div class="form-group">
		<div id="room-dashboard " style="width: 100%; margin:auto; margin-top: 100px !important;">
				<c:forEach items="${dashboardList}" var="dashboard">
						<ul class="topnav" style="display:inline-block; list-style: none;">  	
		
					
		<c:choose>
    <c:when test="${dashboard.occupyingGuest==0}">
		<li style="border: 1px solid white; padding-left: 10px; padding-right: 10px; width:170px; background-color:white;
     box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19); border-radius:5px;"><h1> <a href="http://localhost:8081/admin/room/${dashboard.id }/">${dashboard.roomNo} </a></h1></li>
   
    </c:when>
    <c:otherwise>
		<li  style="border: 1px solid blue; padding-left: 10px; padding-right: 10px; width:170px; background-color:blue;
     box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19); border-radius:5px;" ><h1> <a style="color:white;" href="http://localhost:8081/admin/room/${dashboard.id }/">${dashboard.roomNo} <span class="badge" style="background-color:red;">1</span> </a></h1> </li>
    
    </c:otherwise>
</c:choose>
		
			</ul>
				</c:forEach>
		
		
		</div>
	</div>
	
	
	
	
	
	 <div class="modal fade" id="roomModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">x</span></button>
						<h4 class="modal-title">Add Room</h4>
					</div>
					<div class="modal-body">
						<form action="/admin/roomInfo" method="post" >
						
							<div class="form-group">
							
								<label for="roomNo">Room No.</label>
<!-- 								<input type="text" name = "roomNo"> -->
								<input class="form-control" id ="roomNo" placeholder ="ROOM NUMBER!" name = "roomNo">
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-primary pull-left" data-dismiss="modal">Close</button>
								<button type="submit" class="btn btn-primary" >Save changes</button>
							</div>
						</form>
					</div>
					
					
					
				</div>
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

