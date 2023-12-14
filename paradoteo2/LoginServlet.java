package paradoteo2;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;


public class LoginServlet extends HttpServlet {
    public void doPost (HttpServletRequest request, HttpServletResponse response)
    throws IOException, ServletException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String referrer = request.getParameter("referrer");
        User user = new User();

        try {

            user = user.verifyUser(username, password);
            HttpSession session = request.getSession(true);
            session.setAttribute("authenticatedUser", user);
            RequestDispatcher dispatcher = request.getRequestDispatcher(referrer);
            dispatcher.forward(request, response);

                
            
        } catch(Exception e) {

            request.setAttribute("error_message", e.getMessage());
            RequestDispatcher dispatcher = request.getRequestDispatcher("loginForm.jsp");
            dispatcher.forward(request, response);
        
        }
    }


}
