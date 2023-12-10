<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page errorPage="errorPage.jsp"%>
<%@ page import="paradoteo2.*" %>



<!doctype html>
<html lang="el">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1" >
    <title>Οι αγγελίες μου</title>
    <link rel="stylesheet" href="css/mypostsstyle.css">
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
              <a class="nav-link active" aria-current="page" href="home.jsp">Αρχική Σελίδα</a>
            </li>
            <li class="nav-item">
              <a class="nav-link active" href="searchForm.jsp">Αναζήτηση</a>
            </li>
            <li class="nav-item">
              <a class="nav-link active" href="uploadForm.jsp">Ανάρτηση Αγγελίας</a>
            </li>
          </ul>
        </div>
      </div>
  
      <%@ include file="navbar.jsp" %>
        
  </nav>

  <div class="pet-grid">
    <!-- First Pet Adoption Post -->
    <div class="pet-post">
      <div class="pet-image-container">
        <img class="pet-image" src="images/cat1.jpg" alt="Pet Image">
      </div>
      <div class="pet-details">
        <p class="pet-name">Χερούλης</p>
        <p class="upload-date">Ημερομηνία ανάρτησης: 29-10-2023</p>
        <div class="buttons">
          <a href="showApplicants.jsp">
          <button class="button" id="morebutton" >Περισσότερα</button>
        </a>
        <a href="#">
          <button class="button" id="deletebutton">Διαγραφή</button>
        </a>
        </div>
      </div>
    </div>

    <!-- Second Pet Adoption Post -->
    <div class="pet-post">
      <div class="pet-image-container">
        <img class="pet-image" src="images/dog1.jpg" alt="Pet Image">
      </div>
      <div class="pet-details">
        <p class="pet-name">Μαξ</p>
        <p class="upload-date">Ημερομηνία ανάρτησης: 29-10-2023</p>
        <div class="buttons">
          <a href="showApplicants.jsp">
          <button class="button" id="morebutton" >Περισσότερα</button>
        </a>
        <a href="#">
          <button class="button" id="deletebutton">Διαγραφή</button>
        </a>
        </div>
      </div>
    </div>

    
  </div>

  </body>


</html>