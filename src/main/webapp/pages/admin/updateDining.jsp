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
								<h4>UPDATE RESTAURANT</h4>
			<hr style="background-color: grey;">
<form action="http://localhost:8081/admin/dining/${dining.id}/updated" method="post" enctype="multipart/form-data">
			  <div class="form-group">

									<label>RESTAURANT</label>
									</div>
												  <div class="form-group">
									
									<input type="text" name="diningName" value="${dining.diningName }">
									</div>
								
												  <div class="form-group">

									<label>DESCRIPTION</label>
									</div>
												  <div class="form-group">
									
									<textarea style="width:500px; height:200px;" name="diningDescription">${dining.diningDescription }</textarea>
									</div>
								
									
									
								
							  <div class="form-group">

												<button class="btn btn-primary" type="submit" style="margin-top: 10px; float:right">SUBMIT</button>
																			<a href="http://localhost:8081/admin/diningList" class="btn btn-primary" type="button" style="margin-top: 10px;">BACK</a>
												
					
					</div>
</form>
</div>	
</section>
</div>
	
	</jsp:attribute>
</mt:admin_template>