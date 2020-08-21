
<%@page import="member.MemberDao"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    	request.setCharacterEncoding("UTF-8");
    	String userid = request.getParameter("userid");
    	
    	MemberDao dao = MemberDao.getInstance();
    	boolean check = dao.searchID(userid);
    	String str = "";
    	if(check == true){
    		str = "NO";
    		out.print(str);
    	}
    	else{
    		str = "YES";
    		out.print(str);
    	}
    %>
