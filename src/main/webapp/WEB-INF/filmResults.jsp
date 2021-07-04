<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link rel="stylesheet" href="CSS/style.css">
<title>Insert title here</title>
</head>
<body>
	<c:choose>
		<c:when test="${not empty films[0].id}">
			<table>
				<tr>
					<th>ID</th>
					<th>Title</th>
					<th>Description</th>
					<th>Actors</th>
					<th>Special Features</th>
					<th>Edit or Delete</th>
				</tr>
				<c:forEach var="s" items="${films}">
					<tr>
						<td>${s.id}</td>
						<td>${s.title}</td>
						<td style="word-wrap: break-word" width=200px;>${s.description}</td>
						<td>
						<c:forEach var="actor" items="${s.actorList}">
						${actor.firstName} &nbsp ${actor.lastName}<br>
						</c:forEach>
						</td>
						<td>${s.specialFeatures}</td>
						<td>
							<form action="delete.do">
							<input type="submit" value="Delete">
							<input type="hidden" name="id" value="${s.id}">
							</form><br>
							<form action="edit.do">
							<input type="submit" value="Edit">
							<input type="hidden" name="id" value="${s.id}">
							</form><br>
						</td>
						
					</tr>
				</c:forEach>
			</table>
			<form action="home.do" class="horizontal-center">
			<input type="submit" value="Home">
			</form>
			<!-- <a href="home.do">Home</a> -->
		</c:when>
		<c:otherwise>
			<h3>Film not found</h3>
			<a href="home.do">Home</a>
		</c:otherwise>
	</c:choose>
</body>
</html>