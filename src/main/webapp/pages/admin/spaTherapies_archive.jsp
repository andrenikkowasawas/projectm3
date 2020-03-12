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
              <h3 class="box-title">SPA THERAPIES</h3>
              <div class="box-tools">
									   	   								<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#serviceModal" style="float:right;">ADD THERAPY</button>
									
									</div>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <table class="table table-striped table-hover">
<tbody>

<tr>
<th>Therapy</th>
<th>Price</th>
<th>Duration</th>
<th>Description</th>
<th>Image</th>
<th>Action</th>


</tr>
		<c:forEach items="${therapiesList}" var="th">
		<tr>		  	
			
			<td>${th.serviceName}</td>
			<td>${th.servicePrice}</td>
						<td>${th.serviceDuration}</td>
												<td>${th.serviceDescription}</td>
						
			<td><img style="width:100%; height:200px;" src="${pageContext.request.contextPath}/uploads/${th.imgFilePath}"/></td>
			<td><a href="http://localhost:8081/admin/spaTherapy/delete/${th.id}">  <i class="material-icons">delete</i>
</a> <a href="http://localhost:8081/admin/spaTherapy/update/${th.id}"><i class="material-icons">edit</i></a></td>
			
		</tr>
		</c:forEach>
  </tbody>
  </table>
</div>
</div>



 <div class="modal fade" id="serviceModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">x</span></button>
						<h4 class="modal-title">ADD THERAPY</h4>
					</div>
					<div class="modal-body">
					
						<form action="http://localhost:8081/admin/spaTherapy" method="post" enctype="multipart/form-data">
		<label>Therapy:</label>
		<input type="text" class="form-control" name="serviceName">
	
		<label>Description:</label>
		<textarea class="form-control"  name="serviceDescription"></textarea>
		
		<label>Duration:</label>
		<input type="text" class="form-control" name="serviceDuration">
		
		<label>Price:</label>
		<input type="text" class="form-control" name="servicePrice">
		<div class="form-group">
			<label>Upload photo:</label>
			</div>
					<div class="form-group">
			
	<input type="file" name="imgFile">
	</div>

<button class="btn btn-primary" type="submit">Submit</button>
</form>
					</div>
					
					
					
				</div>
				</div>
				</div>
 






</section>
</div>
</jsp:attribute></mt:admin_template>