<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isErrorPage="true" %>


<!DOCTYPE html>
<html lang="el">
	<head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1" >
        <title>Error page</title>
        <link rel="stylesheet" href="css/applicants.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
        <link rel="icon" href="images/favicon.ico">
        <script src="js/script.js" defer></script>
    </head>
	
	<body>

		<!-- Fixed navbar -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
        <nav class="navbar navbar-expand-lg bg-body-tertiary" style="border-bottom: 2px solid black;">
          <div class="container-fluid">
            <a href="home.html">
            <img src="images/PetLink.png" alt="PetLink" width="100" height="70" >
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
              <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                  <a class="nav-link active" aria-current="page" href="home.html">Αρχική Σελίδα</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link active" href="searchForm.html">Αναζήτηση</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link active" href="uploadForm.html">Ανάρτηση Αγγελίας</a>
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
              <li><a class="dropdown-item" href="loginForm.html">Σύνδεση/Εγγραφή</a></li>
              <li><a class="dropdown-item" href="showMyPosts.html">Οι αγγελίες μου</a></li>
              <!--<li><hr class="dropdown-divider"></li>
              <li><a class="dropdown-item" href="index.html">Αποσύνδεση</a></li>-->
            </ul>
          </div>
            
      </nav>

		<div class="container theme-showcase" role="main">

			

			<!-- Page Title -->
			<div class="page-header">
				<h1 style="color:blue; text-align:center;"> <b>Oops something went wrong</b></h1>
			</div>
            
            <div class="row">

				<div class="col-xs-12">

					<h2 style="color:blue; text-align:center;"> <b>Description</b> </h2>

					<% if(exception != null) { %>	                  	
						<p><code><%=exception %></code></p>						
					<% } %>		

				</div>

			</div> 
			
		</div>
		<!-- /container -->
		
	</body>
</html>


