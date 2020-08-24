<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	String contextPath = request.getContextPath();
	String memid = (String)session.getAttribute("memid");
%>

<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
<script type="text/javascript" src="jquery.js"></script>
<script type="text/javascript" src="script.js"></script>
<link rel="stylesheet" href="style1.css">
<link href="style.css" type="text/css" rel="stylesheet">
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<a class="navbar-brand" href="main.jsp">NOMO</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarColor02" aria-controls="navbarColor02"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarColor02">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active">
				<a class="nav-link" href="CafeMain.jsp">about NOMO<span class="sr-only">(current)</span></a></li>
				<li class="nav-item"><a class="nav-link" href="MenuMain.jsp">NOMO Menu</a></li>
				<!-- <li class="nav-item"><a class="nav-link" href="Contact.jsp">Contact Us</a></li>
				<li class="nav-item"><a class="nav-link" href="Review.jsp">Review</a></li> -->
			</ul>
			<ul class="navbar-nav loginBox"> 
				<li class="nav-item"><a class="nav-link" href="login.jsp">Login</a></li>
				<li class="nav-item"><a class="nav-link" href="register.jsp">Join</a></li>
			</ul>
			<%
				if(memid != null){
			%>
				<script>
					$(".loginBox").css({display:"none"})
				</script>
				<ul class="navbar-nav loginsbox">
					<li><%= memid %>님 반갑습니다</li>
					<li class="nav-item active"><a class="nav-link" href="logout.jsp">Logout<span class="sr-only">(current)</span></a></li>
				</ul>
			<% 		
				}
				else{
			%>
				<ul></ul>
			<%
				}
			%>
		</div>
	</nav>