<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h2>Create new account</h2>
	<form action="NewAccount">
		${message}
		<table>
			<tr>
				<td><label path="email">Email Address</label></td>
				<td><input type="email" name="email" required="required"></td>
			</tr>
			<tr>
				<td><label path="username">User name</label></td>
				<td><input type="text" name="username" required="required"></td>
			</tr>
			<tr>
				<td><label path="password">Password</label></td>
				<td><input type="password" name="password" required="required"></td>
			</tr>
		</table>

		<input type="submit" value="Create" formmethod="post">
	</form>
	<a href="Home">Home</a>
</body>
</html>