<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file= "top.jsp" %>

<script type="text/javascript" src="jquery.js"></script>
<script type="text/javascript" src="script.js"></script>

<form action="registerPro.jsp" method="post" onsubmit="return writeSave()">

<table align="center">
	
	<tr>
		<th bgcolor="yellow" align="center">ID</th>
		<td><input type="text" name="id">
    	<button type="button" id="id_check" onclick="return duplicate()">중복체크</button>
				<span id="idmessage" style="display:none;"></span>
		</td>
	</tr>
	<tr>
		<th bgcolor="yellow" align="center">비밀 번호</th>
		<td><input type="password" name="password" onBlur="return pwcheck()"> 영문 소문자/숫자 조합 3~8자</td>
	</tr>
	<tr>
		<th bgcolor="yellow" align="center">비밀 번호 확인</th>
		<td><input type="password" name="repassword" id="repassword" onkeyup="passwd_keyup()">
			<span id="pwmessage" style="display:none;"></span></td>
	</tr>
	<tr>
		<th bgcolor="yellow" align="center">이름</th>
		<td><input type="text" name="name" value=""> 성과 이름을 붙여주세요 (예)홍길동</td>
	</tr>
	<tr>
		<th bgcolor="yellow" align="center">핸드폰 번호</th>
		<td>
			<select name="phone1">
				<option value="010">010</option>
				<option value="011">011</option>
			</select>
			- 
			<input type="text" name="phone2" size="4" maxlength="4" value=""> - 
			<input type="text" name="phone3" size="4" maxlength="4" value=""> 예) 011-000-0000
		</td>
	</tr>
	<tr>
		<th bgcolor="yellow" align="center">E-Mail</th>
		<td>
			<input type="text" name="email" value=""> 
		</td>
	</tr>
	<tr>
		<td colspan="2" bgcolor="#FFCC00"  align="center">
			<input type="submit" value="가입 하기" id="sub">&nbsp;&nbsp;
			<input type="reset" value="취소">
		</td>
	</tr>	
</table>
</form>