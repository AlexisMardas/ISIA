package paradoteo2;
import java.sql.*;
import java.util.List;
import java.util.ArrayList;
import java.util.Calendar;


public class Post {
    private String status;
    private int id;
    private Date dateOfPost;
    private Pet pet;
    private int userId;

    public Post() {

    }


    public Post(String status, int id, Date dateOfPost, Pet pet, int userId) {
        this.status = status;
        this.id = id;
        this.dateOfPost = dateOfPost;
        this.pet = pet;
        this.userId = userId;
    }


    public String getStatus() {
        return status;
    }


    public int getUserId() {
        return userId;
    }

    public int getId() {
        return id;
    }


    public Date getDateOfPost() {
        return dateOfPost;
    }

    
    public Pet getPet() {
        return pet;
    }

    public List<Object[]> searchPosts(String animal, String age, String weight, String location, String gender) throws Exception {
        List<Object[]> pets = new ArrayList<Object[]>();
        DbConnection db = new DbConnection();
        Connection con = null;
        PreparedStatement stmt = null;
        String query = "SELECT pet.petID, pname, location, photo FROM pet, post WHERE pet.petID = post.petID AND post.pstatus = \"accepted\" ";
        // Ensure the integrity of the parameters
        if (animal == "") {
            query += " AND animalType = animaltype";
        } else {
            query += " AND animalType = " + "\"" + animal + "\"";
        }

        if (age == "") {
            query += " AND age = age"; 
        } else if (age == "2") {
            query += " AND age <= 2 ";
        } else if (age == "5") {
            query += " AND age > 2 AND age <= 5 ";
        } else if (age == "10") {
            query += " AND age > 5 AND age <=  10 ";
        } else {
             query += " AND age > 10 ";
        }

        if (weight == "") {
            query += " AND weight = weight ";
        } else if (weight == "5") {
            query += " AND weight <= 5 ";
        } else if (weight == "10") {
            query += " AND weight > 5  AND weight <= 10 ";
        } else if (weight == "20") {
            query += " AND weight > 10 AND weight <= 20 ";
        } else if (weight == "40") {
            query += " AND weight > 20 AND weight <= 40 ";
        } else {
            query += " AND weight > 40 ";
        }

        query += " AND location = ? ";

        if (gender == "") {
            query += " AND gender = gender ;";
        } else {
            query += " AND gender = " + "\"" + gender + "\" ;";
        }
        System.out.println(query);

        try {
            con = db.getConnection();
            stmt = con.prepareStatement(query);
            stmt.setString(1, location);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                Object [] array = new Object[4];
                array[0] = rs.getInt("petId");
                array[1] = rs.getString("pname");
                array[2] = rs.getString("location");
                array[3] = rs.getBlob("photo");
                pets.add(array);
                
            }
            rs.close();
            stmt.close();
            return pets;
            
        } catch (Exception e) {
            throw new Exception(e.getMessage());
        } finally {
            try {
                db.close();
            } catch (Exception e) {
               
            }


        }

    }


    public Pet findpet (int id) throws Exception {
        Pet pet = null;
        DbConnection db = new DbConnection();
        PreparedStatement stmt = null;
        Connection con = null;
        String query = "SELECT * FROM pet WHERE petID = ? ;";
        try {
            con = db.getConnection();
            stmt = con.prepareStatement(query);
            stmt.setInt(1, id);
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                int petID = rs.getInt("petID");
                int age = rs.getInt("age");
                double weight = rs.getDouble("weight");
                String location = rs.getString("location");
                String gender = rs.getString("gender");
                String pname = rs.getString("pname");
                String mainColor = rs.getString("mainColor");
                Blob photo = rs.getBlob("photo");
                boolean fullyVaccinated = rs.getBoolean("fullyVaccinated");
                boolean chronicDesease = rs.getBoolean("chronicDesease");
                boolean sterilized = rs.getBoolean("sterilized");
                boolean chipped = rs.getBoolean("chipped");
                String description = rs.getString("description");
                String animalType = rs.getString("animalType");
                pet = new Pet(petID, animalType, age, weight, location, gender, pname, mainColor, photo, fullyVaccinated, chronicDesease, sterilized, chipped, description);

            } else {
                con.close();
                stmt.close();
                db.close();
                throw new Exception("There is no pet with this id");
            }
            con.close();
            stmt.close();
            return pet;

        } catch (SQLException e) {
            throw new Exception("Could not connect to database");
            
        } finally {

            try {
                db.close();

            } catch (Exception e) {
            
            }

        }
    

    }


    public List<Pet> showPendingPosts () {
        List<Pet> pending = new ArrayList<Pet>();
        DbConnection db = new DbConnection();
        PreparedStatement stmt = null;
        Connection con = null;
        String query = "SELECT pet.* FROM pet, post WHERE pet.petID = post.petID AND pstatus = \"pending\" ;";
        try {
            con = db.getConnection();
            stmt = con.prepareStatement(query);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                int petID = rs.getInt("petID");
                int age = rs.getInt("age");
                double weight = rs.getDouble("weight");
                String location = rs.getString("location");
                String gender = rs.getString("gender");
                String pname = rs.getString("pname");
                String mainColor = rs.getString("mainColor");
                Blob photo = rs.getBlob("photo");
                boolean fullyVaccinated = rs.getBoolean("fullyVaccinated");
                boolean chronicDesease = rs.getBoolean("chronicDesease");
                boolean sterilized = rs.getBoolean("sterilized");
                boolean chipped = rs.getBoolean("chipped");
                String description = rs.getString("description");
                String animalType = rs.getString("animalType");
                pet = new Pet(petID, animalType, age, weight, location, gender, pname, mainColor, photo, fullyVaccinated, chronicDesease, sterilized, chipped, description);
                pending.add(pet);
            }
            stmt.close();
            rs.close();
            return pending;


        } catch (Exception e) {
            System.out.println(e.getMessage());
        } finally {
            try {
                db.close();
        
            } catch (Exception e) {
                
            }
            return pending;
        }

    }


    public void makeDecision(int petID, String decision) {
        DbConnection db = new DbConnection();
        PreparedStatement stmt = null;
        Connection con = null;
        String query = "UPDATE post SET pstatus =? WHERE petID=? ;";
        try {
            con = db.getConnection();
            stmt = con.prepareStatement(query);
            stmt.setInt(2, petID);
            stmt.setString(1, decision);
            stmt.executeUpdate();
            stmt.close();

            
        } catch (Exception e) {
           System.out.println(e.getMessage());
        } finally {
            try {
                db.close();
            } catch (Exception e) {
            
            }
            
        }

    }

    public List<Object[]> showMyPosts (int userID) {
        List<Object[]> myposts = new ArrayList<Object[]>();
        DbConnection db = new DbConnection();
        PreparedStatement stmt = null;
        Connection con = null;
        String query = "SELECT postID, dateOfPost, pname, photo FROM post, pet WHERE post.petID = pet.petID AND userID=? ;";
        try {
            con =  db.getConnection();
            stmt = con.prepareStatement(query);
            stmt.setInt(1, userID);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                Object [] info = new Object[4];
                info[0] = rs.getInt("postID");
                info[1] = rs.getDate("dateOfPost"); 
                info[2] = rs.getString("pname");
                info[3] = rs.getBlob("photo");
                myposts.add(info);
            }
            stmt.close();
            rs.close();
            return myposts;
            
        } catch (Exception e) {
            System.out.println(e.getMessage());
        } finally {
            try {
                db.close();
            } catch (Exception e) {
                
            }
            return myposts;
        }

    }


    public void deletePost(int postID) {
        DbConnection db = new DbConnection();
        PreparedStatement stmt = null;
        Connection con = null;

        // Application app = new Application();
        // app.deleteApplications(postID);

        String query = "DELETE FROM post WHERE postID=? ;";
        try {
            con = db.getConnection();
            stmt = con.prepareStatement(query);
            stmt.setInt(1, postID);
            stmt.executeUpdate();
            stmt.close();
        } catch (Exception e) {
            System.out.println(e.getMessage());
            
        } finally {
            try {
                db.close();
            } catch (Exception e) {
              
            }
        }

    } 

    // Handling of request parameters, should be done before this method is called.

    public void createPost (int userID, String animalType, int age, double weight, String gender, String pname,
        String mainColor, String location, boolean fullyVaccinated, boolean chronicDesease, boolean chipped, boolean sterilized, 
        Blob photo, String description )  {

        DbConnection db = new DbConnection();
        PreparedStatement stmt = null;
        Connection con = null;
        String query = "INSERT INTO pet (age, weight, gender, pname, mainColor, location, fullyVaccinated,"
            + " chronicDesease, chipped, sterilized, photo, description, animalType) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?);";
        try {
            con = db.getConnection();
            stmt = con.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);
            stmt.setInt(1, age);
            stmt.setDouble(2, weight);
            stmt.setString(3, gender);
            stmt.setString(4, pname);
            stmt.setString(5, mainColor);
            stmt.setString(6, location);
            stmt.setBoolean(7,fullyVaccinated);
            stmt.setBoolean(8,chronicDesease);
            stmt.setBoolean(9,chipped);
            stmt.setBoolean(10,sterilized);
            stmt.setBlob(11, photo);
            stmt.setString(12, description);
            stmt.setString(13, animalType);
            stmt.executeUpdate();
            ResultSet rs = stmt.getGeneratedKeys();
            rs.next();
            int petID = rs.getInt(1);
            Date date = new Date(System.currentTimeMillis());
            String query2 = "INSERT INTO post (petID,userID,pstatus,dateOfPost) VALUES (?,?,?,?);"; 
            stmt = con.prepareStatement(query2);
            stmt.setInt(1,petID);
            stmt.setInt(2,userID);
            stmt.setString(3, "pending");
            stmt.setDate(4, date);
            stmt.executeUpdate();
            stmt.close();
            rs.close();

        } catch (Exception e) {
            System.out.println(e.getMessage());
        } finally {

           try {
            db.close();
           } catch (Exception e) {
            
           }

        }

    }




   

    
    


    
}
