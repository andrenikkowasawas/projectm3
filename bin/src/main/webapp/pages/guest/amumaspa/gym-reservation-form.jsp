<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>gym reservation form</title>
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

<div class="diningreservationform">
<form action="http://localhost:8081/guest/${guest.id}/relax/reservation" method="post">
	<div class="form-group">
Name: <p class="modalbody-ff"><i> ${guest.guestFirstname}  ${guest.guestLastname} </i></p>
</div>
	
	 <div class="form-group">
	<input type="text" class="form-control" name="type">
	</div>
	 <div class="form-group">
	Reservation Date: <input type="date" class="form-control" name="date">
	</div>
	<div class="form-group">
						  Time Arriving:  <input type="time"  class="form-control" name="time">
						  </div>
	
	<div class="form-group">
<label for="service"><small>Choose Service</small></label>
						  <select class="form-control" id="service" name="service">
						    <option>Regular gym session</option>
						   <option>With a personal trainer</option>
						   <option>Yoga session</option>
						   <option>Zumba session</option>
						  
						  </select> 
	</div>
	
	<div class="form-group">
    <div class="form-check form-check-inline">
  <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1">
  <label class="form-check-label" for="inlineRadio1">1</label>
</div>
<div class="form-check form-check-inline">
  <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2">
  <label class="form-check-label" for="inlineRadio2">2</label>
</div>
<div class="form-check form-check-inline">
  <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio3" value="option3" disabled>
  <label class="form-check-label" for="inlineRadio3">3 (disabled)</label>
</div>
  </div>
	<button type="submit" class="btn btn-primary">Reserve Now</button>
</form>

</div>
</body>
</html>

