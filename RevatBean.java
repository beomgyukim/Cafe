package revat;

public class RevatBean {

	private int rno;
	private String rname;
	private String rnum;
	private String rdate;
	private String rtime;
		
	public RevatBean(int rno, String rname, String rnum, String rdate, String rtime) {
		super();
		this.rno = rno;
		this.rname = rname;
		this.rnum = rnum;
		this.rdate = rdate;
		this.rtime = rtime;
	}

	RevatBean(){
		
	}
	
	public int getRno() {
		return rno;
	}
	public void setRno(int rno) {
		this.rno = rno;
	}
	public String getRname() {
		return rname;
	}
	public void setRname(String rname) {
		this.rname = rname;
	}
	public String getRnum() {
		return rnum;
	}
	public void setRnum(String rnum) {
		this.rnum = rnum;
	}
	public String getRdate() {
		return rdate;
	}
	public void setRdate(String rdate) {
		this.rdate = rdate;
	}
	public String getRtime() {
		return rtime;
	}
	public void setRtime(String rtime) {
		this.rtime = rtime;
	}
	
	
}
