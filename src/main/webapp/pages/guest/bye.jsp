<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>BLUEWATER</title>
<link href='https://fonts.googleapis.com/css?family=Alegreya Sans SC'
	rel='stylesheet'>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/main.css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>

<body class="background">
	<div class=" welcome-logo ">
		<img src="${pageContext.request.contextPath}/image/bluewaterlogo.png"
			class="img-fluid" alt="Responsive image">
	</div>


	<div class="bye">

		<h3 class="display-4  d-flex justify-content-center h3-menu">Thank
			you for staying</h3>
		<h3 class="display-4  d-flex justify-content-center h3-menu">with
			us ${guest.guestFirstname}!</h3>
		<h1 class="font-weight-normal d-flex justify-content-center h1-menu">OUR
			HOME IS YOURS</h1>


	</div>
	<div class="fixed-bottom">
		<a href="http://localhost:8081/guest/${guest.id}/menu"><i
			class=" material-icons">home</i></a>
	</div>

</body>
</html>