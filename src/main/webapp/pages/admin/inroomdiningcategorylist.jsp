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
              <h3 class="box-title">IN-ROOM-MENU ITEMS</h3>
   	   								<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#inroomcatModal" style="float:right;">ADD MENU</button>
   
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <table class="table table-striped table-hover">
                <tbody>
                <tr><th>MENU</th>
                <th>PRICE</th>
                <th>IMAGE</th>
                <th>ACTION</th>
                
                </tr>
                
		<c:forEach items="${menuList}" var="menu">
		<tr>		  	
			
			<td>${menu.menuName}</td>
			<td>${menu.menuPrice}</td>
			<td><img style="width:40px; height:25px;" src="${pageContext.request.contextPath}/uploads/${menu.imgFilePath}"/></td>
						<td><a href="http://localhost:8081/admin/in-room-dining-category-list/menu/remove/${menu.id}"><i class="material-icons">delete</i></a></td>
			
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
						<h4 class="modal-title">ADD MENU</h4>
					</div>
					<div class="modal-body">
						
						
						<form action="http://localhost:8081/admin/inRoomMenu/save" method="post" enctype="multipart/form-data">
			  <div class="form-group">

									<label>MENU NAME</label>
									</div>
												  <div class="form-group">
									
									<input type="text" name="menuName" required>
									</div>
								
												  <div class="form-group">

									<label>PRICE</label>
									</div>
												  <div class="form-group">
									
										<input type="text" name="menuPrice" required>									
								</div>
								<div class="form-group">

									<label>DESCRIPTION</label>
									</div>
												  <div class="form-group">
									
<textarea name="menuDescription" style="width:100%;" required>	</textarea>							</div>
									<div class="form-group">
									<label>IMAGE</label>
									</div>
												  <div class="form-group">
									<input type="file" name="imgFile" required>
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