<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>Film Site</h1>

	<form action="filmDetails.do" method="get">
		<label for="searchByFilmId">Search by film ID:</label> 
		<input type="text" name="filmId">
		<input type="submit" value="Submit">
	</form>
	<form action="filmDetails.do" method="get">
		<label for="searchByKeyword">Search by Keyword:</label> 
		<input type="text" name="searchByKeyword">
		<input type="submit" value="Submit">
	</form>
	<a href="WEB-INF/createFilm.jsp">Create Film</a>

</body>
</html>