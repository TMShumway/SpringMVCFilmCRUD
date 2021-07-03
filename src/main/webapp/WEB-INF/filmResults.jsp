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
	<table>
		<tr>
			<th>ID</th>
			<th>Title</th>
			<th>Description</th>
			
		</tr>

		<c:forEach var="s" items="${films}">
			<tr>
				<td>${s.id}</td>
				<td>${s.title}</td>
				<td style="word-wrap: break-word">${s.description}</td>
			</tr>
		</c:forEach>
	</table>

	${film.id}
</body>
</html>