<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file= "top.jsp" %>
    <link href="style.css" type="text/css" rel="stylesheet">
    
    <div class="card-body">
       <form action="loginPro.jsp" method="post">
          <div class="row">
             <div class="col-3">아이디</div>
             <div class="col-9">
                <input type="text" name="id" class="btn btn-secondary">
             </div>
          </div>
          <div class="row mt-2">
             <div class="col-3">비밀번호</div>
             <div class="col-9">
                <input type="password" name="password" class="btn btn-secondary">
             </div>
          </div>
          <div class="row mt-2">
             <div class="col-6">
                <button onClick="return login()" formmethod="post" class="btn btn-secondary">로그인</button>
             </div>
             <div class="col-6">
                <input type="button" value="회원가입" onClick="location.href='register.jsp'" class="btn btn-secondary">
             </div>
          </div>
          <div class="row mt-2">
             <div class="col-6">
                <a href="findid.jsp" class="btn btn-secondary">아이디 찾기</a>
             </div>
             <div class="col-6">
                <a href="findpwd.jsp" class="btn btn-secondary">비밀번호 찾기</a>
             </div>
          </div>
       </form>
    </div>
    <%@ include file= "footer.jsp" %>