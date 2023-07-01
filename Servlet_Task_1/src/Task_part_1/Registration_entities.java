package Task_part_1;

public class Registration_entities {

	private int id;
	private String fname;
	private String lname;
	private String dob;
	private String gender;
	private String mobile;
	private String email;
	private String password;
	private String bloodGroup;
	private String address;
	private String pincode;
	
	public Registration_entities() {
		// TODO Auto-generated constructor stub
	}

	public Registration_entities(String fname, String password) {

	}

	public Registration_entities(int id, String fname, String lname, String dob, String gender, String mobile,
			String email, String password, String bloodGroup, String address, String pincode) {
		super();
		this.id = id;
		this.fname = fname;
		this.lname = lname;
		this.dob = dob;
		this.gender = gender;
		this.mobile = mobile;
		this.email = email;
		this.password = password;
		this.bloodGroup = bloodGroup;
		this.address = address;
		this.pincode = pincode;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFname() {
		return fname;
	}

	public void setFname(String fname) {
		this.fname = fname;
	}

	public String getLname() {
		return lname;
	}

	public void setLname(String lname) {
		this.lname = lname;
	}

	public String getDob() {
		
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getBloodGroup() {
		return bloodGroup;
	}

	public void setBloodGroup(String bloodGroup) {
		this.bloodGroup = bloodGroup;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPincode() {
		return pincode;
	}

	public void setPincode(String pincode) {
		this.pincode = pincode;
	}

}
