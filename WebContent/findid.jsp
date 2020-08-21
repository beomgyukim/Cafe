<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<%@ include file= "top.jsp" %>


	
		<div id="findBox">	
			<ul id="findBox1">
			<li><span>이름 : </span><input type="text" name="name" value=""></li>
			<li><span>핸드폰번호 : </span> <input type="text" name="phone1" maxlength="3" size="3" value="">-</li>
			<li><input type="text" name="phone2" maxlength="4" size="4" value="">-</li>
			<li><input type="text" name="phone3" maxlength="4" size="4" value=""></li>
			</ul>
			<button onClick="return findid()" formmethod="post">아이디 찾기</button>
		</div>
	
	
			
			

		
	
