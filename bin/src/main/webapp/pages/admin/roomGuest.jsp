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
<!-- 		main content -->
			<section class="content">
			
<%-- 			<button><a href="http://localhost:8081/admin/room/${room.id}/guest/add">ADD GUEST</a></button>	 --%>
			 
		
		
		
		<c:choose>
    <c:when test="${empty room.guest.id}">
		              <button type="button" style="margin-bottom: 10px;" class="btn btn-primary" data-toggle="modal" data-target="#guestModal">ADD GUEST</button>
    </c:when>
    <c:otherwise>
		              <button type="button" style="margin-bottom: 10px; display:none;" class="btn btn-primary" data-toggle="modal" data-target="#guestModal">ADD GUEST</button>
    </c:otherwise>
</c:choose>
		
		
		
		
          <div class="row">
			<div class="">
			</div>
			<div class="col-md-6">
			
<!-- 			insert code sa box -->
			<div class="box box-info">
            <div class="box-header with-border">
              <h3 class="box-title">ROOM #${room.id}</h3>
            </div>
            <!-- /.box-header -->
            <!-- form start -->
            <form class="form-horizontal">
              <div class="box-body">
                <div class="form-group">
                <div class="col-sm-10">
                  <label  class="col-sm-2 control-label">Guest ID: ${room.guest.id}</label>
                  <label  class="col-sm-4 control-label">Guest Name: ${room.guest.guestFirstname} ${room.guest.guestLastname}</label>
				  <label  class="col-sm-6 control-label">Email Address: ${room.guest.guestEmailAddress}</label>
				 </div>
                </div>
                
                <div class="form-group">
                  <div class="col-sm-10">
                   <label  class="col-sm-2 control-label">Age: ${room.guest.guestAge}</label>
                   <label  class="col-sm-3 control-label">Gender: ${room.guest.guestGender}</label>
                   <label  class="col-sm-3 control-label">Nationality: ${room.guest.guestNationality}</label>
                   <label  class="col-sm-4 control-label">Contact: ${room.guest.guestPhoneNum}</label>
                  </div>
                </div>
                
              </div>
              <!-- /.box-body -->
              <div class="box-footer">
<!--                 <button type="submit" class="btn btn-default">Cancel</button> -->
<!--                 <button type="submit" class="btn btn-info pull-right">Sign in</button> -->
              </div>
              <!-- /.box-footer -->
            </form>
          </div>
			</div>
			
			<div class="col-md-4">
			</div>
				
		</div>
		
		<!-- ADD GUEST MODAL -->
		
		<div class="modal fade" id="guestModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">x</span></button>
						<h4 class="modal-title">Add Guest</h4>
					</div>
					<div class="modal-body">
						<form action="http://localhost:8081/admin/room/${room.id}/guest/view" method="post">

  <div class="form-group">
    <label for="guestFirstname">Firstname</label>
    <input type="text" class="form-control" name="guestFirstname" >
  </div>
  <div class="form-group">
    <label for="guestLastname">Lastname</label>
    <input type="text" class="form-control" name="guestLastname" >
  </div>
  <div class="form-group">
    <label for="guestAge">Age</label>
    <input type="text" class="form-control" name="guestAge" >
  </div>
  <div class="form-group">
    <label for="guestGender">Gender</label>
    <select class="form-control" id="exampleFormControlSelect1" name="guestGender">
      <option>Female</option>
      <option>Male</option>
      
    </select>
  </div>
  <div class="form-group">
    <label for="guestNationality">Nationality</label>
    <input type="text" class="form-control" name="guestNationality" >
  </div>
   <div class="form-group">
    <label for="guestPhoneNum">Phone Number</label>
    <input type="text" class="form-control" name="guestPhoneNum" >
  </div>
   <div class="form-group">
    <label for="guestEmailAddress">Email Address</label>
    <input type="email" class="form-control" name="guestEmailAddress" >
  </div>
 
					



	<button class="btn btn-primary" type="submit">Submit</button>
</form>
					</div>
					
	<!-- 	END of ADD GUEST MODAL -->
					
					
					
				</div>
				</div>
				</div>
          
			</section>
		</div>
		
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
<!-- <title>Room Guest Info</title> -->
<!-- </head> -->
<!-- <body> -->
<%-- <p>${room.id}</p> --%>
<%-- <p>${room.guest.guestFirstname}</p> --%>
<%-- <button><a href="http://localhost:8081/admin/room/${room.id}/guest/add">ADD GUEST</a></button> --%>

<!-- </body> -->
<!-- </html> -->