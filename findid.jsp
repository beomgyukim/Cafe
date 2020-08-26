<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<%@ include file= "top.jsp" %>

<link href="style.css" type="text/css" rel="stylesheet">

	<div class="card-body">
		<form action="findidPro.jsp" method="post">
			<div class="row">
				<div class="col-4">Name</div>
				<div class="col-4"><input type="text" name="name" class="btn btn-secondary"></div>
			</div>
			<div class="row mt-2">
				<div class="col-4">Phone Number</div>
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
				</div>
			</div>
			<div class = "buttonbox">
				<div class = "buttonboxdiv">
					<button onClick="return findid()" class="btn btn-secondary">Find id</button>
				</div>
				<div>
					<button type="reset" onClick="cansel()" class="btn btn-secondary">Cancel</button>
				</div>
			</div>
		</form>
	</div>

<%@ include file= "footer.jsp" %>
	
			

		
	
