<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page errorPage="errorPage.jsp"%>
<%@ page import="paradoteo2.*" %>


<!DOCTYPE html>
<html>
<head>

   <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=0.5">


    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="css/upload.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">


    <meta charset="utf-8">
   
    <title>Ανάρτηση αγγελίας</title>
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


  
<div class="container">
  <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
   <nav id="navbar" class="navbar"></nav>
    
        <a href="/" class="d-flex align-items-center mb-2 mb-lg-0 link-body-emphasis text-decoration-none">
        <svg class="bi me-2" width="40" height="32" role="img" aria-label="Bootstrap"><use xlink:href="#bootstrap"/></svg>
        </a>
  </div>
</div>


    <div class="upload-form">
        <h2 class="form-title">Δώσε ένα ζωάκι για υιοθεσία</h2>
        <form>
          <div class="form-group">
            <label for="petKind">Είδος του ζώου</label>
            <input type="text" class="form-control" id="petKind" placeholder="π.χ. γάτα, σκύλος" required>
        </div>
        <div class="form-group">
            <label for="petAge">Ηλικία του ζώου</label>
            <input type="number" class="form-control" id="petAge" placeholder="Ηλικία σε χρόνια" required>
        </div>
        <div class="form-group">
            <label for="petWeight">Βάρος του ζώου</label>
            <input type="number" class="form-control" id="petWeight" placeholder="Βάρος σε κιλά" required>
        </div>
        <div class="form-group">
          <label for="petGender">Φύλο του ζώου</label>
          <div class="gender-input">
              <select class="form-control" id="petGender" required>
                  <option value="Male">Αρσενικό</option>
                  <option value="Female">Θηλυκό</option>
              </select>
              <div class="gender-cursor"></div>
          </div>
      </div>
      
        <div class="form-group">
            <label for="petName">Όνομα του ζώου</label>
            <input type="text" class="form-control" id="petName" placeholder="Όνομα του ζώου" required>
        </div>
        <div class="form-group">
            <label for="petColor">Βασικό χρώμα του ζώου</label>
            <input type="text" class="form-control" id="petColor" placeholder="π.χ. μαύρο, καφέ" required>
        </div>
        <div class="form-group">
            <label for="location">Τοποθεσία</label>
            <input type="text" class="form-control" id="location" placeholder="Η τοποθεσία σας" required>
        </div>
        <div class="form-group">
            <label>Είναι το ζώο πλήρως εμβολιασμένο;</label><br>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="vaccinated" id="yesVaccinated" value="yes">
                <label class="form-check-label" for="yesVaccinated">Ναι</label>
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="vaccinated" id="noVaccinated" value="no">
                <label class="form-check-label" for="noVaccinated">Όχι</label>
            </div>
        </div>
        <div class="form-group">
            <label>Έχει το ζώο κάποια χρόνια ασθένεια;</label><br>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="chronicDisease" id="yesChronicDisease" value="yes">
                <label class="form-check-label" for="yesChronicDisease">Ναι</label>
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="chronicDisease" id="noChronicDisease" value="no">
                <label class="form-check-label" for="noChronicDisease">Όχι</label>
            </div>
        </div>
        <div class="form-group">
            <label>Είναι το ζώο τσιπαρισμένο;</label><br>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="chipped" id="yesChipped" value="yes">
                <label class="form-check-label" for="yesChipped">Ναι</label>
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="chipped" id="noChipped" value="no">
                <label class="form-check-label" for="noChipped">Όχι</label>
            </div>
        </div>
        <div class="form-group">
            <label>Είναι το ζώο στειρωμένο;</label><br>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="altered" id="yesAltered" value="yes">
                <label class="form-check-label" for="yesAltered">Ναι</label>
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="altered" id="noAltered" value="no">
                <label class="form-check-label" for="noAltered">Όχι</label>
            </div>
        </div>
        <div class="form-group">
            <label for="petPhoto">Προσθέστε μία φωτογραφία του ζώου</label>
            <input type="file" class="form-control" id="petPhoto" accept="image/*">
        </div>
        <div class="form-group">
            <label for="petDescription">Σύντομη περιγραφή του ζώου</label>
            <textarea class="form-control" id="petDescription" rows="5" placeholder="Πείτε μας κάποια πράγματα για το συγκεκριμένο ζώο"></textarea>
        </div>

            <button type="submit" class="btn btn-primary">Υποβολή για έλεγχο</button>
        </form>
    </div>
</body>
</html>