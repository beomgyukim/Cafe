<%@page import="revat.RevatBean"%>
<%@page import="revat.RevatDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ include file="top.jsp" %>
 
 
 <%
 	request.setCharacterEncoding("UTF-8");
 	String rname = request.getParameter("rname");
	String rnum = request.getParameter("rnum");
	String rdate = request.getParameter("rdate");
	String rtime = request.getParameter("rtime");
 	RevatDao rdao = RevatDao.getInstance();
 	RevatBean rb = rdao.getRevatInfo(rname,rnum,rdate,rtime);
 	
 %>

<div class="revatbox">
 		<div class="revat_ab">
 			<div class="revat_ableft">
 				<p>reservation list</p>
 					<ul>
 						<li><span>Name</span></li>
 						<li><span>Number of people</span></li>
 						<li><span>Reservation time</span></li>
 						<li><span>Reservation date</span></li>
 					</ul>
 			</div>
 			<div class="revat_abright">
 				<ul>
 					<li><%= rb.getRname() %></li>
 					<li><%= rb.getRnum() %></li>
 					<li><%= rb.getRdate() %></li>
 					<li><%= rb.getRtime() %></li>
 				</ul>
 			</div>
 		</div>
</div>

<%@ include file="footer.jsp" %>