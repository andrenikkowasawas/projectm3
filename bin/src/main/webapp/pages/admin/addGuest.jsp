<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Room</title>
</head>
<body
>
<h1>Add room</h1>
	Room Number:${room.id}<br><br><br>
<form action="http://localhost:8081/admin/room/${room.id}/guest/view" method="post">

					
	<table>
		<tr>
			<td>FirstName:</td>
			<td><input type="text" name="guestFirstname"></td>
		</tr>
		<tr>
			<td>LastName:</td>
			<td><input type="text" name="guestLastname"></td>
		</tr>
		<tr>
			<td>Age:</td>
			<td><input type="text" name="guestAge"></td>
		</tr>
		<tr>
			<td>Gender:</td>
			<td><input type="text" name="guestGender"></td>
		</tr>
		<tr>
			<td>Nationality:</td>
			<td><input type="text" name="guestNationality"></td>
		</tr>
		<tr>
			<td>Phone Number:</td>
			<td><input type="text" name="guestPhoneNum"></td>
		</tr>
		<tr>
			<td>Email Address:</td>
			<td><input type="text" name="guestEmailAddress"></td>
		</tr>
	
	</table>


	<button type="submit">Submit</button>
</form>
</body>
</html>