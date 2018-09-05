<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Marketplace Login</title>
</head>
<body>
	<h2>Marketplace Login</h2>
	<form action="LoginSubmit">
		${message}
		<table>
			<tr>
				<td><label path="username">User name</label></td>
				<td><input type="text" name="username" required="required"></td>
			</tr>
			<tr>
				<td><label path="password">Password</label></td>
				<td><input type="password" name="password" required="required"></td>
			</tr>
		</table>
		<input type="submit" value="login" formmethod="post">
	</form>
	<a href="Home">Home</a>
</body>
</html>
