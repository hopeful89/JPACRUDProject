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
<jsp:include page="navbar.jsp"/>
	<div class="container-fluid">
		<div class="col-9 mx-auto">
			<h1 class="mx-auto">Landing page for Anime</h1>
			<div class="row">
				<c:forEach var="anime" items="${anime}">
					<div class="col-6 col-md-4 col-lg-2 item">
						
						<a href="detail.do?animeId=${anime.id}">
							<div class="card">
								<img class="card-img-top" src="${anime.imgUrl}"
									alt="Card image cap">
								<div class="card-body">
									<p class="card-text p-1 text-center">${anime.title}</p>
								</div>
							</div>
						</a>
					</div>
				</c:forEach>
			</div>
		</div>
	</div>
	<jsp:include page="bootscript.jsp"/>
</body>
</html>