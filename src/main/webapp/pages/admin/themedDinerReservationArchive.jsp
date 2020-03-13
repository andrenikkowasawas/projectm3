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
									<h3 class="box-title">THEMED DINING RESERVATIONS</h3>

									<div class="box-tools">
										</div>
								</div>
								</div>
	<div class="box-body no-padding">
									<table class="table table-striped">
										<tbody>
											<tr>
												<th>Guest</th>
			<th>Themed Dinner</th>
			<th>Date</th>
			<th>Arrival Time</th>
			<th>No.of Guests</th>
			
										
											</tr>
						         <c:forEach items="${tdReservations}" var="tdr">
											<tr>
											
													<td>${tdr.guest.guestFirstname } ${dr.guest.guestLastname }</td>
			<td>${tdr.themedDiner.themedDinerName }</td>
			<td><fmt:formatDate pattern='MM/dd/yyy' type = 'date'  value = '${tdr.themedDinerReservationDate}' /></td>
			
			<td>${tdr.themedDinerArrivalTime }</td>
						<td>${tdr.themedDinerGuests }</td>
																		
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
</script>

<script>
var tm = new Date();
document.getElementById("time").innerHTML = tm.toLocaleTimeString();
</script>

	</jsp:attribute>
</mt:admin_template>
