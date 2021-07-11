<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Detail view</title>
<jsp:include page="boothead.jsp" />
<link href="css/animeDetails.css" rel="stylesheet" />
</head>
<body>
	<jsp:include page="navbar.jsp" />
	<div class="container-fluid text-center">
		<div class="card mx-auto mt-4 scroll mb-3">
			<iframe class="video m-2" src="${anime.videoUrl}"
				title="YouTube video player" frameborder="0"
				allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
				allowfullscreen></iframe>
			<div class="card-body d-flex flex-column justify-content-between">
				<div>
					<h5 class="card-title m-2 h1 text-uppercase">${anime.title}</h5>
					<div class="card-text text-left">
						<h2 class="text-left">Description</h2>
						<p class="m-4">${anime.description}</p>
					</div>
				</div>
				<div>
					<p>Rating: ${anime.rating}</p>
					<p>Favorite: ${anime.favorite}</p>
				</div>
				<div class="d-flex m-2 justify-content-around p-2">
					<a href="#" class="btn btn-primary w-25">Edit</a>
					 <a href="home.do"
						class="btn btn-secondary w-25">Home</a> <a href="#"
						class="btn btn-danger w-25">Delete</a>
				</div>

			</div>
		</div>
	</div>

</body>
</html>