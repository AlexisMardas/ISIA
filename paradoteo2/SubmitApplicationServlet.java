package paradoteo2;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class SubmitApplicationServlet extends HttpServlet {

    public void doPost (HttpServletRequest request, HttpServletResponse response)
        throws IOException, ServletException {

            HttpSession session = request.getSession(true);
            User user = (User) session.getAttribute("authenticatedUser");
            int userID = user.getUserId();
            int petID = Integer.parseInt(request.getParameter("petID"));
            String previousExperienceValue = request.getParameter("previousExperience");

// Check if the value is "yes" or "no" and convert it to boolean
            boolean previousExperience = "yes".equals(previousExperienceValue);
           
            String otherPetsValue = request.getParameter("otherPets");

// Check if the value is "yes" or "no" and convert it to boolean
            boolean otherPets = "yes".equals(otherPetsValue);

            String comments = request.getParameter("comments");

            Application app = new Application();

            try {

                app.submitApplication(petID, userID, previousExperience, otherPets, comments);
                response.sendRedirect("home.jsp");
                
            } catch (Exception e) {
                // TODO: handle exception
            }
        


    }
    
}