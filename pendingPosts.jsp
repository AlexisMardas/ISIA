<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page errorPage="errorPage.jsp"%>
<%@ page import="paradoteo2.*" %>
<%@ page import="java.util.List" %>




<!doctype html>
<html lang="el">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1" >
    <title>Pending Posts</title>
    <link rel="stylesheet" href="css/pendingposts.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <link rel="icon" href="images/favicon.ico">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
</head>

<body>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
    <nav class="navbar navbar-expand-lg bg-body-tertiary" style="border-bottom: 2px solid black;">
      <div class="container-fluid">
        <img src="images/PetLink.png" alt="PetLink" width="100" height="70" >
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav me-auto mb-2 mb-lg-0">
            <li class="nav-item">
              <a class="nav-link active" aria-current="page" >Home Page</a>
            </li>
            <li class="nav-item">
              <a class="nav-link active" >Search</a>
            </li>
            <li class="nav-item">
              <a class="nav-link active" >Create Post</a>
            </li>
          </ul>
        </div>
      </div>
      <%
      User user = (User) session.getAttribute("authenticatedUser");
      %>
      
        <div id="user" class="dropdown text-end" style="margin-right: 2%;">
          <a href="#" class="d-block link-dark text-decoration-none dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
            <svg xmlns="http://www.w3.org/2000/svg" width="26" height="26" fill="currentColor" class="bi bi-person-circle" viewBox="0 0 16 16">
              <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/>
              <path fill-rule="evenodd" d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z"/>
            </svg> <%= user.getUsername()%>
          </a>
          <ul class="dropdown-menu text-small" style="margin-left: -25%;">
            <li><a class="dropdown-item" class="active">Pending Posts</a></li>
            <li><a class="dropdown-item" href="LogoutServlet">Sign Out</a></li>
        </ul>
        </div>     
        
  </nav>

    
        
            <% List<Pet> pendingPosts = (List<Pet>) request.getAttribute("pendings"); 
            if (pendingPosts.size() != 0) { %>
            <div class="pet-details">
            <% for (Pet pet : pendingPosts) { %>
            <div class="post">
            <img src="images/<%=pet.getPhoto()%>" alt="Pet 1" style="width: 500px;height: 570px;">
              <div class="post-info">
                
                <h2><%=pet.getPname()%></h2>
                <p><i class="fas fa-paw"></i> Type: <%=pet.getAnimalType()%></p>
                <p><i class="fas fa-venus-mars"></i> Gender: <%=pet.getGender()%></p>
                <p><i class="fas fa-birthday-cake"></i> Age: <%=pet.getAge()%></p> 
                <p><i class="fas fa-weight"></i> Weight: <%=pet.getWeight()%></p> 
                <p><i class="fas fa-map-marker-alt"></i> Location: <%=pet.getLocation()%></p> 
                <%
                String vaccinated = ""; 
                if (pet.isFullyVaccinated() == true){
                  vaccinated = " Fully Vaccinated";
                } else {
                  vaccinated = " Not Fully Vaccinated";
                }
                %>
                <p><i class="fas fa-check"></i> <%=vaccinated%></p>
                <%
                String desease = ""; 
                if (pet.isChronicdesease() == true){
                  desease = "It has chronic deseases";
                } else {
                  desease = " No chronic deseases";
                }
                %>
                <p><i class="fas fa-medkit"></i> <%=desease%></p>
                <%
                String chipped = ""; 
                if (pet.isChipped() == true){
                  chipped = "Chipped";
                } else {
                  chipped = "Not Chipped";
                }
                %>
                <p><i class="fas fa-microchip"></i> <%=chipped%></p>
                <%
                String sterilized = ""; 
                if (pet.isSterilized() == true){
                  sterilized = "Sterilized";
                } else {
                  sterilized = "No Sterilized";
                }
                %>
                <p><i class="fas fa-cut"></i> <%=sterilized%></p> 
                <p><%=pet.getDescription()%>
                </p>
                <a href="DecisionServlet?petID=<%=pet.getPetid()%>&decision=accepted">
                  <button  class="check-button"><i class="fas fa-check"></i>  Approve</button>
                </a>
                <a href="DecisionServlet?petID=<%=pet.getPetid()%>&decision=rejected">
                  <button  class="reject-button"><i class="fas fa-times"></i>  Reject</button>
                </a>
            </div>
          </div>
            <%
            }
            %>
          </div>
          <% } else { %>
            <div class="jumbotron" style="margin-top: 10%; max-width: 70%; margin-left: 17%; ">
              <div class="container" style="background-color:  #eee1cd; border: solid black 2px; border-radius: 20px;" >
                <h1>There are no pending posts!</h1>
                <p>To refresh this page click the button below</p>
                <p><a class="btn btn-primary btn-lg" href="PendingPostsServlet" role="button">Refresh</a></p>
              </div>
            </div>

          <% } %>
        
    
</body>
</html>