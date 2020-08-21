<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file= "top.jsp" %>
    
    <form action="loginPro.jsp" method="post">
    <table border ="1" align="center">
    	<tr>
    		<td colspan="2">아이디 : <input type="text" name="id"></td>
    	</tr>
    	<tr>
    		<td colspan="2">비밀번호 : <input type="password" name="password"></td>
    	</tr>
    	<tr>
    		<td colspan="2" align="center">
    			<button onClick="return login()" formmethod="post">로그인</button>
    			<input type="button" value="회원가입" onClick="location.href='register.jsp'">
    		</td>
    	</tr>
    	<tr>
    		<td align="center"><a href="findid.jsp">아이디 찾기</a></td>
    		<td align="center"><a href="findpwd.jsp">비밀번호 찾기</a></td>
    	</tr>
    </table>
    </form>