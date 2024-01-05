<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page errorPage="errorPage.jsp"%>
<%@ page import="paradoteo2.*" %>
<%@ include file="authenticationGuard.jsp" %>


<!DOCTYPE html>
<html lang="el">
<head>

   <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=0.5">


    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="css/upload.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">


    <meta charset="utf-8">
   
    <title>Create Post</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <link rel="icon" href="images/favicon.ico">
    
</head>
<body>
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


  
<div class="container">
  <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
   <nav id="navbar" class="navbar"></nav>
    
        <a href="/" class="d-flex align-items-center mb-2 mb-lg-0 link-body-emphasis text-decoration-none">
        <svg class="bi me-2" width="40" height="32" role="img" aria-label="Bootstrap"><use xlink:href="#bootstrap"/></svg>
        </a>
  </div>
</div>
                     
    <% User user = (User) session.getAttribute("authenticatedUser"); %>

    <div class="upload-form">

    <form class="form-registration" action="paradoteo2/UploadServlet.java" method="POST">

        <h2 class="form-title">Give a pet for adoption</h2>
        <form>
          <div class="form-group">
            <label for="petKind">Type of pet</label>
            <input type="text" class="form-control" id="petKind" name="petKind" placeholder="ex. cat, dog" required>
        </div>
        <div class="form-group">
            <label for="petAge">Age of pet</label>
            <input type="number" class="form-control" id="petAge" name="petAge" placeholder="Age in years" required>
        </div>
        <div class="form-group">
            <label for="petWeight">Weight of pet</label>
            <input type="number" class="form-control" id="petWeight" name="petWeight" placeholder="Weight in kg" required>
        </div>
        <div class="form-group">
          <label for="petGender">Gender of pet </label>
          <div class="gender-input">
              <select class="form-control" id="petGender" name="petGender" required>
                  <option value="Male">Male</option>
                  <option value="Female">Female</option>
              </select>
              <div class="gender-cursor"></div>
          </div>
      </div>
      
        <div class="form-group">
            <label for="petName">Name of pet</label>
            <input type="text" class="form-control" id="petName" name="petName" placeholder="Name of pet" required>
        </div>
        <div class="form-group">
            <label for="petColor">Main color of pet</label>
            <input type="text" class="form-control" id="petColor" name="petColor" placeholder="ex. black, brown" required>
        </div>
        <div class="form-group">
            <label for="location">Location</label>
            <input type="text" class="form-control" id="location" name="location" placeholder="Your location" required>
        </div>
        <div class="form-group">
            <label>Is it fully vaccinated?</label><br>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="vaccinated" id="yesVaccinated" value="yes">
                <label class="form-check-label" for="yesVaccinated">Yes</label>
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="vaccinated" id="noVaccinated" value="no">
                <label class="form-check-label" for="noVaccinated">No</label>
            </div>
        </div>
        <div class="form-group">
            <label>Is there any chronic desease?</label><br>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="chronicDisease" id="yesChronicDisease" value="yes">
                <label class="form-check-label" for="yesChronicDisease">Yes</label>
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="chronicDisease" id="noChronicDisease" value="no">
                <label class="form-check-label" for="noChronicDisease">No</label>
            </div>
        </div>
        <div class="form-group">
            <label>Is the pet chipped?</label><br>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="chipped" id="yesChipped" value="yes">
                <label class="form-check-label" for="yesChipped">Yes</label>
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="chipped" id="noChipped" value="no">
                <label class="form-check-label" for="noChipped">No</label>
            </div>
        </div>
        <div class="form-group">
            <label>Is the pet sterilized?</label><br>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="altered" id="yesAltered" value="yes">
                <label class="form-check-label" for="yesAltered">Yes</label>
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="altered" id="noAltered" value="no">
                <label class="form-check-label" for="noAltered">No</label>
            </div>
        </div>
        <div class="form-group">
            <label for="petPhoto">Add a photo of the pet</label>
            <input type="file" class="form-control" id="petPhoto" name="petPhoto" accept="image/*">
        </div>
        <div class="form-group">
            <label for="petDescription">Small description of the pet</label>
            <textarea class="form-control" id="petDescription" name="petDescription" rows="5" placeholder="Tell us something for your lovely pet"></textarea>
        </div>

            <button type="submit" class="btn btn-primary">Submit for check</button>
        </form>

    </form>

    </div>
</body>
</html>
