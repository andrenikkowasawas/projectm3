<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>BLUEWATER</title>
<link href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round"
	rel="stylesheet">
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
			<a href="http://localhost:8081/guest/${guestId}/menu"><i
				class=" material-icons">chevron_left</i></a>
		</div>
		<div class="p-2 bd-highlight">Dining</div>
	</div>

	<div class="d-flex justify-content-around boxboard">

		<button class="dining-dash-btn " data-toggle="modal"
			data-target="#myModal" id="menu-a">
			<img class="menu-img polaroid"
				src="${pageContext.request.contextPath}/image/restaurant.png"
				alt="First slide">
			<p class="display-5 dining-p">Restaurants</p>
		</button>
		<button type="button" class="dining-dash-btn " data-toggle="modal"
			data-target="#myModal2" id="menu-a">
			<img class="menu-img polaroid"
				src="${pageContext.request.contextPath}/image/diner.png"
				alt="Third slide">

			<p class="display-5 dining-p">Themed Diners</p>
		</button>


		<button type="button" class="dining-dash-btn " data-toggle="modal"
			id="menu-a"
			onclick="window.location.href = 'http://localhost:8081/guest/in-room-menu-list/${id}';">
			<img class="menu-img polaroid"
				src="${pageContext.request.contextPath}/image/inroom.png"
				alt="Second slide">
			<p class="display-5 dining-p">In-Room Menu</p>
		</button>

	</div>













	<!-- The Modal -->
	<div class="modal" id="myModal">
		<div class="modal-dialog modal-lg">
			<c:forEach items="${diningList}" var="dining">
				<div class="row">
					<div class="col">
						<div class="modal-content" style="margin-bottom: 20px">


							<!-- Modal body -->
							<div class="d-flex bd-highlight">
								<div class="p-2 flex-fill bd-highlight">
									<p class="modalbody-ff">
									<div class="d-flex flex-column bd-highlight mb-3">
										<div class="p-2 flex-fill bd-highlight">
											<img
												src="${pageContext.request.contextPath}/uploads/${dining.imgFilePath}"
												style="height: 100px; width: 200px; float: right;">
										</div>

										<div class="p-2 bd-highlight">
											<a class="btn btn-primary modal-reserve-btn"
												href="http://localhost:8081/guest/diningList/${dining.id}/${guestId}">Reserve
												Now</a>

										</div>

									</div>
								</div>
								<div class="p-2 bd-highlight p-dining-description">
									<p>${dining.diningDescription}</p>
								</div>

							</div>



							<!-- Modal footer -->
							<div class="modal-footer">
								<button type="button" class="btn btn-danger"
									data-dismiss="modal">Close</button>
							</div>

						</div>
					</div>
				</div>
			</c:forEach>

		</div>
	</div>



	<!-- The Modal -->
	<div class="modal" id="myModal2">
		<div class="modal-dialog">
			<c:forEach items="${themedDinerList}" var="td">
				<div class="row">
					<div class="col">
						<div class="modal-content" style="margin-bottom: 20px">

							<!-- Modal Header -->
							<div class="modal-header">
								<h4 class="modal-title">${td.themedDinerName}</h4>
								<button type="button" class="close" data-dismiss="modal">&times;</button>
							</div>

							<!-- Modal body -->
							<div class="d-flex bd-highlight">
								<div class="p-2 flex-fill bd-highlight">
									<div class="modal-body ">
										<img
											src="${pageContext.request.contextPath}/uploads/${td.imgFilePath}"
											style="height: 220px; width: 200px;">
										<button type="button" class="btn btn-primary"
											style="margin-top: 10px;">
											<a
												style="text-decoration: none; color: blue; font-size: 32px;"
												href="http://localhost:8081/guest/themedDiners/${td.id}/${guestId}">Reserve
												Now</a>
										</button>



									</div>
								</div>
								<div class="p-2 flex-fill bd-highlight">
									<div class="modal-body " style="font-size: 15px;">
										<p>${td.description}</p>
										<p>${td.themedDinerAvailability}</p>
										<p>${td.rate}</p>
									</div>
								</div>
							</div>


							<!-- Modal footer -->
							<div class="modal-footer">
								<button type="button" class="btn btn-danger"
									data-dismiss="modal">Close</button>
							</div>

						</div>
					</div>
				</div>
			</c:forEach>

		</div>
	</div>



	<!-- The Modal -->
	<div class="modal" id="myModal3">
		<div class="modal-dialog">
			<c:forEach items="${inroomdiningmenulist}" var="ir">
				<div class="row">
					<div class="col">
						<div class="modal-content" style="margin-bottom: 20px">

							<!-- Modal Header -->
							<div class="modal-header">
								<h4 class="modal-title">${ir.menuName}</h4>
								<button type="button" class="close" data-dismiss="modal">&times;</button>
							</div>

							<!-- Modal body -->
							<div class="d-flex bd-highlight">
								<div class="p-2 flex-fill bd-highlight">
									<div class="modal-body">
										<p>${ir.menuDescription}</p>

										<p>${ir.menuPrice}</p>

										<button type="button" class="btn btn-primary">
											<a
												style="text-decoration: none; color: blue; font-size: 20px;"
												href="#">Order Now</a>
										</button>
									</div>

								</div>
								<div class="p-2 flex-fill bd-highlight">
									<img src=${ir.imgFilePath
										} style="height: 200px; width: 150px; float: right;">
								</div>

							</div>



							<!-- Modal footer -->
							<div class="modal-footer">
								<button type="button" class="btn btn-danger"
									data-dismiss="modal">Close</button>
							</div>

						</div>
					</div>
				</div>
			</c:forEach>

		</div>
	</div>





</body>
</html>