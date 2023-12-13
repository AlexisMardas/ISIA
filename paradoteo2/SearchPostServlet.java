package paradoteo2;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.util.List;

public class SearchPostServlet extends HttpServlet {

    public void doPost (HttpServletRequest request, HttpServletResponse response)
    throws IOException, ServletException {

        String animalType = request.getParameter("animal");
        String age = request.getParameter("age");
        String weight = request.getParameter("weight");
        String location = request.getParameter("location");
        String gender = request.getParameter("gender");
        Post p = new Post();

        try {
            List<Object[]> posts = p.searchPosts(animalType, age, weight, location, gender);
            request.setAttribute("posts", posts);
            RequestDispatcher dispatcher = request.getRequestDispatcher("showPosts.jsp");
            dispatcher.forward(request, response);


            
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }

        
    }
    
}
