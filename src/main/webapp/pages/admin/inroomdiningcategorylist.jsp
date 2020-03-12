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
<div class="box">
            <div class="box-header with-border">
              <h3 class="box-title">Category</h3>
   	   								<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#inroomcatModal" style="float:right;">ADD CATEGORY</button>
   
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <table class="table table-striped table-hover">
                <tbody>
                
		<c:forEach items="${inRoomDiningCategoryList}" var="category">
		<tr>		  	
			
			<td><a href="http://localhost:8081/admin/in-room-dining-category-list/${category.id }">${category.menuCategory}</a></td>
			<td><a href="http://localhost:8081/admin/in-room-dining-category-list/remove/${category.id}">Delete</a></td>
		</tr>
		</c:forEach>
  </tbody>
  </table>
 </div>
 </div>
 
 
 	 <div class="modal fade" id="inroomcatModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">x</span></button>
						<h4 class="modal-title">ADD CATEGORY</h4>
					</div>
					<div class="modal-body">
						<form action="http://localhost:8081/admin/in-room-dining-category/view" method="post" >
						
							<div class="form-group">
							
								<label for="roomNo">Category</label>
<!-- 								<input type="text" name = "roomNo"> -->
								<input class="form-control" type="text" id ="menuCategory"  name = "menuCategory">
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-primary pull-left" data-dismiss="modal">CLOSE</button>
								<button type="submit" class="btn btn-primary" >SAVE</button>
							</div>
						</form>
					</div>
					
					
					
				</div>
				</div>
				</div>
 
 

</section>
</div>
</jsp:attribute>
</mt:admin_template>