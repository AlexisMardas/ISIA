package paradoteo2;

import java.io.*;


import javax.servlet.*;
import javax.servlet.http.*;
import org.apache.commons.fileupload.*;
import org.apache.commons.fileupload.disk.*;
import org.apache.commons.fileupload.servlet.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class UploadServlet extends HttpServlet {

    public void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {

        HttpSession session = request.getSession(true);
        User user = (User) session.getAttribute("authenticatedUser");
        int userId = user.getUserId();

        DiskFileItemFactory factory = new DiskFileItemFactory();
        factory.setSizeThreshold(4096);
        ServletContext servletContext = this.getServletConfig().getServletContext();
        File repository = (File) servletContext.getAttribute("javax.servlet.context.tempdir"); 
        factory.setRepository(repository);

        ServletFileUpload upload = new ServletFileUpload(factory);
        Map<String, String> paramMap = new HashMap<String, String>();
        try {
            List<FileItem> items =  upload.parseRequest(request);
            for (FileItem item : items ) {
                // If the item is a simple form field
                if (item.isFormField()) {
                    String name = item.getFieldName();
                    String value = item.getString();
                    paramMap.put(name, value);
                // If the item is an uploaded file
                } else {
                    String fieldName = item.getFieldName();
                    String fileName = item.getName();
                    paramMap.put(fieldName, fileName);
                    File image = new File("C:/Program Files/Apache Software Foundation/Tomcat 6.0/webapps/ismgroup28/images/"+fileName);
                    item.write(image);
                    

                }

            }

        } catch (Exception e) {
            System.out.println(e.getMessage());
        }

        String petKind = paramMap.get("petKind");
        int petAge = Integer.parseInt(paramMap.get("petAge"));
        double petWeight = Double.parseDouble(paramMap.get("petWeight"));
        String petGender = paramMap.get("petGender");
        String petName = paramMap.get("petName");
        String petColor = paramMap.get("petColor");
        String location = paramMap.get("location");
        boolean vaccinated = "yes".equals(paramMap.get("vaccinated"));
        boolean chronicDisease = "yes".equals(paramMap.get("chronicDisease"));
        boolean chipped = "yes".equals(paramMap.get("chipped"));
        boolean altered = "yes".equals(paramMap.get("altered"));
        String petDescription = paramMap.get("petDescription");
        String photo = paramMap.get("petPhoto");

        Post post = new Post();
        post.createPost(userId, petKind, petAge, petWeight, petGender, petName, petColor, location,
                vaccinated, chronicDisease, chipped, altered, photo, petDescription);
        response.sendRedirect("MyPostsServlet");

    }
    
}
