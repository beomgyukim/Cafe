<%@page import="revat.RevatBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="revat.RevatDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="top.jsp"%>


<%
	request.setCharacterEncoding("UTF-8");
	int rno = Integer.parseInt(request.getParameter("rno"));
	RevatDao rdao = RevatDao.getInstance();
	ArrayList<RevatBean> lists = rdao.selectRevat(rno);
	

%>

<div class="boxHeight" id="updatebox">
	<div class="revatbox">
		<div class="revat_ab">
			<div class="revat_ableft">
				<p>
					<span>reservation</span>
				</p>
				<ul>
					<li><span>Name</span></li>
					<li><span>Number of people</span></li>
					<li><span>Reservation date</span></li>
					<li><span>Reservation time</span></li>
				</ul>
			</div>
			<div class="revat_abright">
				<form action="updatePro.jsp" method="post">
					<ul class="revat_list">
						
						<li>
							<input type="hidden" name="rno" value="<%=lists.get(0).getRno()%>">
							<input type="text" name="rname" class="btn btn-secondary" value="<%= lists.get(0).getRname()%>">
						
						</li>
						<li><input type="number" name="rnum" class="btn btn-secondary" value="<%= lists.get(0).getRnum()%>"></li>
						<li><input type="date" name="rdate" class="btn btn-secondary" value="<%= lists.get(0).getRdate()%>"></li>
						<li>
							<div class="revatdiv">
								<ul>
									<select name="rtime" class="btn btn-secondary">
										<option value="10:00~12:00">10:00~12:00</option>
										<option value="12:00~14:00">12:00~14:00</option>
										<option value="14:00~16:00">14:00~16:00</option>
										<option value="16:00~18:00">16:00~18:00</option>
										<option value="18:00~20:00">18:00~20:00</option>
									</select>
								</ul>
							</div>
						</li>
						<li>
							<button class="btn btn-secondary">Revise</button>
						</li>
					</ul>
				</form>
			</div>
		</div>
	</div>
</div>

<script>
$("input[name='rnum']").focusout(function(){
	if($("input[name='rnum']").val() <= 0){
		alert("1명 이상 선택하세요");
	}	
});
	
	$("input[name='rdate']").focusout(function(){
		var today = new Date();
		var dd = today.getDate();
		var mm = today.getMonth()+1;
		var yyyy = today.getFullYear();
		
		today = yyyy+'-'+mm+'-'+dd;
		var rd = $("input[name='rdate']").val();
		var aa = rd.split('-');
		
		if(eval(today) < aa[0]-aa[1]-aa[2]){
			alert("현재 날짜 이후를 선택하세요");
		}
	});
</script>
	