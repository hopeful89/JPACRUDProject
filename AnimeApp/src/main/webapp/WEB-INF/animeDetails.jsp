<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


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
				<div class="d-flex m-2 justify-content-around">
					<!-- Button trigger modal -->
					<button data-bs-toggle="modal" data-bs-target="#e${anime.id}"
						class="btn btn-primary w-25">Edit</button>
					<a href="home.do" class="btn btn-secondary w-25">Home</a>
					<button data-bs-toggle="modal" data-bs-target="#d${anime.id}"
						class="btn btn-dark w-25">Delete</button>


					<!-- Modal For edit-->
					<div class="modal fade" id="e${anime.id}" tabindex="-1"
						aria-labelledby="exampleModalLabel" aria-hidden="true">
						<div
							class="modal-dialog modal-fullscreen-lg-down modal-dialog-centered modal-dialog-scrollable">
							<div class="modal-content">
								<div class="modal-header mx-auto">
									<h5 class="modal-title text-center" id="exampleModalLabel">${anime.title}</h5>
									<button type="button" class="btn-close" data-bs-dismiss="modal"
										aria-label="Close"></button>
								</div>
								<div class="modal-body">

									<!-- EDIT FORM -->


									<form action="update.do" method="post">
										<c:if test="${not empty anime.id}">
											<input type="hidden" id="animeId" name="id"
												value="${anime.id}">
										</c:if>
										<label class="mb-3" for="title">Title:</label> <input
											class="form-control" id="title" name="title" required
											value="<c:if test="${not empty anime.title}">${anime.title}</c:if>">
										<label class="mt-2" for="description">Description</label>
										<textarea id="description"
											class="form-control description mt-3 mb-3" name="description"><c:if
												test="${not empty anime.description}">${anime.description}</c:if></textarea>
										<div class="form-check">
											<input class="form-check-input" type="radio"
												name="watchStatus" id="notstarted" value="notStarted"
												<c:if test="${anime.notStarted}">checked</c:if>> <label
												class="form-check-label" for="notstarted"> Not
												Started </label>
										</div>
										<div class="form-check">
											<input class="form-check-input " type="radio"
												name="watchStatus"
												<c:if test="${anime.currentlyWatching}">checked</c:if>
												id="currentlyWatching" value="currentlyWatching"> <label
												class="form-check-label" for="currentlyWatching">
												Currently Watching </label>
										</div>
										<div class="form-check">
											<input class="form-check-input" type="radio"
												name="watchStatus"
												<c:if test="${anime.completed}">checked</c:if>
												id="completed" value="completed"> <label
												class="form-check-label" for="completed"> Completed</label>
										</div>
										<div class="form-check form-switch">
											<input class="form-check-input form-control" type="checkbox"
												name="favorite"
												<c:if test="${anime.favorite}">checked</c:if> id="favorite"
												value="true"> <label class="form-check-label"
												for="favorite">A favorite?</label>
										</div>
										<label class="mt-2 mb-2" for="imgurl">ImageUrl</label> <input
											id="imgurl" name="imgUrl" class="form-control"
											value="<c:if test="${not empty anime.imgUrl}">${anime.imgUrl}</c:if>">
										<label class="mt-2 mb-2" for="videourl">VideoUrl</label> <input
											id="videourl" name="videoUrl" class="form-control mb-2"
											value="<c:if test="${not empty anime.videoUrl}">${anime.videoUrl}</c:if>">

										<div class="d-flex mb-2 mt-3">
											<label for="rating">Rating <select name="rating">
													<option value="1"
														<c:if test="${anime.rating == 1}">selected</c:if>>1</option>
													<option value="2"
														<c:if test="${anime.rating == 2}">selected</c:if>>2</option>
													<option value="3"
														<c:if test="${anime.rating == 3}">selected</c:if>>3</option>
													<option value="4"
														<c:if test="${anime.rating == 4}">selected</c:if>>4</option>
													<option value="5"
														<c:if test="${anime.rating == 5}">selected</c:if>>5</option>
											</select>

											</label>
										</div>

										<div class="modal-footer">
											<button type="button" class="btn btn-secondary"
												data-bs-dismiss="modal">Close</button>
											<button type="submit" class="btn btn-primary">Save
												changes</button>
										</div>
									</form>
								</div>

							</div>
						</div>
					</div>
					<!-- Delete Modal -->
					<div class="modal fade" id="d${anime.id}" tabindex="-1"
						aria-labelledby="exampleModalLabel" aria-hidden="true">
						<div
							class="modal-dialog modal-fullscreen-md-down modal-dialog-centered">
							<div class="modal-content">
								<div class="modal-header">
									<h5 class="modal-title" id="exampleModalLabel">Delete
										${anime.title}?</h5>
									<button type="button" class="btn-close" data-bs-dismiss="modal"
										aria-label="Close"></button>
								</div>
								<div class="modal-body">Are you sure you wish to delete?</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-secondary"
										data-bs-dismiss="modal">Close</button>
									<a href="delete.do?animeId=${anime.id}" type="button"
										class="btn btn-danger">Delete</a>
								</div>
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>

	<jsp:include page="bootscript.jsp" />
</body>
</html>