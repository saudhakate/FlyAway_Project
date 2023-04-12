<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Passenger Details</title>
<link rel="stylesheet" href="style.css" >
</head>

<body>
	
	<h2>Passenger Details</h2>
	
	<form action="Passengerfun.jsp" method="post">
	
	
	<label>Passenger name</label>
	<input type="text" name="pname" >
	
	<br>
	<label>Gender</label>
	<input type="radio" name="gender" value="Male" >Male
	<input type="radio" name="gender" value="Female" >Female
	
		<br>
		<label>Location</label>
	<input type="text" name="Location" >
	
	
			<br>
		<label>Phone No</label>
	<input type="text" name="Phone" >
	
				<br>
		<label>Date of Travel</label>
	<input type="date" name="traveld" >
	
					<br>
		<label>No of Persons</label>
	<input type="text" name="nofp" >
	
		<br>
		<label>Email</label>
	<input type="text" name="Email" >
	

	
		<br>
		<label>Password</label>
	<input type="text" name="pwd" >
	
	<input type="submit" value="Submit" >
	
	
	</form>



</body>
</html>