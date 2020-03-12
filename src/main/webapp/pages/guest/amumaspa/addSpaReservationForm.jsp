<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>BLUEWATER</title>
<link href='https://fonts.googleapis.com/css?family=Alegreya Sans SC' rel='stylesheet'>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/main.css"/>
<link rel="stylesheet" href="https://unpkg.com/@coreui/coreui@3.0.0-beta.4/dist/css/coreui.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.15.0/umd/popper.min.js" integrity="sha384-L2pyEeut/H3mtgCBaUNw7KWzp5n9&#43;4pDQiExs933/5QfaTh8YStYFFkOzSoXjlTb" crossorigin="anonymous"></script>
<script src="https://unpkg.com/@coreui/coreui@3.0.0-beta.4/dist/js/coreui.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0">


</head>
<body class="background" >
<div class=" welcome-logo ">
<img src="${pageContext.request.contextPath}/image/bluewaterlogo.png" class="img-fluid" alt="Responsive image">
</div>

<div class="diningreservationform polaroid">
<form action="http://localhost:8081/guest/amumaspa/reservation/${guest.id}/${service.id}" method="post">
	Service: <p class="modalbody-ff"><i> ${service.serviceName}</i> </p>
	<div class="form-group">
Name: <p class="modalbody-ff"><i> ${guest.guestFirstname}  ${guest.guestLastname} </i></p>
</div>
	
	 <div class="form-group">
	Reservation Date: <input type="date" class="form-control" name="spaReservationDate">
	</div>
	<div class="form-group">
						  Time Arriving:  <input type="time"  class="form-control" name="spaReservationTimeRange">
						  </div>
	
	<div class="form-group">

	Number of Guests: <input type="number" class="form-control" name="spaReservationGoodFor">
	</div>
	<button type="submit" class="btn btn-primary btn-reserve-now" >Reserve Now</button>
		<a href="http://localhost:8081/guest/amumaspa/${guest.id}/${service.id}" class="btn btn-primary" >Back</a>
	
</form>

</div>
</body>
</html>

