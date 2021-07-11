<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="boothead.jsp"></jsp:include>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="animeform.do?type=new">Navbar</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
    <div class="navbar-nav">
      <a class="nav-item nav-link active" href="home.do">Home</a>
      <a class="nav-item nav-link active" href="animeform.do?type=new">Create Anime</a>
    </div>
   <form action="keyword.do" class="form-inline d-flex">
    <input class="form-control mr-sm-2" type="search" placeholder="Title Search" aria-label="Search" placeholder="Enter title name" name="keyword">
    <button class="btn btn-outline-dark my-2 my-sm-0" type="submit">Search</button>
  </form>
  </div>
</nav>



</body>
</html>