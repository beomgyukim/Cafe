<%@page import="revat.RevatDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
   		request.setCharacterEncoding("UTF-8");
    	int rno = Integer.parseInt(request.getParameter("rno"));
    	System.out.println("rno" + rno);
    	String rname = request.getParameter("rname");
    	String rnum = request.getParameter("rnum");
    	String rdate = request.getParameter("rdate");
    	String rtime = request.getParameter("rtime");
    	
    	RevatDao rdao = RevatDao.getInstance();
    	int cnt = rdao.update(rno,rname,rnum,rdate,rtime);
    	
    	String msg = "";
    	String url = "";
    	if(cnt > 0){
    			msg = "수정성공";
    			url = "list.jsp";
		}
    	else{
    		msg = "수정실패";
    		url = "update.jsp";
    	}
    %>
    <script>
    	alert("<%= msg%>");
    	location.href="<%=url %> ";
    </script>