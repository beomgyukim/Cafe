
<%@page import="member.MemberBean"%>
<%@page import="member.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
findidPro.jsp<br><br>

<%
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	int phone1 = Integer.parseInt(request.getParameter("phone1"));
	int phone2 = Integer.parseInt(request.getParameter("phone2"));
	int phone3 = Integer.parseInt(request.getParameter("phone3"));
	
	MemberDao mdao = MemberDao.getInstance();
	MemberBean mb = mdao.getMemberByph(name,phone1,phone2,phone3);
	
	System.out.print("mb:"+mb);
	
	String msg = "";
	String url = "";
	url = "login.jsp";
	
	
	if(mb != null){
		msg = mb.getId();
	}
	else{
		msg = "없는 회원";
		url = "findid.jsp";
	}
%>

<script type="text/javascript">
	alert("<%= msg%>" + "입니다.");
	location.href="<%= url %>";
</script>