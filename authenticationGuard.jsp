<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page errorPage="errorPage.jsp"%>
<%@ page import="paradoteo2.*" %>

<%
if (session.getAttribute("authenticatedUser") == null) {

    request.setAttribute("error_message", "You are not authorized to view this page!");

%>
    <jsp:forward page="loginForm.jsp" />

<%
}    
%>