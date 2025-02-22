<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page errorPage="errorPage.jsp"%>
<%@ page import="paradoteo2.*" %>
<!doctype html>
<html lang="el">
    <head>
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1" >
      <title>Log In</title>
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
      <link rel="stylesheet" href="css/mystyle.css">
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
  <% // Get the referrer, so that after the login the user will be rediected to the correct page 
      String referrer = request.getHeader("referer");
      // Keep only the last part of the url
      referrer = referrer.substring(referrer.lastIndexOf("/") + 1); 

      if(request.getAttribute("error_message") != null) { %>		
        <div class="alert alert-danger text-center" role="alert">Invalid credentials. Please try again.</div>
    <% } %>


    <div class="login-box" style="height: fit-content;">
      <h2>Log In</h2>
      <!-- Action to be changed -->
      <form method="POST" action="LoginServlet" >
          <input type="hidden" name="referrer" value="<%=referrer %>">
          <div class="input-container">
              <label for="username">Username</label>
              <input type="text" id="username" name="username" required >
          </div>
          <div class="input-container">
              <label for="password">Password</label>
              <input type="password" id="password" name="password" required>
          </div>
          <button type="submit">Log In</button>
      </form>
      <div class="links">
          <a class="link" href="registrationForm.jsp">Sign Up</a>
          <a class="link" href="adminLoginForm.jsp">Log in as Admin</a>
      </div>
  </div>
        
  </body>
</html>