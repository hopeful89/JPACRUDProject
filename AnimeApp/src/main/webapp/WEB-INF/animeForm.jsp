<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Anime Create Form</title>
</head>
<body>

	<form action="${type}" method="post">
		<c:if test="${not empty anime.id}">
			<input type="hidden" id="animeId" name="id" value="${anime.id}">
		</c:if>
		<label for="title">Title:</label> <input id="title" name="title"
			required
			value="<c:if test="${not empty anime.title}">${anime.title}</c:if>">
		<label for="description">Description</label>
		<textarea id="description" name="description"><c:if
				test="${not empty anime.description}">${anime.description}</c:if></textarea>
		<div class="form-check">
			<input class="form-check-input" type="radio" name="watchStatus"
				id="notstarted" value="notStarted"
				<c:if test="${anime.notStarted}">checked</c:if>> <label
				class="form-check-label" for="notstarted"> Not Started: </label>
		</div>
		<div class="form-check">
			<input class="form-check-input" type="radio" name="watchStatus"
				<c:if test="${anime.currentlyWatching}">checked</c:if>
				id="currentlyWatching" value="currentlyWatching"> <label
				class="form-check-label" for="currentlyWatching"> Currently
				Watching </label>
		</div>
		<div class="form-check">
			<input class="form-check-input" type="radio" name="watchStatus"
				<c:if test="${anime.completed}">checked</c:if> id="completed"
				value="completed"> <label class="form-check-label"
				for="completed"> Completed</label>
		</div>
		<div class="form-check form-switch">
			<input class="form-check-input" type="checkbox" name="favorite"
				<c:if test="${anime.favorite}">checked</c:if> id="favorite"
				value="true"> <label class="form-check-label" for="favorite">A
				favorite?</label>
		</div>
		<label for="imgurl">ImageUrl</label> <input id="imgurl" name="imgUrl"
			class="form-control"
			value="<c:if test="${not empty anime.imgUrl}">${anime.imgUrl}</c:if>">
		<label for="videourl">VideoUrl</label> <input id="videourl"
			name="videoUrl" class="form-control"
			value="<c:if test="${not empty anime.videoUrl}">${anime.videoUrl}</c:if>">
		<select name="rating">
			<option value="1" <c:if test="${anime.rating == 1}">selected</c:if>>1</option>
			<option value="2" <c:if test="${anime.rating == 2}">selected</c:if>>2</option>
			<option value="3" <c:if test="${anime.rating == 3}">selected</c:if>>3</option>
			<option value="4" <c:if test="${anime.rating == 4}">selected</c:if>>4</option>
			<option value="5" <c:if test="${anime.rating == 5}">selected</c:if>>5</option>
		</select> <input type="submit">
	</form>

</body>
</html>