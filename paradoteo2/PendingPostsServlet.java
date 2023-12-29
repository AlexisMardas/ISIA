package paradoteo2;

import java.io.*;
import java.util.List;
import javax.servlet.*;
import javax.servlet.http.*;

public class PendingPostsServlet extends HttpServlet{

    public void doGet (HttpServletRequest request, HttpServletResponse response)
    throws IOException, ServletException {

        Post p = new Post();

        List<Pet> pendingPosts = p.showPendingPosts();
        request.setAttribute("pendings", pendingPosts);
        RequestDispatcher dispatcher = request.getRequestDispatcher("pendingPosts.jsp");
        dispatcher.forward(request, response);



    }
    
    public void doPost (HttpServletRequest request, HttpServletResponse response)
    throws IOException, ServletException {
        doGet(request, response);

    }
}
