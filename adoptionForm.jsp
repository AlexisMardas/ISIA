<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page errorPage="errorPage.jsp"%>
<%@ page import="paradoteo2.*" %>
<%@ include file="authenticationGuard.jsp" %>


<!DOCTYPE html>
<html>
<head>
    
   <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=0.5">


    <meta charset="utf-8">
   
    <title>Αίτηση υιοθεσίας</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <link rel="stylesheet" href="css/adoptionForm.css">
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




<div class="adoption-form" style="margin-top: 5%;">
    <h2>Αίτηση υιοθεσίας κατοικιδίου</h2>
    <form>
        <div class="form-group">
            <label for="fullName">Ονοματεπώνυμο </label>
            <input type="text" class="form-control" id="fullName" placeholder="Εισάγετε το ονοματεπώνυμο σας" required>
        </div>
        <div class="form-group">
            <label for="email">Email</label>
            <input type="email" class="form-control" id="email" placeholder="Εισάγετε το email σας" required>
        </div>
        <div class="form-group">
            <label for="phone">Τηλέφωνο</label>
            <input type="tel" class="form-control" id="phone" placeholder="Εισάγετε ένα τηλέφωνο επικοινωνίας" required>
        </div>
        <div class="form-group">
            <label for="location">Τοποθεσία</label>
            <input type="text" class="form-control" id="location" placeholder="Εισάγετε την τοποθεσία σας" required>
        </div>
        <div class="form-group">
            <label>Έχετε άλλα κατοικίδια;</label><br>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="haveOtherPets" id="yesPets" value="yes">
                <label class="form-check-label" for="yesPets">Ναι</label>
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="haveOtherPets" id="noPets" value="no">
                <label class="form-check-label" for="noPets">Όχι</label>
            </div>
        </div>
        <div class="form-group">
            <label>Έχετε προηγούμενη εμπειρία ως ιδιοκτήτης κατοικιδίου;</label><br>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="previousExperience" id="yesExperience" value="yes">
                <label class="form-check-label" for="yesExperience">Ναι</label>
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="previousExperience" id="noExperience" value="no">
                <label class="form-check-label" for="noExperience">Όχι</label>
            </div>
        </div>
        <div class="form-group">
            <label for="comments">Σχόλια</label>
            <textarea class="form-control" id="comments" rows="4"></textarea>
        </div>
        <button type="submit" class="btn btn-primary">Υποβολή </button>
    </form>
</div>
</body>
</html>
