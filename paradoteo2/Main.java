package paradoteo2;
import java.sql.Date;
import java.util.List;

public class Main {
    public static void main(String[] args) {
        Post p = new Post();
        try {
            List<Object[]> pets = p.searchPosts("dog", "10", "20","Athens", "F");
            System.out.println(Integer.toString(pets.size()));
            for (Object[] pet : pets) {
                System.out.println((String) pet[1] + ":" + (String) pet[2]);
            }
            
        } catch (Exception e) {
            System.out.println(e.getMessage());

        } 

        User user = new User();
        try {
            User verified = user.verifyUser("geolon6", "g1996l");
            System.out.println(verified.getFullName());
            User admin = user.verifyAdmin("sylviapanou", "sp202202");
            System.out.println(admin.getFullName());
            User bastard = new User("Patrick Auda", "audaauda@auda.cz", "6969231540", "Ano Liosia", new Date(1985, 12, 25), "pauda" , "qwerty");
            user.register(bastard);
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        
        

        
    }
    
}
