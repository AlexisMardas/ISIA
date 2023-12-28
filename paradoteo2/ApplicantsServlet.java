package paradoteo2;
import java.io.*;
import java.util.List;

import javax.servlet.*;
import javax.servlet.http.*;

public class ApplicantsServlet extends HttpServlet {
    public void doGet (HttpServletRequest request, HttpServletResponse response)
    throws IOException, ServletException {

        int postID = Integer.parseInt(request.getParameter("postID"));
        Application app = new Application();
        try {
            List<Application> applications = app.showApplications(postID);
            request.setAttribute("applications", applications);
            RequestDispatcher dispatcher = request.getRequestDispatcher("showApplicants.jsp");
            dispatcher.forward(request, response);


        } catch (Exception e) {
            request.setAttribute("error", e.getMessage());
            RequestDispatcher dispatcher = request.getRequestDispatcher("errorPage.jsp");
            dispatcher.forward(request, response);
            
        }



    }
    
}
