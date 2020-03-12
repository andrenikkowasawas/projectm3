<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>dining list</title>
<link href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round" rel="stylesheet">
<link href='https://fonts.googleapis.com/css?family=Alegreya Sans SC' rel='stylesheet'>


<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/main.css"/>
 <link rel="stylesheet" href="https://unpkg.com/@coreui/coreui@3.0.0-beta.4/dist/css/coreui.min.css">
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.15.0/umd/popper.min.js" integrity="sha384-L2pyEeut/H3mtgCBaUNw7KWzp5n9&#43;4pDQiExs933/5QfaTh8YStYFFkOzSoXjlTb" crossorigin="anonymous"></script>
<script src="https://unpkg.com/@coreui/coreui@3.0.0-beta.4/dist/js/coreui.min.js"></script>
<style>
	.mbox{
		border:none;
		outline:none;
		padding:5px;
		border-radius:5px;
		box-shadow:0 2px 5px rgba(0,0,0,.5);
		background:#ffffff;
		margin:10px;
		
		
	
	}
  	
  	.background1{
  	
  		background-image: linear-gradient(rgba(0, 0, 0, 0.8), rgba(0, 0, 0, 0.8)),
      url("${pageContext.request.contextPath}/uploads/bg4.jpg");
  	}
	.box{
		outline:none;
		border:none;
	
	}
	
	input{
		border:none;
		outline:none;
		padding:5px;
		border-radius:5px;
		box-shadow:0 2px 5px rgba(0,0,0,.5);
	}
	
	input:hover{
		background:#bfbfbf;
		color:#ffffff;
	}
	
	.orderBtn{
		border:none;
		outline:none;
		padding:5px;
		border-radius:5px;
		box-shadow:0 2px 5px rgba(0,0,0,.5);
		
		background:#3e5d82;
		color:#ffffff;
	}
</style>
</head>
<body class="background1" >
<div class=" welcome-logo ">
<img src="${pageContext.request.contextPath}/image/bluewaterlogo.png" class="img-fluid" alt="Responsive image">
</div>


<div style="margin-left:4%;">
    <div class="d-flex flex-wrap" style="">
       <c:forEach items="${inroomdiningmenulist}" var="ir">
       	<div class="mbox">
       			
       		Menu Name:${ir.menuName}<br>
       		${ir.menuDescription}<br><br>
       		Price:${ir.menuPrice}
       		<img src="${pageContext.request.contextPath}/uploads/${ir.imgFilePath}" style="height:100px; width:150px;"/>	
       		<form
			action="http://localhost:8081/guest/inRoomMenu/${ir.id}/${ir.menuName}/${guestId}"
			method="post">          
                    <div class="box">
                    	<input type="number" name="Orders" value="1">
                    </div>  
                    <br><br>
              <button type="submit" class="orderBtn">Order Now</button>       
        </form> 
       	</div>
       
       
       </c:forEach>
 	</div>
</div>
  
  
  
  
</body>
</html>