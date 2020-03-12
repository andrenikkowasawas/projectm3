<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags" %>


<style>
	
.update-form{
	background-color: white;
	 width: 50%;
	  margin:auto;
	   padding:30px;
	      box-shadow: 5px 10px 18px #888888;
}	
	
</style>
	

<mt:admin_template title="Inventory">
	<jsp:attribute name="content">
	<!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper" style="min-height: 925.8px;">
  <section class="content-header">
				<h1>
				</h1>
			</section>
			<section class="content">
	<div class="update-form">	
	<h4>UPDATE RESORT SERVICES</h4>
	<hr style="background-color:grey">

<form action="http://localhost:8081/admin/resort-services/update/${resortService.id}/view" method="post">

				  <div class="form-group" >
	
		<label>Service name:</label>
		</div>
					  <div class="form-group">
		
		<input type="text" style="width: 50%;" name="resortServiceName" value="${resortService.resortServiceName}">
	</div>
				  <div class="form-group">
	
		<label>Description:</label>
	</div>
				  <div class="form-group">
	
		<textarea style="width: 100%;" name="resortServiceDescription">${resortService.resortServiceDescription}</textarea>
	</div>
				  <div class="form-group">
	
		<label>contact no:</label>
	</div>			  <div class="form-group">
	
		<input style="width: 50%;" type="text" name="resortServiceContact" value="${resortService.resortServiceContact}">
				</div>  		  <div class="form-group">

												<button class="btn btn-primary" type="submit" style="margin-top: 10px; float:right">SUBMIT</button>
																			<a href="http://localhost:8081/admin/resortServices" class="btn btn-primary" type="button" >BACK</a>
												
					
					</div>
</form>
</div>

</section></div></jsp:attribute></mt:admin_template>