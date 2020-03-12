<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags" %>
        <%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<mt:admin_template title="Inventory">
	<jsp:attribute name="content">
		<!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper" style="min-height: 925.8px;">
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<h1>
					<small>Date&Time: <span id="date"></span>
						  <span id = "time"></span></small>
				</h1>
			</section>

			<section class="content">
			
			
			<div class="row">
			
			<div class="col-md-12">
			
		<div class="box box-info">
							
								<div class="box-header">
													<c:choose>
		    <c:when test="${not empty errorSpa}">
		   <div class="alert alert-danger alertSpa" role="alert">
	<p> <span>${errorSpa}</span></p>
	</div>
		    </c:when>
		    </c:choose>
									<h3 class="box-title">SPA RESERVATIONS</h3>

									<div class="box-tools">
									</div>
								</div>
								</div>
								
								<div class="box-body no-padding">
	
									<table class="table table-striped">
										<tbody>
											<tr>
												<th>Guest</th>
			<th>Service</th>
			<th>Date</th>
			<th>Arrival Time</th>
			<th>No. of Guests</th>
			<th>Status</th>
			<th>Action</th>
										
											</tr>
						         <c:forEach items="${spaReservations}" var="sr">
											<tr>
											
													<td>${sr.guest.guestFirstname } ${sr.guest.guestLastname }</td>
			<td>${sr.services.serviceName }</td>
			<td><fmt:formatDate pattern='MM/dd/yyy' type = 'date'  value = '${sr.spaReservationDate}' /></td>
			
			<td>${sr.spaReservationTimeRange }</td>
						<td>${sr.spaReservationGoodFor }</td>
												<td>${sr.status }</td>
												<c:choose>
         
         <c:when test = "${sr.status == 'Open'}">
												<td><a href="http://localhost:8081/admin/spa/service/reservation/update/${sr.id}">CLOSE</a></td>
        </c:when>
         
         <c:otherwise>
												<td><a href="http://localhost:8081/admin/spa/service/reservation/delete/${sr.id}">DELETE</a></td>
         </c:otherwise>
      </c:choose>
						
											</tr>
											</c:forEach>
										</tbody>
									</table>
								</div>	
			
			
			
			</div>
			
			
			
			
			
			</div>
			
			
			
			
			
			
			
			
			
			
			
			
		
			
			
			
</section></div>
<script>
var dt = new Date();
document.getElementById("date").innerHTML = (("0"+(dt.getMonth()+1)).slice(-2)) +"/"+ (("0"+dt.getDate()).slice(-2)) +"/"+ (dt.getFullYear());

var tm = new Date();
document.getElementById("time").innerHTML = tm.toLocaleTimeString();


setTimeout(function(){

	$('.alertSpa').fadeOut('fast');
}, 7000);
</script>

	</jsp:attribute>
</mt:admin_template>
