<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file= "top.jsp" %>

<link href="style.css" type="text/css" rel="stylesheet">


	<div class="card-body">	
		<form action="registerPro.jsp" method="post" onsubmit="return writeSave()">
			<div class="row">
				<div class="col-4">아이디</div>
				<div class="col-4">
					<input type="text" name="id" class="btn btn-secondary">
				</div>
				<div class="col-2">
    			<input type="button" id="id_check" onClick="return duplicate()" class="btn btn-secondary" value="중복체크">
				</div>
				<div class="col-2">
				<span id="idmessage" style="display:none;"></span>
				</div>
			</div>
			<div class="row mt-2">
				<div class="col-4">비밀번호</div>
				<div class="col-4">
					<input type="password" name="password" onBlur="return pwcheck()" class="btn btn-secondary"> 
				</div>
				<div class="col-4">영문 소문자/숫자 조합 3~8자</div>
			</div>
			<div class="row mt-2">
				<div class="col-4">비밀번호확인</div>
				<div class="col-4"><input type="password" name="repassword" id="repassword" onkeyup="passwd_keyup()" class="btn btn-secondary">
				</div>
				<div class="col-4"><span id="pwmessage" style="display:none;"></span></div>
			</div>
			<div class="row mt-2">
				<div class="col-4">이름</div>
				<div class="col-4"><input type="text" name="name" value="" class="btn btn-secondary"></div>
			</div>
			<div class="row mt-2">
				<div class="col-4">핸드폰 번호</div>
				<div class="col-2">
					<select name="phone1" class="btn btn-secondary">
					<option value="010">010</option>
					<option value="011">011</option>
					</select>
				</div>
				<div class="col-2">
					<input type="text" name="phone2" size="4" maxlength="4" value="" class="btn btn-secondary">
				</div>
				<div class="col-2">
					<input type="text" name="phone3" size="4" maxlength="4" value="" class="btn btn-secondary">
				</div>
				<div class="col-2">
				예) 011-0000-0000
				</div>
			</div>
			<div class="row mt-2">
				<div class="col-4">E-Mail</div>
				<div class="col-4"><input type="text" name="email" value="" class="btn btn-secondary"></div>
			</div>
			<div class="row mt-2">
				<div class="col-6">
					<input type="submit" value="가입 하기" id="sub" class="btn btn-secondary">
				</div>
				<div class="col-6">
					<button type="reset" onClick="cansel()" class="btn btn-secondary">가입취소</button>
				</div>
			</div>
		</form>
	</div>


<%@ include file= "footer.jsp" %>

