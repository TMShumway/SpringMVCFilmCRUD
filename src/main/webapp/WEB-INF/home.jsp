<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link rel="stylesheet" href="CSS/style.css">
<title>Insert title here</title>
</head>
<body>

	<h1>Film Site</h1>
<div class="box-card-container">
	<form action="filmDetails.do" method="get">
		<label for="searchByFilmId">Search by film ID:</label> 
		<input type="text" name="filmId">
		<input type="submit" value="Submit">
	</form><br>
	<form action="filmDetails.do" method="get">
		<label for="searchByKeyword">Search by Keyword:</label> 
		<input type="text" name="searchByKeyword">
		<input type="submit" value="Submit">
	</form><br>
	<form action="createFilmForm.do">
	<input type="submit" value="Create Film">
	</form>
</div>

</body>
</html>