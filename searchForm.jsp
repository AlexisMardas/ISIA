<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page errorPage="errorPage.jsp"%>
<%@ page import="paradoteo2.*" %>


<!doctype html>
<html lang="el">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1" >
    <title>Search</title>
    <link rel="stylesheet" href="css/search.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <link rel="icon" href="images/favicon.ico">
</head>

<body>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
    <nav class="navbar navbar-expand-lg bg-body-tertiary" style="border-bottom: 2px solid black;">
      <div class="container-fluid">
        <a href="home.jsp">
        <img src="images/PetLink.png" alt="PetLink" width="100" height="70" >
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav me-auto mb-2 mb-lg-0">
            <li class="nav-item">
              <a class="nav-link active" aria-current="page" href="home.jsp">Home Page</a>
            </li>
            <li class="nav-item">
              <a class="nav-link active" href="searchForm.jsp">Search</a>
            </li>
            <li class="nav-item">
              <a class="nav-link active" href="uploadForm.jsp">Create Post</a>
            </li>
          </ul>
        </div>
      </div>
  
      <%@ include file="navbar.jsp" %>
        
  </nav>

  <div class="search-form">
    <h2>Search for Pets</h2>
    <!-- Action to be changed -->
    <form action="SearchPostServlet" method="POST">
        <label for="animal">Type:</label>
        <select id="animal" name="animal">
            <option value="">All</option>
            <option value="dog">Dog</option>
            <option value="cat">Cat</option>
            <option value="other">Other</option>
        </select>

        <label for="age">Age:</label>
        <select id="age" name="age">
            <option value="">All</option>
            <option value="2">2 years or less</option>
            <option value="5">2-5 years</option>
            <option value="10">6-10 years</option>
            <option value="10+">More than 10 years</option>
        </select>

        <label for="weight">Weight (kg):</label>
        <select id="weight" name="weight">
            <option value="">All</option>
            <option value="5">5 kg or less</option>
            <option value="10">5-10 kg</option>
            <option value="20">11-20 kg</option>
            <option value="40">21-40 kg</option>
            <option value="40+">More than 40 kg</option>
        </select>

        <label for="location">Location:</label>
        <input type="text" id="location" name="location" placeholder="Insert Location">

        <label for="gender">Gender:</label>
        <select id="gender" name="gender">
            <option value="">All</option>
            <option value="M">Male</option>
            <option value="F">Female</option>
        </select>
          <button type="submit">Search</button>
    </form>
</div>


</body>
</html>
