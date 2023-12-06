<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page errorPage="errorPage.jsp"%>
<%@ page import="paradoteo2.*" %>

<!doctype html>
<html lang="el">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=0.5">
    <title>Εγγραφή</title>
    <link rel="stylesheet" href="css/mystyle.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <link rel="icon" href="images/favicon.ico">

   <style>
    .registration-box {
      background-color: white;
      margin: 3% auto; 
      padding: 20px;
      border: 1px solid black;
      border-radius: 10px;
      width: 40%; 
      min-width: 300px;
     
    
    }

    .registration-box input.large-input {
      padding: 10px ;
      font-size: 16px ;
      width: 100% ;
   }

  </style>
   
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


  <div class="registration-box" >
    <!-- Action must be changed-->
    <form class="form-registration" action="loginForm.jsp" method="GET">
        <svg xmlns="http://www.w3.org/2000/svg" style='margin-top: 20px;' width="40" height="40" fill="currentColor" class="bi bi-person-circle" viewBox="0 0 16 16">
            <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/>
            <path fill-rule="evenodd" d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z"/>
        </svg>
      <br>
      <br>
      
      <h1 class="h3 mb-3 font-weight-normal">Εγγραφή Χρήστη</h1>
      <label for="inputName" class="sr-only">Ονοματεπώνυμο</label>
      <input type="text" id="inputName" class="form-control large-input" placeholder="Ονοματεπώνυμο" required>
      <label for="inputMail" class="sr-only">Email</label>
      <input type="text" id="inputMail" class="form-control large-input " placeholder="Email" required>
      <label for="inputPhone" class="sr-only">Τηλέφωνο</label>
      <input type="number" id="inputPhone" class="form-control large-input" placeholder="Τηλέφωνο" required>
      <label for="inputLocation" class="sr-only">Τοποθεσία</label>
      <input type="text" id="inputLocation" class="form-control large-input" placeholder="Τοποθεσία" required>
      <label for="inputBirthday" class="sr-only">Ημερομηνία γέννησης</label>
      <input type="date" id="inputBirthday" class="form-control large-input"  placeholder="Ημερομηνία γέννησης" required>
      <label for="newUsername" class="sr-only">Username</label>
      <input type="text" id="newUsername" class="form-control large-input" placeholder="Όρισε Username" required autofocus>
      <label for="newPassword" class="sr-only">Password</label>
      <input type="password" id="newPassword" class="form-control large-input" placeholder="Όρισε Password" required>
      
      <div class="checkbox mb-3">
      </div>
        <button type="submit" id="buttonregistration" class="btn btn-primary">Εγγραφή</button>
       </p>

      
    </form>
  </div>
</div>

</body>
</html>