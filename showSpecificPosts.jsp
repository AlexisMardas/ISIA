<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page errorPage="errorPage.jsp"%>
<%@ page import="paradoteo2.*" %>


<!doctype html>
<html lang="el">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1" >
    <title>Post Info</title>
    <link rel="stylesheet" href="css/shospecific.css">
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
  <% Pet pet = (Pet) request.getAttribute("pet"); %>

    <div class="pet-details">
        <div class="post">
            <img src="images/<%=pet.getPhoto()%>" alt="Pet 1"  style="width: 500px;height: 570px;">
            <div class="post-info">
                
                <h2><%= pet.getPname() %></h2>
                <p><i class="fas fa-paw"></i> Type: <%= pet.getAnimalType() %></p>
                <p><i class="fas fa-venus-mars"></i> Gender: <%= pet.getGender() %></p>
                <p><i class="fas fa-birthday-cake"></i> Age: <%= Integer.toString(pet.getAge()) %> years old</p> 
                <p><i class="fas fa-weight"></i> Weight: <%= Double.toString(pet.getWeight()) %></p>
                <p><i class="fas fa-solid fa-palette"> </i> Main Color: <%= pet.getMaincolor() %> </p> 
                <p><i class="fas fa-map-marker-alt"></i> Location: <%= pet.getLocation() %></p> 
                <%if(pet.isFullyVaccinated()){
                %> 
                <p><i class="fas fa-check"></i> Fully Vaccinated</p>
                <%} else {
                %>
                <p><i class="fa fa-times"></i> Not Vaccinated</p>
               <% 
                }
               %>
                <p><i class="fas fa-medkit"></i> <%= pet.isChronicdesease()? "Has a chronic desease" : "No chronic desease" %></p>
                <p><i class="fas fa-cut"></i> <%= pet.isSterilized()? "Sterilized" : "Not sterilized" %></p>
                <p><i class="fas fa-microchip"></i> <%= pet.isChipped()? "Chipped" : "Not chipped" %></p>
                <p><%=pet.getDescription() %>
                </p>
                <a href="adoptionForm.jsp?petID=<%=pet.getPetid() %>">
                  <button>I am interested in adoption</button>
                </a>
            </div>
        </div>
    </div>
    <%@ include file="footer.jsp" %>
</body>
</html>
