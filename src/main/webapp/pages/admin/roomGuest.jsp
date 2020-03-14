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
	
		
		
          <div class="row">
			
			<div class="col-md-6">
			
<!-- 			insert code sa box -->
			<div class="box box-info">
            <div class="box-header with-border">
              <h3 class="box-title">ROOM #${room.id}</h3>
              
              <c:choose>
    <c:when test="${room.occupyingGuest==0}">
<div style="float:right;">
		              <button type="button"  class="btn btn-primary" data-toggle="modal" data-target="#guestModal">ADD GUEST</button>
  
  </div>
    </c:when>
    <c:otherwise>
<div style="float:right;">
		              <button type="button" style="float:right; display:none;" class="btn btn-primary" data-toggle="modal" data-target="#guestModal">ADD GUEST</button>
    				  <a class="btn btn-success" href="http://localhost:8081/admin/room/${room.id}/guest/checkout">CHECKOUT</a>
</div>

    </c:otherwise>
</c:choose>
              
              
              
            </div>
            <!-- /.box-header -->
            <!-- form start -->
            <form class="form-horizontal">
              <div class="box-body">
                <div class="form-group">
                <div class="col-sm-10" style=" margin:auto; width:100%;">
                <c:choose>
    <c:when test="${room.occupyingGuest==0}">
		              <label  class="col-sm-4">Guest Name:</label>
				  <label  class="col-sm-4 ">Email Address: </label>
				  <label  class="col-sm-4 ">Age: </label>
                   <label  class="col-sm-4 ">Gender: </label>
                   <label  class="col-sm-4 ">Nationality: </label>
                   <label  class="col-sm-4 ">Contact: </label>
    </c:when>
    <c:otherwise>
		              <label  class="col-sm-4 ">Guest Name:</label><p> ${guest.guestFirstname} ${guest.guestLastname}</p>
				  <label  class="col-sm-4 ">Email Address:</label><p> ${guest.guestEmailAddress}</p>
				  <label  class="col-sm-4 ">Age:</label><p> ${guest.guestAge}</p>
                   <label  class="col-sm-4 ">Gender:</label><p> ${guest.guestGender}</p>
                   <label  class="col-sm-4 ">Nationality:</label><p> ${guest.guestNationality}</p>
                   <label  class="col-sm-4 ">Contact:</label><p> ${guest.guestPhoneNum}</p>
    </c:otherwise>
</c:choose>
                  
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
    <label for="guestFirstname" >Firstname</label>
    <input type="text" class="form-control" name="guestFirstname" >
  </div>
  <div class="form-group">
    <label for="guestLastname">Lastname</label>
    <input type="text" class="form-control" name="guestLastname" required>
  </div>
  <div class="form-group">
    <label for="guestAge">Age</label>
    <input type="text" class="form-control" name="guestAge" required>
  </div>
  <div class="form-group">
    <label for="guestGender">Gender</label>
    <select class="form-control" id="exampleFormControlSelect1" name="guestGender" required>
      <option>Female</option>
      <option>Male</option>
      
    </select>
  </div>
  <div class="form-group">
    <label for="guestNationality">Nationality</label>
    <select class="form-control" id="exampleFormControlSelect1" name="guestNationality" required>
      <option selected disabled>---Choose Nationality---</option>
      <option>Filipino</option>
      <option>Korean</option>
      <option>Chinese</option>
      <option>Japanese</option>
      <option>American</option>
      <option>others</option>
      
    </select>
  </div>
   <div class="form-group">
    <label for="guestPhoneNum">Phone Number</label>
    <input type="text" class="form-control" name="guestPhoneNum" required>
  </div>
   <div class="form-group">
    <label for="guestEmailAddress">Email Address</label>
    <input type="email" class="form-control" name="guestEmailAddress" required>
  </div>
 
					



	<button class="btn btn-primary" type="submit">SAVE</button>
</form>
					</div>	
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