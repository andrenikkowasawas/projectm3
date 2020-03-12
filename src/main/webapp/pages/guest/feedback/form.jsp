<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>BLUEWATER</title>
<link href='https://fonts.googleapis.com/css?family=Alegreya Sans SC' rel='stylesheet'>
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round" rel="stylesheet">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/main.css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<style>
label, input {
display:block;
}
ul{
padding:0;
margin:0;
}

ul li{
list-style-type:none;
display:inline-block;
margin: 10px;
color:white;
text-shadow: 2px 2px 7px grey;
font-size: 25px !important;
}


ul li:hover{
color:yellow;
}

ul li.active, ul li.secondary-active{
color: yellow;
}

input[type="radio"]{
display:none;
}

h5{
font-family: 'Varela Round', sans-serif;
color: white;
margin-top: 20px;
}
text-area{
width: 300px;
}

h2{
font-family: 'Alegreya Sans SC', sans-serif;
color:white;

}

</style>

<body class="background" >
<div class=" welcome-logo ">
<img src="${pageContext.request.contextPath}/image/bluewaterlogo.png" class="img-fluid" alt="Responsive image">
</div>




<div class="feedback-form polaroid">
<form action="http://localhost:8081/guest/${guestId }/feedback" method="post">
<div class="form-group">
<h2>Your feedback helps us serve your better	</h2>

<h5>How was your BLUEWATER RESORT experience?</h5>
	<ul>
	
		<li><label for="rating_1"><i class="material-icons">star</i></label><input type="radio" name="rating" id="rating_1" value="very poor"/> </li>
		<li><label for="rating_2"><i class="material-icons">star</i></label><input type="radio" name="rating" id="rating_2" value="poor"/> </li>
		<li><label for="rating_3"><i class="material-icons">star</i></label><input type="radio" name="rating" id="rating_3" value="average"/> </li>
		<li><label for="rating_4"><i class="material-icons">star</i></label><input type="radio" name="rating" id="rating_4" value="good"/> </li>
		<li><label for="rating_5"><i class="material-icons">star</i></label><input type="radio" name="rating" id="rating_5" value="excellent"/> </li>
	
	</ul>

</div>


 <div class="form-group">
    <label for="comment"><h5>Comments/Suggestions</h5></label>
    <textarea class="form-control" name="comment"></textarea>
  </div>
<div class="form-group">
					<button class="btn btn-primary" type="submit" style="float:right">SUBMIT</button>
										<a href="http://localhost:8081/guest/${guestId}/menu" class="btn btn-primary" type="button">BACK</a>
					
</div>
</form>
</div>

<script>
$('li').on('click', function(){
	$('li').removeClass('active');
	$('li').removeClass('secondary-active');
	$(this).addClass('active');
	$(this).prevAll().addClass('secondary-active');
})


</script>
</body>
</html>