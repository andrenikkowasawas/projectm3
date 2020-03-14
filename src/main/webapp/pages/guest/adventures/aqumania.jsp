<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>BLUEWATER</title>
<link href='https://fonts.googleapis.com/css?family=Alegreya Sans SC'
	rel='stylesheet'>
<link href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round"
	rel="stylesheet">

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
		<div class="p-2 bd-highlight">Adventures / Aquamania</div>
	</div>

	<div id="carouselExampleIndicators" class="carousel slide"
		data-ride="carousel" style="margin-top: -80px;">

		<div class="carousel-inner">

			<div class="carousel-item active">
				<div>
					<img class="d-block w-100"
						src="${pageContext.request.contextPath}/image/aquamania1.jpg"
						alt="First slide" style="width: 300px; height: 400px;">
				</div>
				<div class="carousel-caption d-none d-md-block carousel-item-div"
					id="ad">

					<p
						style="padding-left: 20px; padding-right: 20px; padding-bottom: 20px; font-family: 'Varela Round';">Rediscover
						the primitive comfort of being embraced in water. The innocence of
						floating on a velvety blanket of fresh or sea water knows no
						equal. Beach. 110 meters of clean white sand surrounded by golden
						coconut palms and thatch huts with beach beds. A beach volleyball
						court and life-sized chessboard offers an alternative to simply
						lounging under the sun.</p>
				</div>
			</div>


			<div class="carousel-item">
				<img class="d-block w-100"
					src="${pageContext.request.contextPath}/image/aquamania2.jpg"
					alt="Second slide" style="width: 300px; height: 400px;">
				<div class="carousel-caption d-none d-md-block" id="ad">
					<p
						style="padding-left: 20px; padding-right: 20px; padding-bottom: 20px; font-family: 'Varela Round';">Swimming
						Pools. Our three beach inspired, lagoon-shaped pools are set
						amongst lush tropical vegetation, murmuring brooks and cascading
						waterfalls.</p>
				</div>
			</div>



			<div class="carousel-item">
				<img class="d-block w-100"
					src="${pageContext.request.contextPath}/image/aquamania3.jpg"
					alt="Third slide" style="width: 300px; height: 400px;">
				<div class="carousel-caption d-none d-md-block" id="ad">

					<p
						style="padding-left: 20px; padding-right: 20px; padding-bottom: 20px; font-family: 'Varela Round';">Our
						complete aqua sports facility meets your requirements for a total
						tropical experience – from jet-skiing, scuba-diving, snorkeling
						and island-hopping.</p>
				</div>
			</div>


		</div>
		<a class="carousel-control-prev" href="#carouselExampleIndicators"
			role="button" data-slide="prev"> <span
			class="carousel-control-prev-icon" aria-hidden="true"></span> <span
			class="sr-only">Previous</span>
		</a> <a class="carousel-control-next" href="#carouselExampleIndicators"
			role="button" data-slide="next"> <span
			class="carousel-control-next-icon" aria-hidden="true"></span> <span
			class="sr-only">Next</span>
		</a>
	</div>





</body>
</html>