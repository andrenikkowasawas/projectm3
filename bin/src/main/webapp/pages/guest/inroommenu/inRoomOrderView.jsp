<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Dining Reservation view</title>
<link href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round" rel="stylesheet">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/main.css"/>
 <link rel="stylesheet" href="https://unpkg.com/@coreui/coreui@3.0.0-beta.4/dist/css/coreui.min.css">
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.15.0/umd/popper.min.js" integrity="sha384-L2pyEeut/H3mtgCBaUNw7KWzp5n9&#43;4pDQiExs933/5QfaTh8YStYFFkOzSoXjlTb" crossorigin="anonymous"></script>
<script src="https://unpkg.com/@coreui/coreui@3.0.0-beta.4/dist/js/coreui.min.js"></script>
</head>
<body class="background" >
<div class=" welcome-logo ">
<img src="${pageContext.request.contextPath}/image/bluewaterlogo.png" class="img-fluid" alt="Responsive image">
</div>
<div class="modal-dialog modal-confirm">
		<div class="modal-content">
			<div class="modal-header">
				<div class="icon-box">
					<i class="material-icons">&#xE876;</i>
				</div>				
				<h4 class="modal-title modal-alert-confirm text-center">Awesome!</h4>	
			</div>
			<div class="modal-body">
				<p class="text-center modal-alert-confirm">Your order has been confirmed.</p>
				<!-- <p class="modal-alert-confirm">Details:</p>
	<p class=" modal-alert-confirm"><fmt:formatDate pattern='MM/dd/yyy' type = 'date'  value = '${diningReservationDate}' />Reservation Date:</p>
				<p class=" modal-alert-confirm">Time Arriving: ${ diningReservationTimeRange}</p>
				<p class=" modal-alert-confirm">Number of Guests: ${diningReservationGoodFor }</p>-->
			<p class="text-center modal-alert-confirm">Number of Orders: ${ordernumber}</p>
		
			
			</div> 
			<div class="modal-footer">
       <a href="http://localhost:8081/guest/diningList/${guestId }/dining-dashboard" class="btn btn-primary btn-block" >OK</a>

</div>
		</div>
	</div>

	
    		    		

</body>
</html>