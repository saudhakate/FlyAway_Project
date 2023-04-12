<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Card Details</title>
<link rel="stylesheet" href="style.css" >
</head>
<body>

<h3 style="text-align:center;">Enter Payment Details</h3>

<form action="FinalPage.jsp" method="post">

		<label>Card Holder Name</label>
	<input type="text" Placeholder="Holder Name">
	
	<br>
	<label>Card Number</label>
	<input type="text" Placeholder="Card Number">
	
		<br>
		<label>Card Number</label>
	<input type="number" min="1" max="12" >/
	<input type="number" min="1" max="31" >
	

		<br>
	
	<input type="submit">







</form>

</body>
</html>