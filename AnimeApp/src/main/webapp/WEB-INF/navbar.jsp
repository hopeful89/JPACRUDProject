<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
</head>
<body>

<nav class="navbar navbar-expand-lg" style="background-color: rgba(0,0,0,.8);">
  <div class="container-fluid">
    <button class="navbar-toggler bi bi-arrow-bar-down" style="color:white;" type="button" data-bs-toggle="collapse" data-bs-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <a class="navbar-brand" href="home.do">Anime</a>
    <div class="collapse navbar-collapse" id="navbarTogglerDemo03">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="home.do">Home</a>
        </li>
        <li class="nav-item">
         	<a class="nav-item nav-link active" href="#animeAddModal" data-bs-toggle="modal" data-bs-target="#animeAddModal">Create
					Anime</a>
        </li>
      </ul>
      <form class="d-flex" action="keyword.do">

        <input class="form-control me-2" name="keyword" placeholder="Enter title name" type="search" aria-label="Search">
        <button class="btn btn-outline-primary" type="submit">Search</button>
      </form>
    </div>
  </div>
</nav>
	
	<!--  MODAL -->
	<div class="modal fade" id="animeAddModal" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div
			class="modal-dialog modal-fullscreen-lg-down modal-dialog-centered modal-dialog-scrollable">
			<div class="modal-content">
				<div class="modal-header mx-auto">
					<h5 class="modal-title text-center" id="AexampleModalLabel">Add
						An Anime</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">

					<!-- ADD FORM -->


					<form action="createAnime.do" method="post">
						<label class="mb-3" for="title">Title:</label> <input
							class="form-control" id="title" name="title" required>
						<label class="mt-2" for="description">Description</label>
						<textarea id="description"
							class="form-control description mt-3 mb-3" name="description">
												</textarea>
						<div class="form-check">
							<input class="form-check-input" type="radio" name="watchStatus"
								id="notstarted" value="notStarted"> <label
								class="form-check-label" for="notstarted"> Not Started </label>
						</div>
						<div class="form-check">
							<input class="form-check-input " type="radio" name="watchStatus"
								id="currentlyWatching" value="currentlyWatching"> <label
								class="form-check-label" for="currentlyWatching">
								Currently Watching </label>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="radio" name="watchStatus"
								id="completed" value="completed"> <label
								class="form-check-label" for="completed"> Completed</label>
						</div>
						<div class="form-check form-switch">
							<input class="form-check-input form-control" type="checkbox"
								name="favorite" id="favorite" value="true"> <label
								class="form-check-label" for="favorite">A favorite?</label>
						</div>
						<label class="mt-2 mb-2" for="imgurl">ImageUrl</label> <input
							id="imgurl" name="imgUrl" class="form-control">
						<label class="mt-2 mb-2" for="videourl">VideoUrl</label> <input
							id="videourl" name="videoUrl" class="form-control mb-2">

						<div class="d-flex mb-2 mt-3">
							<label for="rating">Rating <select name="rating">
									<option value="1">1</option>
									<option value="2">2</option>
									<option value="3">3</option>
									<option value="4">4</option>
									<option value="5">5</option>
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



</body>
</html>