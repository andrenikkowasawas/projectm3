<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
td {
	width: 200px;
}
</style>
<!-- starts here -->
<mt:admin_template title="Inventory">
	<jsp:attribute name="content">
	<!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper" style="min-height: 925.8px;">
	
	<section class="content">
<div class="box box-info">
 <div class="box-header with-border">
              <h3 class="box-title">EVENT LIST</h3>
              <div class="box-tools">
<!-- 														<button><a href="http://localhost:8081/admin//events/add">Add Event</a></button> -->
			 <button type="button" style="margin-bottom: 10px;" class="btn btn-primary" data-toggle="modal" data-target="#addEventModal">ADD EVENT</button>
									
									</div>
            </div>
  <div style="padding:50px;">          
<table>
<tbody>

		<c:forEach items="${eventsList}" var="event">
				
		
		<tr>
		<th>${event.eventName}
		</th>
		
		</tr>
		<tr>		  		
			<td><img style="width:250px; height:200px;" src="${pageContext.request.contextPath}/uploads/${event.imgFilePath}"/></td>
			
		</tr>
		<tr>
			<td>
				<a class="btn btn-danger" href="http://localhost:8081/admin/events/remove/${event.id}">Remove</a>
			</td>
		</tr>
		
		
		</c:forEach>
  </tbody>
  </table>
  </div>
  
  <div class="modal fade" id="addEventModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">x</span></button>
						<h4 class="modal-title">Add Event</h4>
					</div>
					<div class="modal-body">
						<form action="http://localhost:8081/admin/eventInfo" method="post" enctype="multipart/form-data">

  <div class="form-group">
    <label for="eventName">Event Name</label>
    <input type="text" class="form-control" name="eventName" required>
  </div>
  <div class="form-group">
    <label for="imgFile">Upload Photo</label>
    <input type="file" class="form-control" name="imgFile" required>
  </div>
  
 


	<button class="btn btn-primary" type="submit">Submit</button>
</form>
					</div>
					
	<!-- 	END of ADD GUEST MODAL -->
					
					
					
				</div>
				</div>
				</div>
  
</div>
</section>
</div>
</jsp:attribute>
</mt:admin_template>