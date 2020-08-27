<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file= "top.jsp" %>
    <link href="style.css" type="text/css" rel="stylesheet">
    
    <div class="card-body">
       <form action="loginPro.jsp" method="post">
          <div class="row">
             <div class="col-3">ID</div>
             <div class="col-9">
                <input type="text" name="id" class="btn btn-secondary">
             </div>
          </div>
          <div class="row mt-2">
             <div class="col-3">Password</div>
             <div class="col-9">
                <input type="password" name="password" class="btn btn-secondary">
             </div>
          </div>
          <div class = "buttonbox">
             <div class = "buttonboxdiv">
                <button onClick="return login()" formmethod="post" class="btn btn-secondary">Login</button>
             </div>
             <div>
                <input type="button" value="Join" onClick="location.href='register.jsp'" class="btn btn-secondary">
             </div>
          </div>
          <div class = "buttonbox">
             <div class = "buttonboxdiv">
                <a href="findid.jsp">Find id</a>
             </div>
             <div>
                <a href="findpwd.jsp">Forgot your password</a>
             </div>
          </div>
       </form>
    </div>
    <%@ include file= "footer.jsp" %>