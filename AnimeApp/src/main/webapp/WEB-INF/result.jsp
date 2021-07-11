<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="boothead.jsp" />
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="navbar.jsp"></jsp:include>
	

	<div class="container-fluid">
		<div class="col-9 mx-auto">
		<h1 class ="mx-auto">Search Results</h1>
			<div class="row">
				<c:forEach var="anime" items="${animeList}">
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