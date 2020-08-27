<%@page import="revat.RevatDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
   		 request.setCharacterEncoding("UTF-8");
    	 String rname = request.getParameter("rname");
    	 String rnum = request.getParameter("rnum");
    	 String rdate = request.getParameter("rdate");
    	 String rtime = request.getParameter("rtime");
    	 
    	 RevatDao rdao = RevatDao.getInstance();
    	 int cnt = rdao.insertData(rname,rnum,rdate,rtime);
   	     String msg = "";
	     String url = "";
	
     	 if(cnt>0){
	     	 msg = "예약성공 ";
	    	 url = request.getContextPath() + "/main.jsp";
		 }
     	
     	 System.out.println("");
     	
	%>
	<script	type="text/javascript">
		alert("<%=msg%>"+"되었습니다.");
		location.href="<%=url%>";
	</script>