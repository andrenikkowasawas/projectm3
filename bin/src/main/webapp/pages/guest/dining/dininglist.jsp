<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>dining list</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/main.css"/>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>


</head>
<body>

<div class=" welcome-logo ">
<img src="${pageContext.request.contextPath}/image/bluewaterlogo.png" class="img-fluid" alt="Responsive image">
</div>

  <h2>RESTAURANTS</h2>
  
  <div class="d-flex flex-wrap">
        		<c:forEach items="${diningList}" var="dining">
  
<div class="card card-accent-primary mb-3" style="max-width: 30rem;  margin: 20px;">
  <div class="card-body">
    <h3 class="card-title">${dining.diningName}</h3>
    <p class="card-text">${dining.diningDescription}</p>
    
  <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Open Modal</button>
  </div>
</div>
              		</c:forEach>
  
</div>

<!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
            		<c:forEach items="${diningList}" var="dining">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">${dining.diningName}</h4>
        </div>
        <div class="modal-body">
          <p>Some text in the modal.</p>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
                    		</c:forEach>
      
    </div>
  </div>
  
  
</div>

<!--  

<table>
  
<th>RESTAURANTS</th>
<tbody>
		<c:forEach items="${diningList}" var="dining">
		<tr>		  	
			
			<td>${dining.diningName}</td>
						<td><button><a href="http://localhost:8081/guest/diningList/${dining.id}/${guestId}">RESERVE NOW</a></button></td>
			
		</tr>
		</c:forEach>
  </tbody>
  </table>-->
  <!--  
  <div class="row">  		<c:forEach items="${diningList}" var="dining">
  
            <div class="d-flex flex-wrap">
  <div class="card" style="width: 18rem; display:inline-block;">
  <div class="card-body">
    <h5 class="card-title">${dining.diningName}</h5>
    <p class="card-text">${dining.diningDescription}</p>
    <a href="#" class="card-link">Card link</a>
  </div>
</div>
</div>
		</c:forEach>

</div>
-->
  <!--  
  <hr>
  <table>
  <th>THEMED DINERS</th>
<tbody>
		<c:forEach items="${themedDinerList}" var="td">
		<tr>		  	
			
			<td><small>${td.themedDinerName}</small></td>
				<td><small>${td.themedDinerAvailability}</small></td>
				<td><small>${td.description}</small></td>
				<td><small>${td.rate}</small></td>
			
			
		</tr>
		</c:forEach>
  </tbody>
  </table>
  <hr>
  <table>
  <th>IN ROOM DINING MENU</th>
<tbody>
		<c:forEach items="${inroomdiningmenulist}" var="menu">
		<tr>		  	
			
			<td><small>${menu.menuName}</small></td>
							<td><small>${menu.menuDescription}</small></td>
			
				<td><small>PHP ${menu.menuPrice}</small></td>
			
			
		</tr>
		</c:forEach>
  </tbody>
  </table>
  -->
  <div class="fixed-bottom" style="border: 1px solid blue;">
  
  <button  class="btn btn-primary"><a href="http://localhost:8081/guest/${guestId}/menu">BACK</a></button>
    <button  class="btn btn-primary" style="float:right;"><a href="http://localhost:8081/guest/${guestId}/menu">MENU</a></button>
  
  </div>
</body>
</html>