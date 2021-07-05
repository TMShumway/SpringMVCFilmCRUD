<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link rel="stylesheet" href="CSS/style.css">
<title>Create Film</title>
</head>
<body>
<div class="row vertical-center-element">
    <div class="">
    </div>
    <div>
    <div class="row table-css">
	<h4>Create Film</h4>
	<form action="createFilm.do" method="post">
		<label id="label-stack" for="filmTitle">Film Title: </label>
		<input type="text" name="title"><br>
		<label id="label-stack" for="filmDescription">Description: </label>
		<input type="text" name="description"><br>
		<label id="label-stack" for="filmYear">Year: </label>
		<input type="text" value="1990" name="year"><br>
		<label id="label-stack" for="filmLanguage">Language</label>
		<select id="label-stack" name="languageId">
			<option value=1>English</option>
			<option value=2>Italian</option>
			<option value=3>Japanese</option>
			<option value=4>Mandarin</option>
			<option value=5>French</option>
			<option value=6>German</option>
		</select><br>
		<label for="filmRentalDuration">Rental Duration: </label>
		<input type="number" value="3" min="3" name="rental_duration"><br>
		<label for="filmRentalRate">Rental Rate: </label>
		<input type="number" value="4.99" min="0.01" max="1000.00" step="0.01" name="rentalRate"><br>
		<label for="filmLength">Film Length: </label>
		<input type="text" value="120" name="length"><br>
		<label for="filmReplacementCost">Film Replacement Cost: </label>
		<input type="number" value="19.99" min="0.01" max="1000.00" step="0.01" name="replacementCost"><br>
		<label for="filmRating">Film Rating: </label>
		<select name="rating">
			<option value="G">G</option>
			<option value="PG">PG</option>
			<option value="PG13">PG13</option>
			<option value="R">R</option>
			<option value="NC17">NC17</option>
		</select><br>
		<input type="submit" value="Submit">
	</form>
</div>
    </div>
    <div class="">
    </div>
    </div>
</body>
</html>