<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Customer Login</title>
<link rel="stylesheet" href="style.css" >
</head>
<body >

<form action="CustomerLogin" method="post">

<h1>Customer Login</h1>

<label>Email</label>
<input type="text" name="email" placeholder="Email">
<br>
<label>Password</label>

<input type="text" name="password" placeholder="Password">

<input type="submit"  value="Login">

</form>

<%
	String msg = request.getParameter("msg");
	if("notexist".equals(msg))
	{
		%>
		<h1>Password Invalid/User Not Exist</h1>
<%}%>




</body>
</html>