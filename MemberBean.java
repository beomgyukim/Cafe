package member;

public class MemberBean {
	
	private int no;
	private String name;
	private String id;
	private String password;
	private String repassword;
	private int phone1;
	private int phone2;
	private int phone3;
	private String email;
	
	

	public MemberBean(int no, String name, String id, String password, String repassword, int phone1, int phone2,
			int phone3, String email) {
		super();
		this.no = no;
		this.name = name;
		this.id = id;
		this.password = password;
		this.repassword = repassword;
		this.phone1 = phone1;
		this.phone2 = phone2;
		this.phone3 = phone3;
		this.email = email;
	}



	public int getNo() {
		return no;
	}



	public void setNo(int no) {
		this.no = no;
	}



	public String getName() {
		return name;
	}



	public void setName(String name) {
		this.name = name;
	}



	public String getId() {
		return id;
	}



	public void setId(String id) {
		this.id = id;
	}



	public String getPassword() {
		return password;
	}



	public void setPassword(String password) {
		this.password = password;
	}



	public String getRepassword() {
		return repassword;
	}



	public void setRepassword(String repassword) {
		this.repassword = repassword;
	}



	public int getPhone1() {
		return phone1;
	}



	public void setPhone1(int phone1) {
		this.phone1 = phone1;
	}



	public int getPhone2() {
		return phone2;
	}



	public void setPhone2(int phone2) {
		this.phone2 = phone2;
	}



	public int getPhone3() {
		return phone3;
	}



	public void setPhone3(int phone3) {
		this.phone3 = phone3;
	}



	public String getEmail() {
		return email;
	}



	public void setEmail(String email) {
		this.email = email;
	}



	public MemberBean() {
		
	}
	

	
}
