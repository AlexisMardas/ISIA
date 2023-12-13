package paradoteo2;
import java.sql.Date;
import java.util.List;

public class Main {
    public static void main(String[] args) {
        // Testing class Post
        Post p = new Post();
        try {
            List<Object[]> pets = p.searchPosts("dog", "5", "40","Zografos", "M");
            System.out.println(Integer.toString(pets.size()));
            for (Object[] pet : pets) {
                System.out.println((String) pet[1] + ":" + (String) pet[2]);
                Pet specific = p.findpet( (int) pet[0] );
                System.out.println(specific.getPname() +":" + specific.getDescription());
            }
            List<Pet> pending = p.showPendingPosts();
            for (Pet pet : pending) {
                System.out.println(pet.getPname());
            }
            p.makeDecision(10,"pending");
            List<Object[]> myposts = p.showMyPosts(6);
            for (Object[] post : myposts) {
                System.out.println(Integer.toString((int) post[0]));
            }

            p.createPost(8, "dog", 5, 20.43, "M", "Please Work again", "yellow", "Zografos", true, false, true, false, null, "If this works I'll go to bed");
            
            
        } catch (Exception e) {
            System.out.println(e.getMessage());

        } 

        /* Testing class user
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
        */
        
        

        
    }
    
}
