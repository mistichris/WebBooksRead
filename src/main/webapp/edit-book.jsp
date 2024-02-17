<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Book Form</title>
</head>
<body>
	<h1>Edit Book Form</h1>
	<form action="EditBookServlet" method="post">
		Book Title: <input type="text" name="book" value="${bookToEdit.book}">
		Author: <input type="text" name="author" value="${bookToEdit.author}">
		<input type="hidden" name="id" value="${bookToEdit.id}"> 
		<input type="submit" value="Save Edited Book">
	</form>
		
	<br />
	<form action="AddBookServlet" method="post">
		<button type="submit">Add a Book</button>
	</form>
	<br />
	<button onclick="window.location.href='index.html'">Main Menu</button>
</body>
</html>