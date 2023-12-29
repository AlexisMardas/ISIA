package paradoteo2;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class DecisionServlet extends HttpServlet {

    public void doGet (HttpServletRequest request, HttpServletResponse response)
    throws IOException, ServletException {


        int petID = Integer.parseInt(request.getParameter("petID")) ;
        String decision = request.getParameter("decision");
        Post p = new Post();
        p.makeDecision(petID, decision);
        response.sendRedirect("PendingPostsServlet");


    }
    
}
