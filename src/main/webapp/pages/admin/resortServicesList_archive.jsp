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
              <h3 class="box-title">RESORT SERVICES</h3>
              <div class="box-tools">
									   	   								<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#serviceModal" style="float:right;">ADD SERVICE</button>
									
									</div>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <table class="table table-striped table-hover">
<tbody>
<tr>
<th>Service</th>
<th>Description</th>
<th>Contact#</th>
<th>Action</th>

</tr>
		<c:forEach items="${resortServiceList}" var="rs">
		<tr>		  	
			
			<td>${rs.resortServiceName}</td>
			<td>${rs.resortServiceDescription}</td>
			
			<td>${rs.resortServiceContact}</td>
			<td><a href="http://localhost:8081/admin/resortServiceList/remove/${rs.id}"><i class="material-icons">delete</i></a> 
			<a href="http://localhost:8081/admin/resortServiceList/update/${rs.id}"><i class="material-icons">edit</i></a>
			</td>	
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
						<h4 class="modal-title">Add Service</h4>
					</div>
					<div class="modal-body">
					<form action="http://localhost:8081/admin/resortServicesInfo" method="post">
		<label>Service name:</label>
		<input type="text" class="form-control" name="resortServiceName">
	
		<label>Description:</label>
		<textarea class="form-control"  name="resortServiceDescription"></textarea>
	
		<label>Contact #:</label>
		<input type="text" class="form-control"  name="resortServiceContact">
	

<button class="btn btn-primary" type="submit">Submit</button>
</form>
					</div>
					
					
					
				</div>
				</div>
				</div>
 






</section>
</div>
</jsp:attribute></mt:admin_template>