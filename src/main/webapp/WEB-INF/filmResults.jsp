<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link rel="stylesheet" href="CSS/style.css">
<title>Search Results</title>
</head>
<body>
	<c:choose>
		<c:when test="${not empty films[0].id}">
		
		
    <div class="col-md-4">
    </div>
		
		<div class="row table-css col-md-4">
			<table>
				<tr>
					<th>ID</th>
					<th>Title</th>
					<th>Description</th>
					<th>Actors</th>
					<th>Special Features</th>
					<th>Category</th>
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
						<td>${s.filmCategory}</td>
						<td>
							<form action="deleteFilmDetails.do" method="post">
							<input type="submit" value="Delete">
							<input type="hidden" name="id" value="${s.id}">
							</form><br>
							<form action="edit.do" method="post">
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
			</div>
		</c:when>
		<c:otherwise>
			<div class="row vertical-center-element">
    <div class="">
    </div>
    <div>
    <div class="tab text-center">
	<h2>Film not found!</h2>
	<form action="home.do" class="horizontal-center">
	<img alt="success" src="pictures/error.png"><br>
	<br>
			<input type="submit" value="Home">
			</form>
    </div>
    </div>
    <div class="">
    </div>
    </div>
		</c:otherwise>
	</c:choose>
	
	<div class=col-md-4>
	</div>




</body>
</html>