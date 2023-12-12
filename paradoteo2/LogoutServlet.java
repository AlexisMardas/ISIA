package paradoteo2;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class LogoutServlet extends HttpServlet {

    // It will be invoked by a link
    public void doGet (HttpServletRequest request, HttpServletResponse response)
    throws IOException, ServletException { 

        HttpSession session = request.getSession(true);
        session.invalidate();
        response.sendRedirect("home.jsp");


    }
}
