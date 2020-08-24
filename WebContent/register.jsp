<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file= "top.jsp" %>

<link href="style.css" type="text/css" rel="stylesheet">

	<div class="card-body">	
		<form action="registerPro.jsp" method="post">
			<div class="row">
				<div class="col-4">아이디</div>
				<div class="col-4">
					<input type="text" name="id" class="form-control">
				</div>
				<div class="col-4">
    			<button id="id_check" onClick="return duplicate()" class="form-control">중복체크</button>
				</div>
			</div>
			<div class="row mt-2">
				<div class="col-4">비밀번호</div>
				<div class="col-4">
					<input type="password" name="password" onBlur="return pwcheck()" class="form-control"> 
				</div>
				<div class="col-4">영문 소문자/숫자 조합 3~8자</div>
			</div>
			<div class="row mt-2">
				<div class="col-4">비밀번호확인</div>
				<div class="col-4"><input type="password" name="repassword" id="repassword" onkeyup="passwd_keyup()" class="form-control">
				</div>
			</div>
			<div class="row mt-2">
				<div class="col-4">이름</div>
				<div class="col-4"><input type="text" name="name" value="" class="form-control"></div>
				<div class="col-4">성과 이름을 붙여주세요 (예)홍길동</div>
			</div>
			<div class="row mt-2">
				<div class="col-4">핸드폰 번호</div>
				<div class="col-2">
					<select name="phone1" class="form-control">
					<option value="010">010</option>
					<option value="011">011</option>
					</select>
				</div>
				<div class="col-2">
					<input type="text" name="phone2" size="4" maxlength="4" value="" class="form-control">
				</div>
				<div class="col-2">
					<input type="text" name="phone3" size="4" maxlength="4" value="" class="form-control">
				</div>
				<div class="col-2">
				예) 011-000-0000
				</div>
			</div>
			<div class="row mt-2">
				<div class="col-4">E-Mail</div>
				<div class="col-4"><input type="text" name="email" value="" class="form-control"></div>
			</div>
			<div class="row mt-2">
				<div class="col-6">
					<button onClick="return writeSave()" formmethod="post" class="btn btn-success w-100">로그인</button>
				</div>
				<div class="col-6">
					<button class="btn btn-success w-100">취소</button>
				</div>
			</div>
		</form>
	</div>


<%@ include file= "footer.jsp" %>

