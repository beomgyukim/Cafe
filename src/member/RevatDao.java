package revat;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

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
	
	public ArrayList<RevatBean> getAllMebers(){
		getConnection();
		ArrayList<RevatBean> lists = new ArrayList<RevatBean>();
		String sql = "select * from rmem order by rno";
		
		try {
			ps = conn.prepareStatement(sql);
			
			rs = ps.executeQuery();
			
			while(rs.next()) {
				int rno = rs.getInt("rno");
				String rname = rs.getString("rname");
				String rnum = rs.getString("rnum");
				String rdate = rs.getString("rdate");
				String rtime = rs.getString("rtime");
				
				RevatBean rb = new RevatBean();
				rb.setRno(rno);
				rb.setRname(rname);
				rb.setRnum(rnum);
				rb.setRdate(rdate);
				rb.setRtime(rtime);
				
				
				lists.add(rb);
			}
		} catch (SQLException e) {
			System.out.println("getAllMebers");
			e.printStackTrace();
		}finally {
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
		
		return lists;
	}
	
	public int deletelist(int rno) {
		getConnection();
		int cnt = -1;
		String sql = "delete from rmem where rno=?";
		
		try {
			ps = conn.prepareStatement(sql);
			ps.setInt(1, rno);
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
	
	public ArrayList<RevatBean> selectRevat(int rno){
		getConnection();
		ArrayList<RevatBean> lists = new ArrayList<RevatBean>();
		String sql = "select * from rmem where rno=?";
		
		try {
			ps = conn.prepareStatement(sql);
			ps.setInt(1, rno);
			rs = ps.executeQuery();
			
			while(rs.next()) {
				int rno1 = rs.getInt("rno");
				String rname = rs.getString("rname");
				String rnum = rs.getString("rnum");
				String rdate = rs.getString("rdate");
				String rtime = rs.getString("rtime");
				
				RevatBean rb = new RevatBean();
				rb.setRno(rno1);
				rb.setRname(rname);
				rb.setRnum(rnum);
				rb.setRdate(rdate);
				rb.setRtime(rtime);
				
				
				lists.add(rb);
			}
		} catch (SQLException e) {
			System.out.println("getAllMebers");
			e.printStackTrace();
		}finally {
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
		
		return lists;
	}
	
	public int update(int rno,String rname,String rnum,String rdate,String rtime) {
		getConnection();
		int cnt = -1;
		String sql = "update rmem set rname=? , rnum=? , rdate=? , rtime=? where rno=?";
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, rname);
			ps.setString(2, rnum);
			ps.setString(3, rdate);
			ps.setString(4, rtime);
			ps.setInt(5, rno);
			
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

}

