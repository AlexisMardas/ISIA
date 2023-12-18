<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page errorPage="errorPage.jsp"%>
<%@ page import="paradoteo2.*" %>
<%@ page import="java.util.List" %>



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
  
      <%@ include file="navbar.jsp" %>
        
  </nav>
  <div class="pet-posts">
  <% List<Object[]> posts = (List<Object[]>) request.getAttribute("posts"); 
    for (Object[] post : posts) { %>
      
        <div class="post">
            <img src="images/<%=(String) post[3] %>" alt="Pet 1">
            <div class="post-info">
                <h2><%=(String) post[1] %></h2>
                <p><i class="fas fa-map-marker-alt"></i> <%=(String) post[2] %> </p> <!-- Location icon -->
                <button onclick="showMore('<%=post[0] %>')">Περισσότερα</button>
            </div>
        </div>
         
      <% } %>
    </div>

      <!-- Useless crap
       <div class="post">
              <img src="images/pet2.jpg" alt="Pet 2">
              <div class="post-info">
                  <h2>Mary</h2>
                  <p><i class="fas fa-map-marker-alt"></i> Καλλιθέα, Αθήνα</p> 
                  <button onclick="showMore('11')">Περισσότερα</button>
              </div>
          </div>
         
          
          <div class="post">
            <img src="images/pet3.jpg" alt="Pet 3">
            <div class="post-info">
                <h2>Buddy</h2>
                <p><i class="fas fa-map-marker-alt"></i> Ζωγράφου, Αθήνα</p> 
                <button onclick="showMore('12')">Περισσότερα</button>
            </div>
        </div>
      </div>
      -->

      <script>
        function showMore(petId) {
            // Redirect to the pet details page for the selected pet
            window.location.href = "SpecificPostServlet?petID=" + petId;
        }
    </script>

  </body>
  </html>
  

