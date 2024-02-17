<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Book List and Select for Edit/Delete</title>
</head>
<body>
	<h1>Books Read Database List</h1>
	<form method="post" action="NavigationServlet">
		<table>
			<c:forEach items="${requestScope.allBooks}" var="currentbook">
				<tr>
					<td><input type="radio" name="id" value="${currentbook.id}"></td>
					<td>${currentbook.book}</td>
					<td>${currentbook.author}</td>
				</tr>
			</c:forEach>
		</table>
		<br /> 
		<input type="submit" value="Edit" name="doThisToBook">
		<input type="submit" value="Delete" name="doThisToBook">
		
	</form>
	<br />
	<form action="AddBookServlet" method="post">
		<button type="submit">Add a Book</button>
	</form>
	<br />
	<button onclick="window.location.href='index.html'">Main Menu</button>
</body>
</html>