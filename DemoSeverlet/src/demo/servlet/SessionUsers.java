package demo.servlet;

public class SessionUsers {
	private String address, email;

	public SessionUsers(String address, String email) {
		super();
		this.address = address;
		this.email = email;
	}

	public SessionUsers() {
		super();
		// TODO Auto-generated constructor stub
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	

}
