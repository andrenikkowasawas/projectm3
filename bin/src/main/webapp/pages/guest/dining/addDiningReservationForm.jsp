<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>dining reservation form</title>
<link href='https://fonts.googleapis.com/css?family=Alegreya Sans SC' rel='stylesheet'>

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

<div class="diningreservationform polaroid">
<form action="http://localhost:8081/guest/dining/reservation/${diningId}/${guestId}" method="post">
Reserve a table at: <p class="modalbody-ff"><i> ${diningName}</i> </p>
<div class="form-group">
Name: <p class="modalbody-ff"><i> ${guestFirstName}  ${guestLastName} </i></p>
</div>
  <div class="form-group">
	Reservation Date: <input type="date" class="form-control" name="diningReservationDate">
	</div>
	<!-- Time Arriving: <label for="sel1"><small>time</small></label>
						  <select class="form-control" id="sel1" name="diningReservationTimeRange">
						    <option>8:00 - 10: 00 AM</option>
						    <option>10:00 - 12: 00 NN</option>
						    <option>12:00  - 02: 00 PM</option>
						  </select> -->
						    <div class="form-group">
						  Time Arriving:  <input type="time"  class="form-control" name="diningReservationTimeRange">
						  </div>
 <div class="form-group">

	Number of Guests: <input type="number" class="form-control" name="diningReservationGoodFor">
	</div>
	
	<button type="submit" class="btn btn-primary">Reserve Now</button>
	
	

	
</form>
</div>

</body>
</html>

