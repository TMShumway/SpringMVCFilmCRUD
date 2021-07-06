<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link rel="stylesheet" href="CSS/style.css">
<title>Film Database Home</title>
</head>
<body>	
<audio autoplay loop>


  <source src="music/background-music.mp3" type="audio/mpeg">


</audio>
	<div class="row vertical-center-element">
    <div class="">
    </div>
    <div>
    <div class="tab text-center">
	<form action="filmDetails.do" method="get">
		<label for="searchByFilmId"></label> 
		<input type="text" name="filmId" placeholder="Search by ID">
		<input type="submit" value="Submit">
	</form><br>
	<form action="filmDetails.do" method="get">
		<label for="searchByKeyword"></label> 
		<input type="text" name="searchByKeyword" placeholder="Search by Keyword">
		<input type="submit" value="Submit">
	</form><br>
	<form action="createFilmForm.do">
	<input type="submit" value="Create Film">
	</form>
    </div>
    </div>
    <div class="">
    </div>
    </div>

</body>
</html>