<%@page import="revat.RevatDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    	int rno = Integer.parseInt(request.getParameter("rno"));
    
    	RevatDao rdao = RevatDao.getInstance();
    	int cnt = rdao.deletelist(rno);
    	
    	String msg = "";
    	String url = "";
    	if(cnt >0){
    		msg = "삭제성공하였습니다.";
    		url = "list.jsp";
    	}
    %>
    
     <script type="text/javascript">
    	alert("<%= msg %>");
    	location.href="<%= url %>";
     </script>