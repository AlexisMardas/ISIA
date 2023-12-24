package paradoteo2;

import java.io.*;
import java.util.List;

import javax.servlet.*;
import javax.servlet.http.*;

public class AdminLoginServlet extends HttpServlet {
    public void doPost (HttpServletRequest request, HttpServletResponse response)
    throws IOException, ServletException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");
        User user = new User();
        Post p = new Post();

        try {

            User admin = user.verifyAdmin(username, password);
            HttpSession session = request.getSession(true);
            session.setAttribute("authenticatedUser", admin);
            List<Pet> pendingPosts = p.showPendingPosts();
            request.setAttribute("pendings", pendingPosts);
            RequestDispatcher dispatcher = request.getRequestDispatcher("pendingPosts.jsp");
            dispatcher.forward(request, response);

                
            
        } catch(Exception e) {

            request.setAttribute("error_message", e.getMessage());
            RequestDispatcher dispatcher = request.getRequestDispatcher("adminLoginForm.jsp");
            dispatcher.forward(request, response);
        
        }
    }



    
}
