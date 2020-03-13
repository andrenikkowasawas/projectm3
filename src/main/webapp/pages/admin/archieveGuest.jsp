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
                  
                </tr>
         <c:forEach items="${guestarchive}" var="ol">
				<tr>		  	
					<td>${ol.guestFirstname} ${ol.guestLastname}</td>
					<td>${ol.guestAge}</td>	
					<td>${ol.guestGender}</td>
					<td>${ol.guestEmailAddress}</td>
					<td>${ol.guestPhoneNum}</td>
					<td>${ol.guestNationality}</td>
									
				</tr>
		</c:forEach>
           </tbody></table>
            </div>
         
            
			
          </div>

			</section>
	</div>
	
	</jsp:attribute>
</mt:admin_template>