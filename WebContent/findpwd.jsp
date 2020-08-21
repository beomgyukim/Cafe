<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file= "top.jsp" %>


<form action="findpwdPro.jsp" method="post">
	<table border ="1" align="center">
		<tr>
			<td bgcolor="yellow" align="center">ID</td>
			<td><input type="text" name="id" value=""></td>
		</tr>
		<tr>
			<td bgcolor="yellow" align="center">이름</td>
			<td><input type="text" name="name" value=""></td>
		</tr>
		<tr>
			<td bgcolor="yellow" align="center">핸드폰번호</td>
			<td>
				<input type="text" name="phone1" maxlength="3" size="3" value="">
					-
				<input type="text" name="phone2" maxlength="4" size="4" value="">
					-
				<input type="text" name="phone3" maxlength="4" size="4" value="">
			</td>
		</tr>
		<tr>
			<td colspan="2" bgcolor="yellow" align="center">
				<button onClick="return findpw()" formmethod="post">비밀번호 찾기</button>
			</td>
		</tr>
		
	</table>
</form>