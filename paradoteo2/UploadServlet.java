package paradoteo2;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Enumeration;
import java.util.List;


public class UploadServlet extends HttpServlet {

    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      try {
        HttpSession session = request.getSession(true);
        User user = (User) session.getAttribute("authenticatedUser");
        int userId = user.getUserId();

        String petKind = request.getParameter("petKind");
        int petAge = Integer.parseInt(request.getParameter("petAge"));
        double petWeight = Double.parseDouble(request.getParameter("petWeight"));
        String petGender = request.getParameter("petGender");
        String petName = request.getParameter("petName");
        String petColor = request.getParameter("petColor");
        String location = request.getParameter("location");
        boolean vaccinated = "yes".equals(request.getParameter("vaccinated"));
        boolean chronicDisease = "yes".equals(request.getParameter("chronicDisease"));
        boolean chipped = "yes".equals(request.getParameter("chipped"));
        boolean altered = "yes".equals(request.getParameter("altered"));
        String petDescription = request.getParameter("petDescription");

        InputStream inputStream = request.getInputStream();
        String uploadPath = getServletContext().getRealPath("") + File.separator + "images";

        String timestamp = new SimpleDateFormat("yyyyMMddHHmmssSSS").format(new Date());
        String fileName = "uploadedFile_" + timestamp + ".jpg";
        String filePath = uploadPath + File.separator + fileName;

        try (OutputStream outputStream = new FileOutputStream(new File(filePath))) {
            int read;
            byte[] bytes = new byte[1024];

            while ((read = inputStream.read(bytes)) != -1) {
                outputStream.write(bytes, 0, read);
            }
        }

        Post post = new Post();
        post.createPost(userId, petKind, petAge, petWeight, petGender, petName, petColor, location,
                vaccinated, chronicDisease, chipped, altered, fileName, petDescription);

        response.sendRedirect("home.jsp");
      } catch (Exception e) {
        
        e.printStackTrace();
       
      }

    }
}
