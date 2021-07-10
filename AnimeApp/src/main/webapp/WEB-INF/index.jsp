<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Anime APP</title>
<jsp:include page="boothead.jsp" />
</head>
<body>
	<jsp:include page="navbar.jsp"></jsp:include>
	<h1>Landing page for Anime</h1>

	<c:forEach var="anime" items="${anime}">
		<div class="card bg-dark text-white">
			<img class="card-img" src="${anime.imgUrl}" alt="Card image">
			<div class="card-img-overlay">
				<h5 class="card-title">Card title</h5>
				<p class="card-text">This is a wider card with supporting text
					below as a natural lead-in to additional content. This content is a
					little bit longer.</p>
				<p class="card-text">Last updated 3 mins ago</p>
			</div>
		</div>
	</c:forEach>


	<jsp:include page="bootscript.jsp" />
</body>
</html>