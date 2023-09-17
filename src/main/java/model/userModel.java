package model;

public class userModel {

	private int id;
	private String name,email,gender,hobby,address,passsword;
	private long contact;
	/**
	 * @return the id
	 */
	public int getId() {
		return id;
	}
	/**
	 * @return the address
	 */
	public String getAddress() {
		return address;
	}
	/**
	 * @param address the address to set
	 */
	public void setAddress(String address) {
		this.address = address;
	}
	/**
	 * @param id the id to set
	 */
	public void setId(int id) {
		this.id = id;
	}
	/**
	 * @return the name
	 */
	public String getName() {
		return name;
	}
	/**
	 * @param name the name to set
	 */
	public void setName(String name) {
		this.name = name;
	}
	/**
	 * @return the email
	 */
	public String getEmail() {
		return email;
	}
	/**
	 * @param email the email to set
	 */
	public void setEmail(String email) {
		this.email = email;
	}
	/**
	 * @return the gender
	 */
	public String getGender() {
		return gender;
	}
	/**
	 * @param gender the gender to set
	 */
	public void setGender(String gender) {
		this.gender = gender;
	}
	/**
	 * @return the hobby
	 */
	public String getHobby() {
		return hobby;
	}
	/**
	 * @param hobby the hobby to set
	 */
	public void setHobby(String hobby) {
		this.hobby = hobby;
	}
	/**
	 * @return the passsword
	 */
	public String getPasssword() {
		return passsword;
	}
	/**
	 * @param passsword the passsword to set
	 */
	public void setPasssword(String passsword) {
		this.passsword = passsword;
	}
	/**
	 * @return the contact
	 */
	public long getContact() {
		return contact;
	}
	/**
	 * @param contact the contact to set
	 */
	public void setContact(long contact) {
		this.contact = contact;
	}
	@Override
	public String toString() {
		return "userModel [id=" + id + ", name=" + name + ", email=" + email + ", gender=" + gender + ", hobby=" + hobby
				+ ", address=" + address + ", passsword=" + passsword + ", contact=" + contact + "]";
	}
	
}
