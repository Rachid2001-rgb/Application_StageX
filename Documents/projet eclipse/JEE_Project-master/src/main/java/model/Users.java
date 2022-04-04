package model;

//@Entity
//@Table(name = "users")
public class Users {
	//@Id
	private long id;
    private String nom;
    private String prenom;
    private String email;
    private String pass;
    private int role;
    
    
    public Users(long id, String nom, String prenom, String email, String pass) {
		super();
		this.id = id;
		this.nom = nom;
		this.prenom = prenom;
		this.email = email;
		this.pass = pass;
	}
    
    
	public Users(long id, String nom, String prenom, String email, String pass, int role) {
		super();
		this.id = id;
		this.nom = nom;
		this.prenom = prenom;
		this.email = email;
		this.pass = pass;
		this.role = role;
	}
    public Users() {
    	
    }

	public long getId() {
		return id;
	}


	public void setId(long id) {
		this.id = id;
	}


	public String getNom() {
		return nom;
	}


	public void setNom(String nom) {
		this.nom = nom;
	}


	public String getPrenom() {
		return prenom;
	}


	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getPass() {
		return pass;
	}


	public void setPass(String pass) {
		this.pass = pass;
	}


	public int getRole() {
		return role;
	}


	public void setRole(int role) {
		this.role = role;
	}

    
}
