<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page errorPage="errorPage.jsp"%>
<%@ page import="paradoteo2.*" %>

<%
String username = request.getParameter("username");
String password = request.getParameter("password");

User user = new User();


try {

    user = user.verifyUser(username, password);

    session.setAttribute("authenticatedUser", user);


%>    
    <jsp:forward page="home.jsp" />
<%
} catch(Exception e) {

    request.setAttribute("error_message", e.getMessage());

%>
    <jsp:forward page="loginForm.jsp" />

<%
}
%>

