<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page errorPage="errorPage.jsp"%>
<%@ page import="paradoteo2.*" %>


<!doctype html>
<html lang="el">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1" >
    <title>Αναζήτηση</title>
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
              <a class="nav-link active" aria-current="page" href="home.jsp">Αρχική Σελίδα</a>
            </li>
            <li class="nav-item">
              <a class="nav-link active" href="#">Αναζήτηση</a>
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

  <div class="search-form">
    <h2>Αναζήτηση Κατοικιδίων</h2>
    <!-- Action to be changed -->
    <form action="showPosts.jsp" method="GET">
        <label for="animal">Είδος:</label>
        <select id="animal" name="animal">
            <option value="">Όλα</option>
            <option value="dog">Σκύλος</option>
            <option value="cat">Γάτα</option>
            <option value="other">Άλλο</option>
        </select>

        <label for="age">Ηλικία:</label>
        <select id="age" name="age">
            <option value="">Όλες</option>
            <option value="2">Μέχρι	2 ετών</option>
            <option value="5">2-5 ετών</option>
            <option value="10">5-10 ετών</option>
            <option value="10+">Πάνω από 10 ετών</option>
        </select>

        <label for="weight">Βάρος (σε κιλά):</label>
        <select id="weight" name="weight">
            <option value="">Όλα</option>
            <option value="5">Μέχρι και 5 kg</option>
            <option value="10">5-10 kg</option>
            <option value="20">10-20 kg</option>
            <option value="40">20-40 kg</option>
            <option value="40+">Πάνω από 40 kg</option>
        </select>

        <label for="location">Τοποθεσία:</label>
        <input type="text" id="location" name="location" placeholder="Εισαγωγή τοποθεσίας">

        <label for="gender">Φύλο:</label>
        <select id="gender" name="gender">
            <option value="">Όλα</option>
            <option value="M">Αρσενικό</option>
            <option value="F">Θηλυκό</option>
        </select>
          <button type="submit">Αναζήτηση</button>
    </form>
</div>




</body>
</html>
