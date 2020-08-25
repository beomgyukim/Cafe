<%@page import="member.MemberBean"%>
<%@page import="member.MemberDao"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    	request.setCharacterEncoding("UTF-8");
    	String id = request.getParameter("id");
    	String password = request.getParameter("password");
    	
    	MemberDao mdao = MemberDao.getInstance();
    	MemberBean mb = mdao.getMemberInfo(id,password);
    	
    	String msg = "";
    	String url = "";

    	if(mb != null){
    		String _id = mb.getId();
    		String _name = mb.getName();
    		int _no = mb.getNo();
    		
    		msg = mb.getName()+"님 반갑습니다.";
    		
    		session.setAttribute("memid", _id);
    		session.setAttribute("memno", _no);
    		session.setAttribute("memname", _name);
 	
    		url = "main.jsp";
    	}
    	else{
    		msg = "가입하지 않은 회원입니다.";
    		url = "login.jsp";
    	}
    	
    	
    %>
    <script type="text/javascript">
    	alert("<%= msg%>");
    	location.href="<%= url%>";
    </script>