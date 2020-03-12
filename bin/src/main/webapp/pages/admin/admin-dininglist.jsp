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
														<button type="button" class="btn btn-primary pull-right" data-toggle="modal" data-target="#diningModal">ADD DINING</button>
									
									</div>
								</div>
								<!-- /.box-header -->
								<div class="box-body no-padding">
									<table class="table table-striped">
										<tbody>
											<tr>
												<th>Dining Name</th>
												<th width="50px"></th>
												<th>Image</th>
												
										
											</tr>
											<c:forEach items="${diningList}" var="dining">
											<tr>
											
													<td>${dining.diningName}</td>
												<td width="50px"></td>
												
													<td><img style="width:40px; height:25px;" src="${dining.imgFilePath}"/></td>
																								
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
														<button type="button" class="btn btn-primary pull-right" data-toggle="modal" data-target="#themedDinerModal">ADD THEMEDDINER</button>
									
									</div>
								</div>
								<!-- /.box-header -->
								<div class="box-body no-padding">
									<table class="table table-striped table-hover">


										<tbody><tr>
											<th>ThemedDiner Name</th>
												<th>Availability</th>
													<th>Rate</th>
											<th width="50px"></th>
											<th>Image</th>
											
										</tr>
										<c:forEach items="${tdList}" var="td">
										<tr>
			<td>${td.themedDinerName}</td>
								<td>${td.themedDinerAvailability}</td>
								<td>${td.rate}</td>		
																			<th width="50px"></th>
								
								<td><img style="width:40px; height:25px;" src="${td.imgFilePath}"/></td>
													
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
 
  <div class="modal fade" id="diningModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">x</span></button>
						<h4 class="modal-title">Add DINING</h4>
					</div>
					<div class="modal-body">
						<form action="admin/dininginfo" method="post" enctype="multipart/form-data">
						
							<div class="form-group">
							
								<label for="roomNo">Restaurant Name:</label>
								<input type = "text" class="form-control" id ="roomNo" placeholder ="Restaurant Name" name = "diningName">
							</div>
							<div class="form-group">
							
								<label for="roomNo">Description:</label>
								<input type ="text" class="form-control" id ="roomNo" placeholder ="Description" name = "diningDescription">
							</div>
							<div class="form-group">
							
								<label for="roomNo">Upload Image:</label>
								<input type ="file" class="form-control" id ="imgFile" placeholder ="..." name = "imgFile">
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
  <div class="modal fade" id="themedDinerModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">x</span></button>
						<h4 class="modal-title">Add DINING</h4>
					</div>
					<div class="modal-body">
					<form action="http://localhost:8081/admin/themedDiner/view" method="post" enctype="multipart/form-data">
	<table>
			<tr>		
				<td>Themed Diner name: </td>
				<td><input type="text" name="themedDinerName"></td>
			</tr>
			<tr>	
				<td>Description: </td>
				<td><textarea name="description"></textarea></td>
			</tr>
			<tr>	
				<td>Available on: </td>
				<td><input type="text" name="themedDinerAvailability"></td>
			</tr>
			<tr>	
				<td>Rate: </td>
				<td><input type="text" name="rate"></td>
			</tr>
			<tr>	
				<td>Image:</td>
				<td><input type="file" name="imgFile" id="imgFile" multiple></td>
			</tr>
			
					
					
					
	</table>
		<button type="submit">SUBMIT</button>
</form>
					</div>
					
					
					
				</div>
				</div>
				</div>
</section>
	</div>
	
	</jsp:attribute>
</mt:admin_template>