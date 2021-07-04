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
	<form action="createFilm.do" method="post">
		<label for="filmTitle">Film Title: </label>
		<input type="text" name="title"><br>
		<label for="filmDescription">Description: </label>
		<input type="text" name="description"><br>
		<label for="filmLanguage">Language</label>
		<select name="languageId">
			<option value=1>English</option>
			<option value=2>Italian</option>
			<option value=3>Japanese</option>
			<option value=4>Mandarin</option>
			<option value=5>French</option>
			<option value=6>German</option>
		</select><br>
		<input type="submit" value="Submit">
	</form>
</body>
</html>