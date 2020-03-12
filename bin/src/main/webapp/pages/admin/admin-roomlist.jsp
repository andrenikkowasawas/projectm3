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
			
			
<!-- ADD ROOM BUTTON -->
			<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#roomModal">ADD ROOM</button>
			
			
			  <div class="box">
            <div class="box-header with-border">
              <h3 class="box-title">ROOM LIST</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <table class="table table-striped table-hover">
                <tbody>
                <tr>
                  <th style="width: 10px">id</th>
                  <th>Room No.</th>
                </tr>
         <c:forEach items="${roomList}" var="room">
				<tr>		  	
					<td>${room.id}</td>
					<td>${room.roomNo}</td>	
				</tr>
		</c:forEach>
           </tbody></table>
            </div>
            <!-- /.box-body -->
            
			<!--  box footer -->
            <div class="box-footer clearfix">
              <ul class="pagination pagination-sm no-margin pull-right">
                <li><a href="#">«</a></li>
                <li><a href="#">1</a></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">»</a></li>
              </ul>
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
								<button type="button" class="btn btn-default pull-left" data-dismiss="modal">Close</button>
								<button type="submit" class="btn btn-primary" >Save changes</button>
							</div>
						</form>
					</div>
					
					
					
				</div>
				</div>
				</div>
			</section>
			
	</div>
	
<!-- 							<div class="form-group"> -->
<!-- 								<label> -->
<!-- 									<form:label path="roomName">Room Name:</form:label> -->
<!-- 								</label> -->
<!-- 								<form:input class="form-control" path="roomName" /> -->
<!-- 							</div> -->
<!-- 							<div class="form-group"> -->
<!-- 								<label> -->
<!-- 									<form:label path="roomStatus">Room Status:</form:label> -->
<!-- 								</label> -->
<!-- 								<form:select class="form-control" path="roomStatus" multiple="false"> -->
<%-- 									<form:options items="${options}"></form:options> --%>
<!-- 								</form:select> -->
<!-- 							</div> -->
<!-- 							<div class="form-group"> -->
<!-- 								<label> -->
<!-- 									<form:label path="roomClean">Room Clean:</form:label> -->
<!-- 								</label> -->
<!-- 								<form:input class="form-control" path="roomClean" value="true" /> -->
<!-- 							</div> -->
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
