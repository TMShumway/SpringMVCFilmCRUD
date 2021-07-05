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
<c:if test="${deletedFlag}">
<c:choose>
<c:when test="${wasFilmDeleted = true}">
<div class="row vertical-center-element">
    <div class="">
    </div>
    <div>
    	<div class="tab text-center">
			<h2>Film Successfully Deleted!</h2>
			<img alt="success" src="pictures/success.png">
			<form action="home.do" class="horizontal-center">
			<input type="submit" value="Home">
			</form>
    	</div>
    </div>
    <div class="">
    </div>
</div>
</c:when>

<c:when test="${!wasFilmDeleted}">
<div class="row vertical-center-element">
    <div class="">
    </div>
    <div>
    	<div class="tab text-center">
			<h2>Could not delete!</h2>
			<img alt="success" src="pictures/error.png">
			<form action="home.do" class="horizontal-center">
			<input type="submit" value="Home">
			</form>
    	</div>
    </div>
    <div class="">
    </div>
</div>
</c:when>

</c:choose>
</c:if>

<c:if test="${createdFlag}">
<c:choose>
<c:when test="${wasFilmCreated = true}">
<div class="row vertical-center-element">
    <div class="">
    </div>
    <div>
    	<div class="tab text-center">
			<h2>Film Successfully Created!</h2>
			<img alt="success" src="pictures/success.png">
			<form action="home.do" class="horizontal-center">
			<input type="submit" value="Home">
			</form>
    	</div>
    </div>
    <div class="">
    </div>
</div>
</c:when>

<c:when test="${!wasFilmCreated}">
<div class="row vertical-center-element">
    <div class="">
    </div>
    <div>
    	<div class="tab text-center">
			<h2>Could not create!</h2>
			<img alt="success" src="pictures/error.png">
			<form action="home.do" class="horizontal-center">
			<input type="submit" value="Home">
			</form>
    	</div>
    </div>
    <div class="">
    </div>
</div>
</c:when>

</c:choose>
</c:if>

<c:if test="${editedFlag}">
<c:choose>
<c:when test="${wasFilmEdited = true}">
<div class="row vertical-center-element">
    <div class="">
    </div>
    <div>
    	<div class="tab text-center">
			<h2>Film Successfully Edited!</h2>
			<img alt="success" src="pictures/success.png">
			<form action="home.do" class="horizontal-center">
			<input type="submit" value="Home">
			</form>
    	</div>
    </div>
    <div class="">
    </div>
</div>
</c:when>
<c:when test="${!wasFilmEdited}">
<div class="row vertical-center-element">
    <div class="">
    </div>
    <div>
    	<div class="tab text-center">
			<h2>Could not edit!</h2>
			<img alt="success" src="pictures/error.png">
			<form action="home.do" class="horizontal-center">
			<input type="submit" value="Home">
			</form>
    	</div>
    </div>
    <div class="">
    </div>
</div>
</c:when>
</c:choose>
</c:if>
<br>	
</body>
</html>







<!-- <div class="row vertical-center-element">
    <div class="">
    </div>
    <div>
    <div class="tab text-center">
    
    </div>
    </div>
    <div class="">
    </div>
    </div> -->
    