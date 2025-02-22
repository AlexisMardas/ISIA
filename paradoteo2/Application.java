package paradoteo2;

import java.util.List;
import java.util.ArrayList;
import java.sql.*;

public class Application {

    public int id;
    public Date dateOfApplication;
    public boolean previousExperience;
    public boolean otherPets;
    public String comments;
    private User user;

    public Application() {

    }

    public Application(int id, Date dateOfApplication, boolean previousExperience, boolean otherPets, String comments) {
        this.id = id;
        this.dateOfApplication = dateOfApplication;
        this.previousExperience = previousExperience;
        this.otherPets = otherPets;
        this.comments = comments;
    }

    public Application(Date dateOfApplication, boolean previousExperience, boolean otherPets, String comments, User user) {
        this.dateOfApplication = dateOfApplication;
        this.previousExperience = previousExperience;
        this.otherPets = otherPets;
        this.comments = comments;
        this.user = user;
    }

     /* Getters and Setters */

     public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Date getDateOfApplication() {
        return dateOfApplication;
    }

    public void setDateOfApplication(Date dateOfApplication) {
        this.dateOfApplication = dateOfApplication;
    }

    public boolean getPreviousExperience() {
        return previousExperience;
    }

    public void setPreviousExperience(boolean previousExperience) {
        this.previousExperience = previousExperience;
    }

    public boolean getOtherPets() {
        return otherPets;
    }

    public void setOtherPets(boolean otherPets) {
        this.otherPets = otherPets;
    }

    public String getComments() {
        return comments;
    }

    public void setComments(String comments) {
        this.comments = comments;
    }

    public List<Application> showApplications(int postID) throws Exception {

        List<Application> applications = new ArrayList<Application>();

        DbConnection db = new DbConnection();
        Connection con = null;
        String query = "SELECT application.dateOfApplication, application.previousExperience, application.otherPets, application.comments, users.fullName, users.email, users.location, users.phoneNumber "
        + "FROM application "
        + "INNER JOIN users ON application.userID = users.userID "
        + "WHERE application.postID = ?;";


        try {

            con = db.getConnection();

            PreparedStatement stmt = con.prepareStatement(query);
            stmt.setInt(1, postID);
            
            ResultSet rs = stmt.executeQuery();

            while (rs.next()) {
                
                    Date dateOfApplication = rs.getDate("application.dateOfApplication");
                    boolean previousExperience = rs.getBoolean("application.previousExperience");
                    boolean otherPets = rs.getBoolean("application.otherPets");
                    String comments = rs.getString("application.comments");
        
                    // user information
                    String fullName = rs.getString("users.fullName");
                    String email = rs.getString("users.email");
                    String location = rs.getString("users.location");
                    String phoneNumber = rs.getString("users.phoneNumber");
        
                    User user = new User();
                    user.setFullName(fullName);
                    user.setEmail(email);
                    user.setLocation(location);
                    user.setPhoneNumber(phoneNumber);
        
                    // create Application object with User
                    Application application = new Application(dateOfApplication, previousExperience, otherPets, comments, user);
        
                    applications.add(application);

            }

            rs.close();
            stmt.close();
            db.close();

            return applications;

            
        } catch (Exception e) {
            throw new Exception(e.getMessage());
        } finally {
            try {
                db.close();    
            } catch (Exception e) {
                
            }
            
        }       

    } // end of showApplications

    public void submitApplication(int petID, int userID, boolean previousExperience, boolean otherPets, String comments) throws Exception {

        DbConnection db = new DbConnection();
        Connection con = null;
        String sql = "SELECT postID FROM post WHERE petID=?";

        try {
            
            con = db.getConnection();
            PreparedStatement smt = con.prepareStatement(sql);

            // setting parameters
            smt.setInt(1, petID);
            ResultSet rs = smt.executeQuery();
            rs.next();
            int postID = rs.getInt("postID");
    
            Date dateOfApplication = new Date(System.currentTimeMillis());
            String sql2 = "INSERT INTO application (postID, userID, dateOfApplication,previousExperience,otherPets,comments) VALUES (?,?,?,?,?,?);";
            smt = con.prepareStatement(sql2);
            smt.setInt(1,postID);
            smt.setInt(2,userID);
            smt.setDate(3, dateOfApplication);
             smt.setBoolean(4, previousExperience);
            smt.setBoolean(5, otherPets);
            smt.setString(6, comments);
            
            
            smt.executeUpdate();

            smt.close();
            
            db.close();

        } catch (Exception e) {
            throw new Exception(e.getMessage());
        } finally {
            try {
             db.close();   
            } catch (Exception e) {
                
            }           
            
        }

    }

    public void deleteApplications(int postID) throws Exception {

        DbConnection db = new DbConnection();
        Connection con = null;
        String sql = "DELETE FROM application where postID=?;";

        try {
            
            con = db.getConnection();
            PreparedStatement smt = con.prepareStatement(sql);

            // setting parameters
            smt.setInt(1, postID);            
            
            smt.executeUpdate();

            smt.close();
            db.close();

        } catch (Exception e) {
            throw new Exception(e.getMessage());
        } finally {
            try {
             db.close();   
            } catch (Exception e) {
                
            }           
            
        }

    }


}
