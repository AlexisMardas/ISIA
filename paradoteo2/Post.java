package paradoteo2;
import java.sql.*;
import java.util.List;
import java.util.ArrayList;


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
        String query = "SELECT petID, pname, location, photo FROM pet WHERE ";
        // Ensure the integrity of the parameters
        if (animal == "") {
            query += " animalType = animaltype";
        } else {
            query += " animalType = " + animal;
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
            query += " AND gender = gender";
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

   

    
    


    
}
