package paradoteo2;

import java.util.List;
import java.util.ArrayList;
import java.sql.*;

public class Application {

    public int id;
    public String dateOfApplication;
    public boolean previousExperience;
    public boolean otherPets;
    public String comments;

    private User user;

    public Application(int id, String dateOfApplication, boolean previousExperience, boolean otherPets, String comments) {
        this.id = id;
        this.dateOfApplication = dateOfApplication;
        this.previousExperience = previousExperience;
        this.otherPets = otherPets;
        this.comments = comments;
    }

    public Application(String dateOfApplication, boolean previousExperience, boolean otherPets, String comments, User user) {
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

    public String getDateOfApplication() {
        return dateOfApplication;
    }

    public void setDateOfApplication(String dateOfApplication) {
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

        List<Application> applications = new ArrayList<>();

        DbConnection db = new DbConnection();
        Connection con = null;
        String query = "SELECT application.dateOfApplication, application.previousExperience, application.otherPets, application.comments, users.username, users.email, users.location, users.phoneNumber "
        + "FROM application "
        + "INNER JOIN users ON application.userID = users.userID "
        + "WHERE application.postID = ?;";


        try {

            con = db.getConnection();

            PreparedStatement stmt = con.prepareStatement(query);
            stmt.setInt(1, postID);// na sundethei me tin post
            
            ResultSet rs = stmt.executeQuery();

            while (rs.next()) {

                while (rs.next()) {
                    String dateOfApplication = rs.getString("application.dateOfApplication");
                    boolean previousExperience = rs.getBoolean("application.previousExperience");
                    boolean otherPets = rs.getBoolean("application.otherPets");
                    String comments = rs.getString("application.comments");
        
                    // user information
                    String username = rs.getString("users.username");
                    String email = rs.getString("users.email");
                    String location = rs.getString("users.location");
                    String phoneNumber = rs.getString("users.phoneNumber");
        
                    User user = new User();
                    user.setUsername(username);
                    user.setEmail(email);
                    user.setLocation(location);
                    user.setPhoneNumber(phoneNumber);
        
                    // create Application object with User
                    Application application = new Application(dateOfApplication, previousExperience, otherPets, comments, user);
        
                    applications.add(application);
                }

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

    public void submitApplication(Application application) throws Exception {

        DbConnection db = new DbConnection();
        Connection con = null;
        String sql = "INSERT INTO application (id,dateOfApplication,previousExperience,otherPets,comments) VALUES (?,?,?,?,?);";

        try {
            
            con = db.getConnection();
            PreparedStatement smt = con.prepareStatement(sql);

            // setting parameters
            smt.setInt(1, application.getId());
            smt.setString(2, application.getDateOfApplication());
            smt.setBoolean(3, application.getPreviousExperience());
            smt.setBoolean(4, application.getOtherPets());
            smt.setString(5, application.getComments());
            
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

    public void deleteApplication(int id) throws Exception {

        DbConnection db = new DbConnection();
        Connection con = null;
        String sql = "DELETE FROM application where id=?;";

        try {
            
            con = db.getConnection();
            PreparedStatement smt = con.prepareStatement(sql);

            // setting parameters
            smt.setInt(1, id);            
            
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
