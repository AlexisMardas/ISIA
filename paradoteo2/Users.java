package paradoteo2;
import java.sql.*;



public class Users {
    private String fullName;
    private int userId; 
    private String email;
    private String phoneNumber;
    private String location;
    private Date dob;
    private String username; 
    private String password;
    private boolean isAdmin;

  
    public Users(String fullName, int userId, String email, String phoneNumber, String location,
                 Date dob, String username, String password, boolean isAdmin) {
        this.fullName = fullName;
        this.userId = userId;
        this.email = email;
        this.phoneNumber = phoneNumber;
        this.location = location;
        this.dob = dob;
        this.username = username;
        this.password = password;
        this.isAdmin = isAdmin;
    }




    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public Date getDob() {
        return dob;
    }

    public void setDob(Date dob) {
        this.dob = dob;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public boolean isAdmin() {
        return isAdmin;
    }

    public void setAdmin(boolean isAdmin) {
        this.isAdmin = isAdmin;
    }


	public Users verifyUser(String username, String password) throws Exception {
		Users user = null;
		DbConnection db = new DbConnection();
		Connection con = null;
		PreparedStatement stmt = null;
		String query = "SELECT * FROM Users WHERE username =? AND password=? AND isAdmin=0;";

		try {
			con = db.getConnection();
			stmt = con.prepareStatement(query);
			stmt.setString(1, username);
			stmt.setString(2, password);
			ResultSet rs = stmt.executeQuery();
			if (rs.next()) {
				String fullName = rs.getString("fullName");
				int userId = rs.getInt("userId");
				String email = rs.getString("email");
				String phoneNumber = rs.getString("phoneNumber");
                String location = rs.getString("location");
				String pasword = rs.getString("pasword");
				user = new Users(fullName, userId, email, phoneNumber, location,
                 dob, username, pasword, isAdmin);
			} else {
				rs.close();
				stmt.close();
				db.close();
                throw new Exception("Wrong username or password");
			}
			rs.close();
			stmt.close();
			db.close();
			return user;
			
		} catch (Exception e) {
			throw new Exception("Could not connect with database .");

		} finally {
			try {
				con.close();
				
			} catch (Exception e) {
				
			}
		}
			
		
	} //End of verify



    public Users verifAdmin(String username, String password) throws Exception {
		Users user = null;
		DbConnection db = new DbConnection();
		Connection con = null;
		PreparedStatement stmt = null;
		String query = "SELECT * FROM Users WHERE username =? AND password=? AND isAdmin=1;";

		try {
			con = db.getConnection();
			stmt = con.prepareStatement(query);
			stmt.setString(1, username);
			stmt.setString(2, password);
			ResultSet rs = stmt.executeQuery();
			if (rs.next()) {
				String fullName = rs.getString("fullName");
				int userId = rs.getInt("userId");
				String email = rs.getString("email");
				String phoneNumber = rs.getString("phoneNumber");
                String location = rs.getString("location");
				String pasword = rs.getString("pasword");
				user = new Users(fullName, userId, email, phoneNumber, location,
                 dob, username, pasword, isAdmin);
			} else {
				rs.close();
				stmt.close();
				db.close();
                throw new Exception("Wrong username or password");
			}
			rs.close();
			stmt.close();
			db.close();
			return user;
			
		} catch (Exception e) {
			throw new Exception("Could not connect with database .");

		} finally {
			try {
				con.close();
				
			} catch (Exception e) {
				
			}
		}
			
		
	} //End of verifyAdmin



    public void register(Users user) throws Exception {	
		DbConnection db = new DbConnection();
		String fullName = user.getFullName();
		String phoneNumber = user.getPhoneNumber();
		String email = user.getEmail();
        String location = user.getLocation();
        Date dob = user.getDob();
		String username = user.getUsername();
		String password = user.getPassword();
		Connection con = null;
		PreparedStatement stmt = null;
		String query1 = "SELECT * FROM users WHERE username=?;";

		try {
			con = db.getConnection();
			stmt = con.prepareStatement(query1);
			stmt.setString(1, username);
			
			ResultSet rs = stmt.executeQuery();
			if (rs.next()) {
				stmt.close();
				rs.close();
				db.close();
				throw new Exception("Sorry, username or email already registered");
			} else {
				String query2 = "INSERT INTO users (fullName, phoneNumber, email, username, password, location, dob)"
				    +" VALUES (?,?,?,?,?,?,?) ; ";
				stmt = con.prepareStatement(query2);
				stmt.setString(1, fullName);
				stmt.setString(2, phoneNumber);
				stmt.setString(3, email);
				stmt.setString(4, username);
				stmt.setString(5, password);
                stmt.setString(6, location);
                stmt.setDate(7, dob);
				stmt.executeUpdate();
			}
			rs.close();
			stmt.close();
			db.close();
			
		} catch (Exception e) {
			throw new Exception("Could not connect to database.");

		} finally {
			try {
				db.close();
				
			} catch (Exception e) {
				
			}
		}
			

		
		
	}//end of register






}
