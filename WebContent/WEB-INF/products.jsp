<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Your Products</title>
</head>
<body>
	<h3>All Products</h3>
	<a href="${pageContext.request.contextPath}/User/Products/Add">Add Product</a>
	<table>
		<tr>
			<th>Item</th>
			<th>Category</th>
			<th>Quantity</th>
			<th>Available</th>
			<th>Price</th>
			<th>Actions</th>
		</tr>

		<c:forEach items="${itemList}" var="item">
			<tr>
				<td><c:out value="${item.name}" /></td>
				<td><c:out value="${item.category.name}"/></td>
				<td><c:out value="${item.quantity}" /></td>
				<td><c:out value="${item.quantityAvailable}"/></td>
				<td>�<c:out value="${item.price}" /></td>
				<td><a href="${pageContext.request.contextPath}/User/Product/Edit/${item.id}">Edit</a> <a href="${pageContext.request.contextPath}/User/Product/*/Delete">Delete</a></td>
			</tr>
		</c:forEach>
		
	</table>
</body>
</html>