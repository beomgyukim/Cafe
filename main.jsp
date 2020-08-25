<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="top.jsp"%>
<%
  	String memname = (String)session.getAttribute("memname");
  %>

<div class="boxHeight" id="mainImg">
	<div id="imgshow_main">
		<img src="img/main.jpg">
	</div>
	<div id="imgshow">
		<div id="slideshow">
			<div>
				<img src="img/coffee1.PNG">
			</div>
			<div>
				<img src="img/coffee2.PNG">
			</div>
			<div>
				<img src="img/cookie2.PNG">
			</div>
		</div>
	</div>
</div>
<div class="boxHeight" id="mainRevat">
	<div class="revatbox">
		<div class="revat_ab">
			<div class="revat_ableft">
				<p>reservation</p>
				<ul>
					<li><span>Name</span></li>
					<li><span>Number of people</span></li>
					<li><span>Reservation date</span></li>
					<li><span>Reservation time</span></li>
				</ul>
			</div>
			<div class="revat_abright">
				<form action="listPro.jsp" method="post">
					<ul class="revat_list">
						<li><input type="text" name="rname" class="btn btn-secondary"
							value="<%= memname %>"></li>
						<li><input type="number" name="rnum"
							class="btn btn-secondary"></li>
						<li><input type="date" name="rdate" class="btn btn-secondary"></li>
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
							<button class="btn btn-secondary">예약하기</button>
						</li>
					</ul>
				</form>
			</div>
		</div>	
	</div>
	<div class="revatbox">
			<div class="revat_ab">
				<div class="revat_ableft">
					<p>reservation list</p>
					<ul>
						<li><span>Name</span></li>
						<li><span>Number of people</span></li>
						<li><span>Reservation time</span></li>
						<li><span>Reservation date</span></li>
					</ul>
				</div>
			</div>
		</div>
</div>
<div class="boxHeight" id="mainCont">
	<iframe
		src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d50597.26706886425!2d126.93695838351283!3d37.57086532790281!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357ca32e5b1b7547%3A0xa6a4fbf30a053cb7!2z64W466qo!5e0!3m2!1sko!2skr!4v1598249735914!5m2!1sko!2skr"
		width="600" height="450" frameborder="0" style="border: 0;"
		allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
	<div class="contbox">
		<ul>
			<li>address : 서울특별시 종로구 이화동 이화장2길 22-3</li>
			<li>OPEN - 10:00 CLOSE - 09:00
			<li>
			<li>instagram : @n_0_m_0
			<li>
		</ul>
	</div>
</div>


<%@ include file="footer.jsp"%>
