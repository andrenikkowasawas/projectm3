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
	
	<br>
	<br>
  
  <div class="row">
  
  
  
						<div class="col-md-6">
						
							<div class="box">
							
								<div class="box-header">
<!-- 								DINING -->
									<h3 class="box-title">RESTAURANTS</h3>

									<div class="box-tools">
														<button type="button" class="btn btn-primary pull-right"
										data-toggle="modal" data-target="#diningModal">ADD DINING</button>
									
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
												
													<td><img style="width: 40px; height: 25px;"
													src="${pageContext.request.contextPath}/uploads/${dining.imgFilePath}" /></td>
													<td><a
													href="http://localhost:8081/admin/dining/delete/${dining.id}">  <i
														class="material-icons">delete</i>
</a> <a href="http://localhost:8081/admin/dining/update/${dining.id}"><i
														class="material-icons">edit</i></a></td>
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
									<h3 class="box-title">THEMED DINER</h3>

									<div class="box-tools">
														<button type="button" class="btn btn-primary pull-right"
										data-toggle="modal" data-target="#themedDinerModal">ADD THEMEDDINER</button>
									
									</div>
								</div>
								<!-- /.box-header -->
								<div class="box-body no-padding">
									<table class="table table-striped table-hover">


										<tbody>
										<tr>
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
								
								<td><img style="width: 40px; height: 25px;"
													src="${pageContext.request.contextPath}/uploads/${td.imgFilePath}" /></td>
									<td><a
													href="http://localhost:8081/admin/themedDinerRemove/${td.id}"><i
														class="material-icons">delete</i></a> <a
													href="http://localhost:8081/admin/themedDinerUpdate/${td.id}"><i
														class="material-icons">edit</i></a></td>			
										</tr>
										</c:forEach>
										</tbody>
								</table>

								</div>
								<!-- /.box-body -->
							</div>
							<!-- /.box -->
						</div>
						<!--/Themed Diner-->
						
					</div>
					
					<div class="row">
					
					</div>
 
  <div class="modal fade" id="diningModal" tabindex="-1" role="dialog"
					aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
									aria-label="Close">
							<span aria-hidden="true">x</span>
								</button>
						<h4 class="modal-title">ADD RESTAURANT</h4>
					</div>
					<div class="modal-body">
						<form action="http://localhost:8081/admin/dininginfo"
									method="post" enctype="multipart/form-data">
									  <div class="form-group">

									<label>RESTAURANT</label>
									</div>
												  <div class="form-group">
									
									<input type="text" name="diningName" required>
									</div>
								
								  <div class="form-group">

									<label>DESCRIPTION</label>
									</div>
												  <div class="form-group">
									
											<textarea name="diningDescription"
											style="width: 100%; height: 200px;" required></textarea>
							
									</div>
								
									
			  <div class="form-group">

				
				<label>UPLOAD IMAGE</label>
				</div>
							  <div class="form-group">
				
				<input type="file" name="imgFile" id="imgFile" multiple required>
				</div>
			
									
								
								  <div class="form-group">

												<button class="btn btn-primary" type="submit"
											style="margin-top: 10px;">SUBMIT</button>
					
					
					</div>
						</form>
						</div>
				
					
					
					
				</div>
				</div>
				</div>
				</section>
				</div>
				
				
				
		
				
				
				
				
				
  <div class="modal fade" id="themedDinerModal" tabindex="-1"
			role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">x</span>
						</button>
						<h4 class="modal-title">ADD THEMED DINING</h4>
					</div>
					<div class="modal-body">
					<form action="http://localhost:8081/admin/themedDiner/view"
							method="post" enctype="multipart/form-data">
			
											  <div class="form-group">

				<label>THEMED DINER: </label>
				</div>
												  <div class="form-group">
				
				<input type="text" name="themedDinerName" required>
				
				</div>
			
											  <div class="form-group">
			
					<label>DESCRIPTION: </label>
					</div>
													  <div class="form-group">
					
				<textarea name="description" style="width: 100%; height: 200px;"
									required></textarea>
				
				</div>
			
												  <div class="form-group">

				<label>AVAILABLE ON:</label>
				</div>
												  <div class="form-group">
				
				<input type="text" name="themedDinerAvailability" required>
				</div>
											  <div class="form-group">

					
				<label>RATE: </label>
				</div>
												  <div class="form-group">
				
				<input type="text" name="rate" required>
				
				</div>
											  <div class="form-group">
			
				
				<label>UPLOAD IMAGE:</label>
				</div>
												  <div class="form-group">
				
				<input type="file" name="imgFile" id="imgFile" multiple required>
				
				</div>
											  <div class="form-group">
			
				<button class="btn btn-primary" type="submit">SUBMIT</button>
				</div>
				
				</form>
				
					</div>
					
					</div>
					
					
				</div>
		</div>
		
			

	
	
	</jsp:attribute>
</mt:admin_template>