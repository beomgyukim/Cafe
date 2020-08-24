var isCheck = false; // 중복체크를 누르면 true로 바뀜
var isChange = false; // 변화생겼는지
var use = "";


$(function(){
	
	$('input[name="id"]').keydown(function(){  // 키보드 눌렸을때 하고싶은일
 		$('#idmessage').css('display','none');
 		isChange = true;
 		use = "";
	});
	
});

/*function main_loca(){
	
	const gos = "http://localhost:8080/CafePage/main.jsp";
	let dd = window.location.href;
	
	if(dd == dd){
		location.href="Cafe/CafeMain.jsp";
	}
	else{
		location.href="main.jsp";
	}
}*/

function login(){
	
	if($("input[name='id']").val()==""){
		
		alert("아이디를 입력하세요");
		return false;
	}
	
	if($("input[name='password']").val()==""){
		
		alert("비밀번호를 입력하세요");
		return false;
	}
	
}

function findid(){
	if($("input[name='name']").val()==""){
		alert("이름을 입력하세요");
		return false;
	}
	
	if($("input[name='phone1']").val()==""){
		alert("핸드폰번호를 입력하세요");
		return false;
	}
	if($("input[name='phone2']").val()==""){
		alert("핸드폰번호를 입력하세요");
		return false;
	}
	if($("input[name='phone3']").val()==""){
		alert("핸드폰번호를 입력하세요");
		return false;
	}
	
}

function findpw(){
	if($("input[name='id']").val()==""){
		alert("아이디를 입력하세요");
		return false;
	}
	
	if($("input[name='name']").val()==""){
		alert("이름을 입력하세요");
		return false;
	}
	
	if($("input[name='phone1']").val()==""){
		alert("핸드폰번호를 입력하세요");
		return false;
	}
	if($("input[name='phone2']").val()==""){
		alert("핸드폰번호를 입력하세요");
		return false;
	}
	if($("input[name='phone3']").val()==""){
		alert("핸드폰번호를 입력하세요");
		return false;
	}
}
function cansel(){
	alert("취소되었습니다.")
	location.href="main.jsp"
}
function writeSave(){
	
	if($('input[name="id"]').val()==""){
		alert("아이디를 입력하세요");
		$('input[name="id"]').focus();
		return false;
	}
	
	if(isCheck == false || isChange == true){ // 글자가 바뀌거나 중복체크를 누르지 않았으면
		alert("중복체크 하세요");
		return false;
	}
	
	if(use == "impossible"){
		alert("이미 사용중인 아이디입니다.");
		return false;
	}
	
	
	if($('input[name="password"]').val()==""){
		alert("비밀번호를 입력하세요");
		$('input[name="password"]').focus();
		return false;
	}
	
	if($('input[name=password]').val() != $('input[name=repassword]').val()){
		alert("비번 불일치");
		return false;
	}
	
	if($("input[name='name']").val()==""){
		alert("이름을 입력하세요");
		return false;
	}
	
	if($("input[name='phone1']").val()==""){
		alert("핸드폰번호를 입력하세요");
		return false;
	}
	if($("input[name='phone2']").val()==""){
		alert("핸드폰번호를 입력하세요");
		return false;
	}
	if($("input[name='phone3']").val()==""){
		alert("핸드폰번호를 입력하세요");
		return false;
	}
	
	if($("input[name='email']").val()==""){
		alert("E-Mail을 입력하세요");
		return false;
	}

}


function passwd_keyup(){ // 키보드 올라올떄 마다
	
	if($('input[name=password]').val() == $('input[name=repassword]').val()){
		$('#pwmessage').html('<font color=red>비밀번호 일치</font>');
		$('#pwmessage').show();
	
	}
	else{
		$('#pwmessage').html('<font color=red>비밀번호 불일치</font>');
		$('#pwmessage').show();

	}
	
}


function duplicate(){
	
		isCheck = true;
		isChange = false; // 원래대로 되돌리겠다.
		$.ajax({
			url : "id_check_proc.jsp",
			data : {
				userid:$('input[name="id"]').val() // userid=kim,hong 담겠다.		
			},
			success : function(data){ // yes 나  no 자리들어옴
				
				if($('input[name="id"]').val() == ""){
					$('#idmessage').html('<font color=red>아이디 입력 누락하였습니다.</font>');
					$('#idmessage').show();
				}
				else if($.trim(data) == 'YES'){ // trim : data의 값의 여백을 지움(앞뒤로 다 )
					$('#idmessage').html('<font color=red>사용 가능합니다.</font>');
					$('#idmessage').show();
					use = "possible";
				}
				else{
					$('#idmessage').html('<font color=red>이미 사용중인 아이디 입니다.</font>');
					$('#idmessage').show();
					use = "impossible";
				}	
			},
	        error: function(request,status,error) {
	            console.log(request);
	            console.log(status);
	            console.log(error);
	        }
			
		}); // ajax 중복체크 박스 옆에만 변함
}
	



function pwcheck(){
	//alert("pwcheck()");
	
	var pw = $("input[name='password']").val(); // abc 1234
	
	var regexp = /^[a-z0-9]{3,8}$/i; // < ^< 시작 $ < 끝 i< 대소문자 구별하지않는다.  abc 1234
	
	if(!regexp.test(pw)){ // test : 형식이 맞으면 true 안맞으면 false 리턴
		
		alert("비밀번호 형식이 틀렸습니다.");
		return false;
	}
	
	var chk_num = pw.search(/[0-9]/);
	var chk_eng = pw.search(/[a-z]/i);
	
	if(chk_num < 0 || chk_eng < 0 ){
		alert("비밀번호는 영문자 숫자 조합해 주세요.");
		return false;
	}
	
	// test() : true , false 리턴
	// search() : 위치를 리턴 , 못찾으면 -1 리턴
}

$("#slideshow > div:gt(0)").hide();

setInterval(function() { 
  $('#slideshow > div:first')
    .fadeOut(1000)
    .next()
    .fadeIn(1000)
    .end()
    .appendTo('#slideshow');
},  3000);





