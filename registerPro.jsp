<%@page import="member.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    

<%
	request.setCharacterEncoding("UTF-8");
%>
	<jsp:useBean id="bean" class="member.MemberBean"/>
	<jsp:setProperty name="bean" property="*"/>
<% 	

	MemberDao mdao = MemberDao.getInstance();
	int cnt = mdao.insertData(bean);
	
	String msg = "";
	String url = "";
	
	if(cnt>0){
		msg = "가입 성공";
		url = request.getContextPath() + "/main.jsp";
		//http://localhost:8080/Minimall/main.jsp
	}
	else{
		msg = "가입 실패";
		//surl = request.getContextPath() + "/myshop/member/register.jsp";
		url = "main.jsp";
		//http://localhost:8080/Minimall/myshop/member/register.jsp
		
	}
%>
	<script	type="text/javascript">
		alert("<%=msg%>"+"했습니다.");
		location.href="<%=url%>";
	</script>