package paradoteo2;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class SpecificPostServlet extends HttpServlet {

    public void doGet (HttpServletRequest request, HttpServletResponse response)
        throws IOException, ServletException {

            int petID = Integer.parseInt(request.getParameter("petID"));
            Post p = new Post();

            try {
                Pet pet = p.findpet(petID);
                request.setAttribute("pet", pet);
                RequestDispatcher dispatcher = request.getRequestDispatcher("showSpecificPosts.jsp");
                dispatcher.forward(request, response);
                
            } catch (Exception e) {
                // TODO: handle exception
            }
        


    }
    
}
