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
<form action="editFilmDetails.do">
<label for="filmTitle">Film Title: </label>
<input type="text" name="title"><br>
<label for="filmDescription">Film Description: </label>
<input type="text" name="description"><br>
<label for="filmYear">Film Year: </label>
<input type="text" name="year"><br>
<label for="languageId">Language ID: </label>
<select name="languageId">
			<option value=1>English</option>
			<option value=2>Italian</option>
			<option value=3>Japanese</option>
			<option value=4>Mandarin</option>
			<option value=5>French</option>
			<option value=6>German</option>
</select><br>
<label for="filmRentalDuration">Rental Duration: </label>
<input type="text" name="rental_duration"><br>
<label for="filmRentalRate">Rental Rate: </label>
<input type="text" name="rentalRate"><br>
<label for="filmLength">Film Length: </label>
<input type="text" name="length"><br>
<label for="filmReplacementCost">Film Replacement Cost: </label>
<input type="text" name="replacementCost"><br>
<label for="filmRating">Film Rating: </label>
<select name="rating">
			<option value="G">G</option>
			<option value="PG">PG</option>
			<option value="PG13">PG13</option>
			<option value="R">R</option>
			<option value="NC17">NC17</option>
		</select>
<label for="filmSpecialFeatures">Film Special Features: </label>
<select name="specialFeatures">
			<option value="Trailers">Trailers</option>
			<option value="Commentaries">Commentaries</option>
			<option value="Deleted Scenes">Deleted Scenes</option>
			<option value="Behind the Scenes">Behind the Scenes</option>
		</select>
</form>
</body>
</html>