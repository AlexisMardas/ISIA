<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page errorPage="errorPage.jsp"%>
<%@ page import="paradoteo2.*" %>


<!doctype html>
<html lang="el">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1" >
    <title>Αγγελίες</title>
    <link rel="stylesheet" href="css/shopost.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <link rel="icon" href="images/favicon.ico">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
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
              <a class="nav-link active" href="home.jsp">Αναζήτηση</a>
            </li>
            <li class="nav-item">
              <a class="nav-link active" href="uploadForm.jsp">Ανάρτηση Αγγελίας</a>
            </li>
          </ul>
        </div>
      </div>
  
      <div id="user" class="dropdown text-end">
        <a href="#" class="d-block link-dark text-decoration-none dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
          <svg xmlns="http://www.w3.org/2000/svg" width="26" height="26" fill="currentColor" class="bi bi-person-circle" viewBox="0 0 16 16">
            <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/>
            <path fill-rule="evenodd" d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z"/>
          </svg> Username
        </a>
        <ul class="dropdown-menu text-small" style="margin-left: -25%;">
          <li><a class="dropdown-item" href="loginForm.jsp">Σύνδεση/Εγγραφή</a></li>
          <li><a class="dropdown-item" href="showMyPosts.jsp">Οι αγγελίες μου</a></li>
          <!--<li><hr class="dropdown-divider"></li>
          <li><a class="dropdown-item" href="index.jsp">Αποσύνδεση</a></li>-->
      </ul>
      </div>
        
  </nav>


      <div class="pet-posts">
          <div class="post">
              <img src="images/pet1.jpg" alt="Pet 1">
              <div class="post-info">
                  <h2>Rudy</h2>
                  <p><i class="fas fa-map-marker-alt"></i> Πειραιάς, Αθήνα</p> <!-- Location icon -->
                  <button onclick="showMore('pet1')">Περισσότερα</button>
              </div>
          </div>
          <div class="post">
              <img src="images/pet2.jpg" alt="Pet 2">
              <div class="post-info">
                  <h2>Mary</h2>
                  <p><i class="fas fa-map-marker-alt"></i> Καλλιθέα, Αθήνα</p> <!-- Location icon -->
                  <button onclick="showMore('pet2')">Περισσότερα</button>
              </div>
          </div>
          
          <div class="post">
            <img src="images/pet3.jpg" alt="Pet 3">
            <div class="post-info">
                <h2>Buddy</h2>
                <p><i class="fas fa-map-marker-alt"></i> Ζωγράφου, Αθήνα</p> <!-- Location icon -->
                <button onclick="showMore('pet3')">Περισσότερα</button>
            </div>
        </div>
      </div>

      <script>
        function showMore(petId) {
            // Redirect to the pet details page for the selected pet
            window.location.href = "showSpecificPosts.jsp?pet=" + petId;
        }
    </script>

  </body>
  </html>
  

