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
	<div><h4>ADD IN-ROOM MENU</h4>
	<h6><bold>CATEGORY:</bold> ${category.menuCategory}</h6>
	</div>
								
								
			<hr style="background-color: grey;">
<form action="http://localhost:8081/admin/inRoomMenu/save" method="post" enctype="multipart/form-data">
			  <div class="form-group">

									<label>MENU NAME</label>
									</div>
												  <div class="form-group">
									
									<input type="text" name="menuName">
									</div>
								
												  <div class="form-group">

									<label>PRICE</label>
									</div>
												  <div class="form-group">
									
										<input type="text" name="menuPrice">									
								</div>
								<div class="form-group">

									<label>DESCRIPTION</label>
									</div>
												  <div class="form-group">
									
<textarea name="menuDescription" style="width:100%;">	</textarea>							</div>
									<div class="form-group">
									<label>IMAGE</label>
									</div>
												  <div class="form-group">
									<input type="file" name="imgFile" >
					</div>
								
							  <div class="form-group">

												<button class="btn btn-primary" type="submit" style="margin-top: 10px; float:right">SUBMIT</button>
																			<a href="#" class="btn btn-primary" type="button" style="margin-top: 10px;">BACK</a>
										</div>		
					
</form>
					
</div>
</section>
</div>

	
	</jsp:attribute>
</mt:admin_template>