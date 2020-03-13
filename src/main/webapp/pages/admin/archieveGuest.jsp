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
	<a href="/admin/home"><i class="fa fa-circle-o"></i>ROOMS</a>
	<section class="content">
	
	<br>
	<br>
  
  <div class="row">
  
  
  
						<div class="col-md-6">
						
							<div class="box">
							
								<div class="box-header">
<!-- 								DINING -->
									<h3 class="box-title">RESTAURANTS ARCHIVE</h3>

									<div class="box-tools">
														<button type="button" class="btn btn-primary pull-right" data-toggle="modal" data-target="#diningModal">ADD DINING</button>
									
									</div>
								</div>
								<!-- /.box-header -->
								<div class="box-body no-padding">
									<table class="table table-striped">
										<tbody>
											<tr>
												<th>Firstname</th>
												<th width="50px"></th>
												<th>Lastname</th>
												
										
											</tr>
											<c:forEach items="${guestList}" var="guest">
											<tr>
											
													<td>${guest.guestFirstname}</td>
											<td>${guest.guestLastname}</td>
													
												<td width="50px"></td>
												
											</tr>
											</c:forEach>
										</tbody>
									</table>
								</div>
								<!-- /.box-body -->
							</div>
							<!-- /.box -->
						</div>
						
						
					
					</div>
					
					<div class="row">
					
					</div>
 
  
			
</section></div>
	
	
	</jsp:attribute>
</mt:admin_template>