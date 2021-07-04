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
<c:if test="${deletedFlag}">
<c:choose>
<c:when test="${wasFilmDeleted = true}"><h2>Film Successfully Deleted!</h2></c:when>
<c:when test="${!wasFilmDeleted}"><h2>Problem with deleting Film!</h2></c:when>
</c:choose>
</c:if>
<c:if test="${createdFlag}">
<c:choose>
<c:when test="${wasFilmCreated = true}"><h2>Film Successfully Created!</h2></c:when>
<c:when test="${!wasFilmCreated}"><h2>Problem with creating Film!</h2></c:when>
</c:choose>
</c:if>
<c:if test="${editedFlag}">
<c:choose>
<c:when test="${wasFilmEdited = true}"><h2>Film Successfully Edited!</h2></c:when>
<c:when test="${!wasFilmEdited}"><h2>Problem with editing Film!</h2></c:when>
</c:choose>
</c:if>


</body>
</html>