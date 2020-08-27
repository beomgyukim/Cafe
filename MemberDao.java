package member;
import java.sql.*;


public class MemberDao {
	
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:orcl";
	String userId = "jspid";
	String userPw = "jsppw";
	
	Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	
	public static MemberDao dao;
	
	public static MemberDao getInstance() {
		if(dao == null) {
			dao = new MemberDao();
		}
		return dao;
	}
	
	private MemberDao() {
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
	
	public boolean searchID(String userid){
		getConnection();
		String sql = "select id from mem where id=?";
		boolean flag = false;
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, userid);
			rs = ps.executeQuery();
			
			if(rs.next()) {
				flag = true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			if(rs != null) {
				try {
					rs.close();
				}catch(SQLException e) {
					
				}
			}
			if(ps != null) {
				try {
					ps.close();
				}catch(SQLException e) {
					
				}
			}
			
			if(conn != null) {
				try {
					conn.close();
				}catch(SQLException e) {
					
				}
			}
		}
		return flag;	
	}
	
	public int insertData(MemberBean bean) {
		getConnection();
		int cnt = -1;
		String sql = "insert into mem values(mseq.nextval,?,?,?,?,?,?,?,?)";
		
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, bean.getName());
			ps.setString(2, bean.getId());
			ps.setString(3, bean.getPassword());
			ps.setString(4, bean.getRepassword());
			ps.setInt(5, bean.getPhone1());
			ps.setInt(6, bean.getPhone2());
			ps.setInt(7, bean.getPhone3());
			ps.setString(8, bean.getEmail());
			
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
	
	public MemberBean getMemberInfo(String id,String password) {
		getConnection();
		String sql = "select * from mem where id=? and password=?";
		MemberBean bean = null;
		
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, id);
			ps.setString(2, password);
			rs = ps.executeQuery();
			if(rs.next()) {
				bean = getMemberBean(rs);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			if(rs != null) {
				try {
					rs.close();
				}catch(SQLException e) {
					
				}
			}
			if(ps != null) {
				try {
					ps.close();
				}catch(SQLException e) {
					
				}
			}
			if(conn != null) {
				try {
					conn.close();
				}catch(SQLException e) {
					
				}
			}
		}
		return bean;
	}
	
	public MemberBean getMemberByph(String name,int phone1,int phone2,int phone3) {
		getConnection();
		String sql = "select * from mem where name=? and phone1=? and phone2=? and phone3=?";
		MemberBean bean = null;
		System.out.print(name);
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, name);
			ps.setInt(2, phone1);
			ps.setInt(3, phone2);
			ps.setInt(4, phone3);
			
			rs = ps.executeQuery();
			
			while(rs.next()) {
				bean = getMemberBean(rs);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			if(rs != null) {
				try {
					rs.close();
				}catch(SQLException e) {
					
				}
			}
			if(ps != null) {
				try {
					ps.close();
				}catch(SQLException e) {
					
				}
			}
			if(conn != null) {
				try {
					conn.close();
				}catch(SQLException e) {
					
				}
			}
		}
		System.out.println("bean:"+bean);
		return bean;
	}
	
	public MemberBean getMemberpw(String id,String name,int phone1,int phone2,int phone3) {
		getConnection();
		String sql = "select * from mem where id=? and name=? and phone1=? and phone2=? and phone3=?";
		MemberBean bean = null;
		
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, id);
			ps.setString(2, name);
			ps.setInt(3, phone1);
			ps.setInt(4, phone2);
			ps.setInt(5, phone3);
			rs = ps.executeQuery();
			while(rs.next()) {
				bean = getMemberBean(rs);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} {
			if(rs != null) {
				try {
					rs.close();
				}catch(SQLException e) {
					
				}
			}
			if(ps != null) {
				try {
					ps.close();
				}catch(SQLException e) {
					
				}
			}
			if(conn != null) {
				try {
					conn.close();
				}catch(SQLException e) {
					
				}
			}
		}
		return bean;
	}
	
	private MemberBean getMemberBean(ResultSet rs) { // 메서드 만들어서 호출
		
		MemberBean bean = new MemberBean();
		
		try {
			bean.setNo(rs.getInt("no"));
			bean.setName(rs.getString("name"));
			bean.setId(rs.getString("id"));
			bean.setPassword(rs.getString("password"));
			bean.setRepassword(rs.getString("repassword"));
			bean.setPhone1(rs.getInt("phone1"));
			bean.setPhone2(rs.getInt("phone2"));
			bean.setPhone3(rs.getInt("phone3"));
			bean.setEmail(rs.getString("email"));
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		
		return bean;
	}
}
