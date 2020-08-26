<%@page import="java.util.ArrayList"%>
<%@page import="revat.RevatBean"%>
<%@page import="revat.RevatDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ include file="top.jsp" %>
 
 <style type="text/css">
		.listbox{
			margin : 0 auto;
			margin-bottom : 35%;
			width : 50%;
			text-align: center;
			
		}
	</style>
 
 
 <%
 	RevatDao rdao = RevatDao.getInstance();
 	ArrayList<RevatBean> al = rdao.getAllMebers();
 
 %>
 
 

<table class="table table-dark listbox">
  <thead>
    <tr>
      <th scope="col">No</th>
      <th scope="col">Name</th>
      <th scope="col">Number of people</th>
      <th scope="col">Reservation date</th>
      <th scope="col">Reservation time</th>
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
    	</tr>
	<% 		
  	}
  %>
    
  </tbody>
</table>

<%@ include file="footer.jsp" %>