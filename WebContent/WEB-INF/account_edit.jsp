<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h2>Edit account</h2>
	<form action="Edit">
		${message}
		<table>
			<tr>
				<td><label path="email">Email Address</label></td>
				<td><input type="email" name="email" required="required" value="${user.emailAddress}"></td>
			</tr>
			<tr>
				<td><label path="username">User name</label></td>
				<td><input type="text" name="username" required="required" value="${user.username}"></td>
			</tr>
			<tr>
				<td><label path="password">Password</label></td>
				<td><input type="password" name="password" required="required"></td>
			</tr>
		</table>

		<input type="submit" value="Update" formmethod="post">
	</form>
	<a href="${pageContext.request.contextPath}/Home">Home</a>
	<a href="${pageContext.request.contextPath}/User">Account</a>
</body>
</html>