package paradoteo2;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.util.List;

public class MyPostsServlet extends HttpServlet {
    // Always called by a link
    public void doGet (HttpServletRequest request, HttpServletResponse response)
    throws IOException, ServletException {
        // Built-in authentication guard
        HttpSession session = request.getSession(true);
        if (session.getAttribute("authenticatedUser") == null) {
            request.setAttribute("error_message", "You are not authorized to view this page!");
            response.sendRedirect("loginForm.jsp");

        } else {
            User user = (User) session.getAttribute("authenticatedUser");
            Post p = new Post();
            List<Object[]> myposts = p.showMyPosts(user.getUserId());
            request.setAttribute("myposts", myposts);
            RequestDispatcher dispatcher = request.getRequestDispatcher("showMyPosts.jsp");
            dispatcher.forward(request, response);
      

        }
        

    }
 }