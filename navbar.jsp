<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page errorPage="errorPage.jsp"%>
<%@ page import="paradoteo2.*" %>

<% if (session.getAttribute("authenticatedUser") == null) {
    %> 
      
        <div id="user" class="dropdown text-end" style="margin-right: 2%;">
          <a href="#" class="d-block link-dark text-decoration-none dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
            <svg xmlns="http://www.w3.org/2000/svg" width="26" height="26" fill="currentColor" class="bi bi-person-circle" viewBox="0 0 16 16">
              <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/>
              <path fill-rule="evenodd" d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z"/>
            </svg> Username
          </a>
          <ul class="dropdown-menu text-small" style="margin-left: -25%;">
            <li><a class="dropdown-item" href="loginForm.jsp">Log in / Sign Up</a></li>
            <li><a class="dropdown-item" href="MyPostsServlet">My Posts</a></li>
        </ul>
        </div>     
      </nav>
    <%
    } else {
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
            <li><a class="dropdown-item" href="MyPostsServlet">My Posts</a></li>
            <li><a class="dropdown-item" href="LogoutServlet">Sign Out</a></li>
        </ul>
        </div>     
    </nav>
    <%
    }
    %>