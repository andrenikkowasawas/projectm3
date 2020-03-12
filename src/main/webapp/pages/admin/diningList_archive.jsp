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
	<a href="/admin/diningList"><i class="fa fa-circle-o"></i>DINING</a>
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
												<th>Restaurant</th>
												<th width="50px"></th>
												<th>Image</th>
												<th>Actions</th>
												<th></th>
										
											</tr>
											<c:forEach items="${diningList}" var="dining">
											<tr>
											
													<td>${dining.diningName}</td>
												<td width="50px"></td>
												
													<td><img style="width:40px; height:25px;" src="${pageContext.request.contextPath}/uploads/${dining.imgFilePath}"/></td>
													<td><a href="http://localhost:8081/admin/dining/recover/${dining.id}">  <i class="material-icons">Recover</i></a></td>
											</tr>
											</c:forEach>
										</tbody>
									</table>
								</div>
								<!-- /.box-body -->
							</div>
							<!-- /.box -->
						</div>
						
						
						
						<!-- /.col -->
						<div class="col-md-6">
							<div class="box">
							
								<div class="box-header">
<!-- 								THEMED DINER -->
									<h3 class="box-title">THEMED DINER ARCHIVE</h3>

									<div class="box-tools">
														<button type="button" class="btn btn-primary pull-right" data-toggle="modal" data-target="#themedDinerModal">ADD THEMEDDINER</button>
									
									</div>
								</div>
								<!-- /.box-header -->
								<div class="box-body no-padding">
									<table class="table table-striped table-hover">


										<tbody><tr>
											<th>ThemedDiner</th>
												<th>Availability</th>
													<th>Rate</th>
											<th width="50px"></th>
											<th>Image</th>
											<th></th>
										</tr>
										<c:forEach items="${tdList}" var="td">
										<tr>
			<td>${td.themedDinerName}</td>
								<td>${td.themedDinerAvailability}</td>
								<td>${td.rate}</td>		
																			<th width="50px"></th>
								
								<td><img style="width:40px; height:25px;" src="${pageContext.request.contextPath}/uploads/${td.imgFilePath}"/></td>
									<td><a href="http://localhost:8081/admin/themedDinerRecover/${td.id}"><i class="material-icons">delete</i></a> </td>			
										</tr>
										</c:forEach>
										</tbody></table>

								</div>
								<!-- /.box-body -->
							</div>
							<!-- /.box -->
						</div>
						<!--/Themed Diner-->
						
					</div>
					
					<div class="row">
					
					</div>
 
  
			

	
	
	</jsp:attribute>
</mt:admin_template>