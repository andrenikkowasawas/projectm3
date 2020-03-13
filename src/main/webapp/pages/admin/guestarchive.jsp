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
<div class="box box-info">
            <div class="box-header with-border">
              <h3 class="box-title">GUEST ARCHIVE</h3>
              <a href="http://localhost:8081/admin/home">Home</a>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <table class="table table-striped table-hover">
                <tbody>
                <tr>
                  <th>Guest Name</th>
                  <th>Age</th>
                  <th>Gender</th>
                  <th>Email</th>
                  <th>Contact</th>
                  <th>Nationality</th>
                  <th>Room</th>
                  
                </tr>
         <c:forEach items="${guestarchive}" var="ol">
				<tr>		  	
					<td>${ol.guest.guestFirstname} ${ol.guest.guestLastname}</td>
					<td>${ol.age}</td>	
					<td>${ol.gender}</td>
					<td>${ol.email}</td>
					<td>${ol.contact}</td>
					<td>${ol.nationality}</td>
					<td>${ol.room}</td>
									
				</tr>
		</c:forEach>
           </tbody></table>
            </div>
            <!-- /.box-body -->
            
			
          </div>
<!-- 
<button>
				<a href="http://localhost:8081/admin/home">BACK</a>
			</button>-->
			</section>
	</div>
	
	</jsp:attribute>
</mt:admin_template>