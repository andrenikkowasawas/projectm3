<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>BLUEWATER</title>
<link href='https://fonts.googleapis.com/css?family=Alegreya Sans SC'
	rel='stylesheet'>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/main.css" />
<link rel="stylesheet"
	href="https://unpkg.com/@coreui/coreui@3.0.0-beta.4/dist/css/coreui.min.css">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.15.0/umd/popper.min.js"
	integrity="sha384-L2pyEeut/H3mtgCBaUNw7KWzp5n9&#43;4pDQiExs933/5QfaTh8YStYFFkOzSoXjlTb"
	crossorigin="anonymous"></script>
<script
	src="https://unpkg.com/@coreui/coreui@3.0.0-beta.4/dist/js/coreui.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>

<body class="background">
	<div class=" welcome-logo ">
		<img src="${pageContext.request.contextPath}/image/bluewaterlogo.png"
			class="img-fluid" alt="Responsive image">
	</div>

	<div class="d-flex flex-row bd-highlight mb-3 title">
		<div class="p-2 bd-highlight">
			<a href="http://localhost:8081/guest/${guestId}/adventures"><i
				class=" material-icons">chevron_left</i></a>
		</div>
		<div class="p-2 bd-highlight">Adventures / Leisure Activities</div>
	</div>

	<div class="container">
		<div class="scrollbar" id="style-1">
			<div class=" adventures overflow-auto ">

				<div class="polaroid activities-items">
					<div style="margin-left: 160px; padding: 20px;">
						<h3 class="h3-activities-color">Daily Fish Feeding at the
							Marine Wildlife Lagoon</h3>
					</div>
				</div>
				<img class=" polaroid activities-img"
					src="${pageContext.request.contextPath}/image/activities1.jpg"
					alt="activities">

				<div class="polaroid activities-items">

					<div style="margin-left: 100px; padding: 20px;">
						<h3 class="h3-activities-color">Life-sized Chess Board</h3>
					</div>
				</div>
				<img class=" polaroid activities-img"
					src="${pageContext.request.contextPath}/image/activities2.jpeg"
					alt="activities"
					style="float: right; margin-left: 200px;">


				<div class="polaroid activities-items">

					<div style="margin-left: 160px; padding: 20px;">
						<h3 class="h3-activities-color">Kiddie Playroom at Dolpo Kids
							Club</h3>
					</div>
				</div>
				<img class=" polaroid activities-img"
					src="${pageContext.request.contextPath}/image/activities3.jpg"
					alt="activities">


				<div class="polaroid activities-items">

					<div style="margin-left: 100px; padding: 20px;">
						<h2 class="h3-activities-color">Beach Volleyball</h2>
					</div>
				</div>
				<img class=" polaroid activities-img"
					src="${pageContext.request.contextPath}/image/activities4.jpg"
					alt="activities"
					style="float: right; margin-left: 200px;">

				<div class="polaroid activities-items">

					<div style="margin-left: 200px; padding: 20px;">
						<h2 class="h3-activities-color">Billiards</h2>
					</div>
				</div>
				<img class=" polaroid activities-img"
					src="${pageContext.request.contextPath}/image/activities5.jpg"
					alt="activities">



			</div>
		</div>
	</div>
</body>
</html>