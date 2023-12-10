<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page errorPage="errorPage.jsp"%>
<%@ page import="paradoteo2.*" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/newstyles.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <link rel="icon" href="images/favicon.ico">
    <title>Αρχική</title>
</head>

<body>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
    <nav class="navbar navbar-expand-lg bg-body-tertiary" style="border-bottom: 2px solid black;">
       <a href="home.jsp" >
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
    
        <%@ include file="navbar.jsp" %>
  
<!-- .navbar -->

    <div>
        <header class="hero">
            <div class="hero-content">
                <h1>Καλώς ήρθατε στο PetLink!</h1>
                <p>Υιοθέτησε ένα κατοικίδιο και δώσε του <br>του ένα μόνιμο σπίτι!</p>
                <div>
                    <a id="buttonhome1" class="btn btn-lg btn-primary btn-block" style="--bs-btn-padding-y: 0rem" href="searchForm.jsp"> Αναζήτηση Αγγελίας </a>
                </div>
                <div>
                    <a id="buttonhome2" class="btn btn-lg btn-primary btn-block" style="--bs-btn-padding-y: 0rem" href="uploadForm.jsp"> Ανάρτηση Αγγελίας </a>
                </div>
            </div>
        </header>
    </div>
</body>
</html>