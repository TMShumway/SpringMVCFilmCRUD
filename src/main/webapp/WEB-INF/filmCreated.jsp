<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link rel="stylesheet" href="CSS/style.css">
</head>
<body>
<c:choose>
<c:when test="${film.id > 0}">
<h2>Film Created!</h2>
<a href="home.do">Home</a>
</c:when>
<c:otherwise>
<h2>Film not Created!</h2>
<a href="home.do">Home</a>
</c:otherwise>
</c:choose>
<a href="home.do"></a>
</body>
</html>