<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.ArrayList"%>
<%@page import="revat.RevatBean"%>
<%@page import="revat.RevatDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ include file="top.jsp" %>
 
 <style type="text/css">
		.listbox{
			margin : 0 auto;
			margin-bottom : 25%;
			width : 50%;
			text-align: center;
			
		}
		.listbox td{
			text-align : center;
		}
	</style>
 
 
 <%
 	request.setCharacterEncoding("UTF-8");
 	RevatDao rdao = RevatDao.getInstance();
 	ArrayList<RevatBean> al = rdao.getAllMebers();
 %>
 
 

<table class="table table-dark listbox">
  <thead>
  	<tr>
  		<th colspan="5"><span>reservation status</span></th>
  	</tr>
    <tr>
      <th scope="col">No</th>
      <th scope="col">Name</th>
      <th scope="col">Number of people</th>
      <th scope="col">Reservation date</th>
      <th scope="col">Reservation time</th>
      <th scope="col">Revise</th>
      <th scope="col">Delete</th>
    </tr>
  </thead>
  <tbody>
  <% 
  	for(RevatBean rb : al){
	%> 
		<tr>
      		<th scope="row"><%=rb.getRno() %></th>
      		<td><%=rb.getRname() %></td>
      		<td><%=rb.getRnum() %></td>
      		<td><%=rb.getRdate() %></td>
      		<td><%=rb.getRtime() %></td>
      		<td><a href="update.jsp?rno=<%=rb.getRno() %>">Revise</a></td>
      		<td><a href="deletelist.jsp?rno=<%=rb.getRno() %>">Delete</a></td>
    	</tr>
	<% 		
  	}
  %>
    
  </tbody>
</table>

<%@ include file="footer.jsp" %>