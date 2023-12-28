package paradoteo2;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;


public class DeletePostServlet extends HttpServlet {
    public void doGet (HttpServletRequest request, HttpServletResponse response)
    throws IOException, ServletException {

        int postID = Integer.parseInt(request.getParameter("postID"));
        Post p = new Post();
        p.deletePost(postID);
        response.sendRedirect("MyPostsServlet");



    }
    
}
