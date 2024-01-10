<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page errorPage="errorPage.jsp"%>
<%@ page import="paradoteo2.*" %>
<%@ page import="java.util.List" %>
<%@ page import="java.sql.Date" %>

<%@ include file="authenticationGuard.jsp" %>
<!doctype html>
<html lang="el">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1" >
    <title>Applications</title>
    <link rel="stylesheet" href="css/applicants.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <link rel="icon" href="images/favicon.ico">
    <script src="js/script.js" defer></script>
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
  <!-- EDIT APPLICATION CLASS -->
   
    <% List<Application> apps = (List<Application>) request.getAttribute("applications");
       if (apps.size() != 0) { %>
    <div class="applications">
       <% for (Application app : apps) {
        User applicant = app.getUser(); %> 
    <div class="application">
        <div class="header">
            <h2><%=applicant.getFullName() %></h2>
            <button class="expand-button" title="Περισσότερα">
                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-chevron-down" viewBox="0 0 16 16">
              <path fill-rule="evenodd" d="M1.646 4.646a.5.5 0 0 1 .708 0L8 10.293l5.646-5.647a.5.5 0 0 1 .708.708l-6 6a.5.5 0 0 1-.708 0l-6-6a.5.5 0 0 1 0-.708z"></path>
            </svg>
            </button>
        </div>
        <div class="info">
            <p>Application date: <%=app.getDateOfApplication().toString() %></p>
            <p>Email: <%=applicant.getEmail() %></p>
            <p>Phone Number: <%=applicant.getPhoneNumber() %></p>
            <p>Location: <%=applicant.getLocation()  %></p>
        </div>
        <div class="expand-info">
            <p>Other pets: <%=app.getOtherPets() ? "Yes" : "No" %> </p>
            <p>Previous experience: <%=app.getPreviousExperience() ? "Yes" : "No" %></p>
            <p>Comments: <%=app.getComments() %></p>
        </div>
    </div>
    <% }  %>
  </div>
    <% } else { %> 
      <div class="jumbotron" style="margin-top: 10%; max-width: 70%; margin-left: 17%; ">
        <div class="container" style="background-color:  #eee1cd; border: solid black 2px; border-radius: 20px;" >
          <h1>There are no applicants for this post!</h1>
          <p>Click the button to return to the previous page.</p>
          <p><a class="btn btn-primary btn-lg" href="MyPostsServlet" role="button">My posts</a></p>
        </div>
      </div>
    <% } %>
    
    <%@ include file="footer.jsp" %>
</body>	

</html>	