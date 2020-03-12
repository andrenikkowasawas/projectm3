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
				
			</section>
<section class="content">

	<div class="update-form">	

					<h4>UPDATE THEMED DINER</h4>
								<hr style="background-color: grey;">
					
				
<form action="http://localhost:8081/admin/themedDiner/${themedDinerList.id}/updated" method="post" enctype="multipart/form-data">

					<div class="row">
					<div class="col">
					
					<label>THEMED DINER: </label>
			<input style="width:200px; " type="text" name="themedDinerName" value="${themedDinerList.themedDinerName }">
			
					
					</div>
					</div>
					<div class="row">
					<div class="col">
					
						
				<label>DESCRIPTION: </label>
				<textarea style="width:480px; height:200px;" name="description">${themedDinerList.description }</textarea>
					
					</div>
					</div>
					<div class="row">
					<div class="col">
					
					
				<label>AVAILABLE ON: </label>
				<input style="width:200px; " type="text" name="themedDinerAvailability" value="${themedDinerList.themedDinerAvailability}">
					
					</div>
					</div>
					<div class="row">
					<div class="col">
					
						<label>RATE:  </label>
				<input style="width:200px; " type="text" name="rate" value="${themedDinerList.rate }">
		
					
					</div>
					</div>
					<div class="row">
					<div class="col">
					
							<button class="btn btn-primary" type="submit" style="float:right;">SUBMIT</button>
							<a href="http://localhost:8081/admin/diningList" class="btn btn-primary" type="button" >BACK</a>
					
					
					</div>
					</div>
			
			
				
			
	
</form>
</div>
</section>
</div>
	
	</jsp:attribute>
</mt:admin_template>