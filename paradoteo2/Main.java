package paradoteo2;
import java.util.List;

public class Main {
    public static void main(String[] args) {
        Post p = new Post();
        try {
            List<Object[]> pets = p.searchPosts("", "10", "20","Athens", "F");
            System.out.println(Integer.toString(pets.size()));
            for (Object[] pet : pets) {
                System.out.println((String) pet[1] + ":" + (String) pet[2]);
            }
            
        } catch (Exception e) {
            System.out.println(e.getMessage());

        } 

        
    }
    
}
