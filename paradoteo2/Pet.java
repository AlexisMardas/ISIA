package paradoteo2;
import java.sql.*;
// Changed image to Blob for compatibility with database ???

public class Pet {
    private int petid;
	private int age;
	private double weight;
	private String location;
	private String gender;
    private String pname;
	private String maincolor;
	private Blob  photo;
	private boolean fullyVaccinated;
	private boolean chronicdesease;
    private boolean sterilized;
	private boolean chipped;
    private String description;
    private String animalType;


    public Pet() {
        
    }


    //Constructor
    public Pet(int petid, String animalType, int age, double weight, String location, String gender, String pname, String maincolor,
            Blob photo, boolean fullyVaccinated, boolean chronicdesease, boolean sterilized, boolean chipped,
            String description) {
        this.petid = petid;
        this.age = age;
        this.weight = weight;
        this.location = location;
        this.gender = gender;
        this.pname = pname;
        this.maincolor = maincolor;
        this.photo = photo;
        this.fullyVaccinated = fullyVaccinated;
        this.chronicdesease = chronicdesease;
        this.sterilized = sterilized;
        this.chipped = chipped;
        this.description = description;
        this.animalType = animalType;

   
    //End Constructor

    //Setters and Getters
    }
    public int getPetid() {
        return petid;
    }
    public void setPetid(int petid) {
        this.petid = petid;
    }
    public int getAge() {
        return age;
    }
    public void setAge(int age) {
        this.age = age;
    }
    public double getWeight() {
        return weight;
    }
    public void setWeight(float weight) {
        this.weight = weight;
    }
    public String getLocation() {
        return location;
    }
    public void setLocation(String location) {
        this.location = location;
    }
    public String getGender() {
        return gender;
    }
    public void setGender(String gender) {
        this.gender = gender;
    }
    public String getPname() {
        return pname;
    }
    public void setPname(String pname) {
        this.pname = pname;
    }
    public String getAnimalType() {
        return animalType;
    }


    public void setAnimalType(String animalType) {
        this.animalType = animalType;
    }


    public String getMaincolor() {
        return maincolor;
    }
    public void setMaincolor(String maincolor) {
        this.maincolor = maincolor;
    }
    public Blob getPhoto() {
        return photo;
    }
    public void setPhoto(Blob photo) {
        this.photo = photo;
    }
    public boolean isFullyVaccinated() {
        return fullyVaccinated;
    }
    public void setFullyVaccinated(boolean fullyVaccinated) {
        this.fullyVaccinated = fullyVaccinated;
    }
    public boolean isChronicdesease() {
        return chronicdesease;
    }
    public void setChronicdesease(boolean chronicdesease) {
        this.chronicdesease = chronicdesease;
    }
    public boolean isSterilized() {
        return sterilized;
    }
    public void setSterilized(boolean sterilized) {
        this.sterilized = sterilized;
    }
    public boolean isChipped() {
        return chipped;
    }
    public void setChipped(boolean chipped) {
        this.chipped = chipped;
    }
    public String getDescription() {
        return description;
    }
    public void setDescription(String description) {
        this.description = description;
    }

     
    
}
