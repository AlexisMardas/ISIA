package paradoteo2;

import java.io.*;
import java.sql.Date;
import javax.servlet.*;
import javax.servlet.http.*;


public class RegisterUserServlet extends HttpServlet {

    public void doPost (HttpServletRequest request, HttpServletResponse response)
    throws IOException, ServletException {

        String fullName = request.getParameter("fullname");
        String email = request.getParameter("email");
        String phoneNumber = request.getParameter("phonenumber");
        String location = request.getParameter("location");
        Date dob = Date.valueOf(request.getParameter("dob"));
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        User user = new User(fullName, email, phoneNumber, location, dob, username, password);

        try {
            user.register(user);
            response.sendRedirect("loginForm.jsp");
            
        } catch (Exception e) {
            response.sendRedirect("registrationForm.jsp");
        }

        
    }

}