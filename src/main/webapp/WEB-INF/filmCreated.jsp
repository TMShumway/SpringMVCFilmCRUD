<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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