
<%@page import="member.MemberBean"%>
<%@page import="member.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <%
    	request.setCharacterEncoding("UTF-8");
    	String id = request.getParameter("id");
    	String name = request.getParameter("name");
    	int phone1 = Integer.parseInt(request.getParameter("phone1"));
    	int phone2 = Integer.parseInt(request.getParameter("phone2"));
    	int phone3 = Integer.parseInt(request.getParameter("phone3"));
    	
    	MemberDao mdao = MemberDao.getInstance();
    	MemberBean mb = mdao.getMemberpw(id,name,phone1,phone2,phone3);
    	
    	
    	String msg = "";
    	String url = "";
    	url = "login.jsp";
    	
    	if(mb != null){
    		msg = mb.getPassword();
    	
    	}
    	else{
    		msg = "없는 비밀번호";
    		url = "findpwd.jsp";
    	}
    %>
    
    <script type="text/javascript">
    	alert("<%= msg%>" + "입니다.");
    	location.href="<%= url%>";
    </script>