package paradoteo2;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;


public class LoginServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response)
    throws IOException, ServletException {

        response.setContentType("text/html; charset=windows-1253");
        PrintWriter out = new PrintWriter(response.getWriter(), true);

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        User user = new User();


        try {

            user = user.verifyUser(username, password);
            HttpSession session = request.getSession(true);
            session.setAttribute("authenticatedUser", user);
            RequestDispatcher dispatcher = request.getRequestDispatcher("../home.jsp");
            dispatcher.forward(request, response);

                
            
        } catch(Exception e) {

            request.setAttribute("error_message", e.getMessage());
            RequestDispatcher dispatcher = request.getRequestDispatcher("../loginForm.jsp");
            dispatcher.forward(request, response);
        
        }
    }


}
