package paradoteo2;

import java.io.*;
import java.sql.Date;
import javax.servlet.*;
import javax.servlet.http.*;


@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2MB
                 maxFileSize = 1024 * 1024 * 10,      // 10MB
                 maxRequestSize = 1024 * 1024 * 50)   // 50MB

public class UploadServlet extends HttpServlet implements Part {

    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession(true);
        User user = (User) session.getAttribute("authenticatedUser");
        int userID = user.getUserId();

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

        // Handling image upload
        Part filePart = request.getPart("petPhoto");
        String fileName = extractFileName(filePart);

        // Save the image file in the "images" directory
        String uploadPath = getServletContext().getRealPath("") + File.separator + "images";
        File uploadDir = new File(uploadPath);
        if (!uploadDir.exists()) {
            uploadDir.mkdir();
        }
        String filePath = uploadPath + File.separator + fileName;
        filePart.write(filePath);

        String photo = fileName;

        try {

        Post post = new Post();
        post.createPost(userID, petKind, petAge, petWeight, petGender, petName, petColor,
                location, vaccinated, chronicDisease, chipped, altered, photo, petDescription);

        response.sendRedirect("home.jsp");

        } catch (Exception e) {
           // TODO: handle exception
        }
    }

    private String extractFileName(Part part) {
        String contentDisp = part.getHeader("content-disposition");
        String[] tokens = contentDisp.split(";");
        for (String token : tokens) {
            if (token.trim().startsWith("filename")) {
                return token.substring(token.indexOf("=") + 2, token.length() - 1);
            }
        }
        return "";
    }
}
