package revat;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import member.MemberBean;

public class RevatDao {
	
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:orcl";
	String userId = "jspid";
	String userPw = "jsppw";
	
	Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	
	public static RevatDao dao;
	
	public static RevatDao getInstance() {
		if(dao == null) {
			dao = new RevatDao();
		}
		return dao;
	}
	
	private RevatDao() {
		try {
			Class.forName(driver);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void getConnection() {
		try {
			conn = DriverManager.getConnection(url,userId,userPw);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public int insertData(String rname,String rnum,String rdate,String rtime) {
		getConnection();
		int cnt = -1;
		String sql = "insert into rmem values(rseq.nextval,?,?,?,?)";
		
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, rname);
			ps.setString(2, rnum);
			ps.setString(3, rdate);
			ps.setString(4, rtime);
			cnt = ps.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				if(ps != null) {
					ps.close();
				}
				if(conn != null) {
					conn.close();
				}
			}catch(SQLException e ) {
				
			}
		}
		return cnt;
	}
	
	public RevatBean getRevatInfo(String rname,String rnum,String rdate,String rtime){
		getConnection();
		String sql = "select * from rmem where rname=? and rnum=? and rdate=? and rtime=?";
		RevatBean rb = null;
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, rname);
			ps.setString(2, rnum);
			ps.setString(3, rdate);
			ps.setString(4, rtime);
			rs = ps.executeQuery();
			if(rs.next()) {
				rb = new RevatBean();
				rb.setRname(rs.getString("rname"));
				rb.setRnum(rs.getString("rnum"));
				rb.setRdate(rs.getString("rdate"));
				rb.setRtime(rs.getString("rtime"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				if(rs != null) {
					rs.close();
				}
				if(ps != null) {
					ps.close();
				}
				if(conn != null) {
					conn.close();
				}
			}catch(SQLException e ) {
				
			}
		}
		return rb;
	}
}

