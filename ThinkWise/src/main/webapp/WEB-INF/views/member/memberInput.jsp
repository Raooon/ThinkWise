<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link
	href="https://fonts.googleapis.com/css?family=Work+Sans:100,200,300,400,500,600,700,800,900"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Fredericka+the+Great"
	rel="stylesheet">

<link rel="stylesheet" href="yswtemp/css/open-iconic-bootstrap.min.css">
<link rel="stylesheet" href="yswtemp/css/animate.css">

<link rel="stylesheet" href="yswtemp/css/owl.carousel.min.css">
<link rel="stylesheet" href="yswtemp/css/owl.theme.default.min.css">
<link rel="stylesheet" href="yswtemp/css/magnific-popup.css">

<link rel="stylesheet" href="yswtemp/css/aos.css">

<link rel="stylesheet" href="yswtemp/css/ionicons.min.css">

<link rel="stylesheet" href="yswtemp/css/flaticon.css">
<link rel="stylesheet" href="yswtemp/css/icomoon.css">
<link rel="stylesheet" href="yswtemp/css/style.css">

<style>

#ftco-section {
	background-color: white;
}

#loginh2 {
	font-size: 45px;
}

#frm {
	border: transparent;
    border-style: solid;
    margin-left: -65px;
    width: 900px;
    height: 800px;
    background-color: #f8f9fa;
    border-radius: 12px;
    box-shadow: 1px 1px darkgrey;
}

#emaildiv {
	margin-top: 30px;
}

#emailInput {
	font-size: 30px;
	color : #5d50c6;
}

#h2Title {
	font-size: 27px;
	color : #5d50c6;
}

input#email {
	font-size: 19px;
	width: 400px;
	heigh: 40px; 
	padding-top: 5px;
	padding-left: 3px;
	padding-bottom: 5px; 
}

#pwdiv1 {
	margin-right: 32px;
}


input#password {
	font-size: 19px;
	width: 400px;
	heigh: 40px; 
	padding-top: 5px;
	padding-left: 3px;
	padding-bottom: 5px; 
}

#pwdiv2 {
	margin-right: 93px;
}

input#password1 {
	font-size: 19px;
	width: 400px;
	heigh: 40px; 
	padding-top: 5px;
	padding-left: 3px;
	padding-bottom: 5px; 
}

#namediv {
	margin-right: -20px;
}

input#name {
	font-size: 19px;
	width: 400px;
	heigh: 40px; 
	padding-top: 5px;
	padding-left: 3px;
	padding-bottom: 5px; 
}

#genderdiv {
	margin-right: 48px;
}

input#gender_M {
	width: 50px;
}

input#gender_F {
	width: 50px;
}

#birthdiv {
	margin-right: 30px;
}

input#birth {
	font-size: 19px;
	width: 400px;
	heigh: 40px; 
	padding-top: 5px;
	padding-left: 3px;
	padding-bottom: 5px; 
}

#teldiv {
	margin-right: 23px;
}

input#tel {
	font-size: 19px;
	width: 400px;
	heigh: 40px; 
	padding-top: 5px;
	padding-left: 3px;
	padding-bottom: 5px; 
}

#addressdiv {
	margin-right: -10px;
}

input#address {
	font-size: 19px;
	width: 400px;
	heigh: 40px; 
	padding-top: 5px;
	padding-left: 3px;
	padding-bottom: 5px; 
}

#divisiondiv {
	margin-right: 110px;
}

input#division_p {
	font-size: 19px;
	width: 400px;
	heigh: 40px; 
	padding-top: 5px;
	padding-left: 3px;
	padding-bottom: 5px; 
}

input#division_s {
	font-size: 19px;
	width: 400px;
	heigh: 40px; 
	padding-top: 5px;
	padding-left: 3px;
	padding-bottom: 5px; 
}

#parentDiv {
	margin-right: 5px;
}

input#parent {
	font-size: 19px;
	width: 400px;
	heigh: 40px; 
	padding-top: 5px;
	padding-left: 3px;
	padding-bottom: 5px; 
}

#join {
	width: 130px;
	heigh: 40px;
	font-size: 18px;
	background-color: white;
}

#reset {
	width: 130px;
	heigh: 40px;
	font-size: 18px;
	background-color: white;
}
</style>

</head>
<body>
	<section class="ftco-section" id="ftco-section">
		<div class="container">
			<div class="row justify-content-center mb-5 pb-2">
				<div class="col-md-8 text-center heading-section ftco-animate">
					<h2 class="mb-4" id="loginh2">
						<span>회원 </span>가입
					</h2>
				</div>
			</div>
		</div>
		<div class="container">
			<div class="row justify-content-center mb-5 pb-2">
				<div class="col-md-8 text-center heading-section ftco-animate" align="center">
					<form id="frm" action="memberInput.do" method="post">
						<div id="emaildiv">
							<h2 class="mb-4" id="emailInput">Email&emsp;
								<input type="email" id="email" name="email" required="required" value=${email } class="input" style="width:400px" readonly> 
							</h2>
						</div>
						<div id="pwdiv1">
							<h2 class="mb-4" id="h2Title">비밀번호&emsp;
								<input type="password" id="password" name="password" placeholder="비밀번호를 입력해주세요." required="required" class="input" style="width:400px">
							</h2>
						</div>
						<div id="pwdiv2">
							<h2 class="mb-4" id="h2Title">비밀번호 확인&emsp;
								<input type="password" id="password1" required="required" class="input" placeholder="한번 더 입력해주세요." style="width:400px">
							</h2>
						</div>
						<div id="namediv">
							<h2 class="mb-4" id="h2Title">이름&emsp;
								<input type="text" id="name" name="name" required="required" placeholder="이름을 입력해주세요." class="input" style="width:400px">
							</h2>
						</div>
						<div id="genderdiv">
							<h2 class="mb-4" id="h2Title">성별&emsp;&emsp;
									<input type="radio" id="gender_M" name="gender" value="M" checked >male&emsp;
									<input type="radio" id="gender_F" name="gender" value="F">female&emsp;
							</h2>
						</div>
						<div id="birthdiv">
							<h2 class="mb-4" id="h2Title">생년월일&emsp;
								<input type="date" id="birth" name="birth">
							</h2>
						</div>
						<div id="teldiv">
							<h2 class="mb-4" id="h2Title">전화번호&emsp;
								<input type="text" id="tel" name="tel" class="input" style="width:400px" required="required" placeholder="전화번호를 입력해주세요.">
							</h2>
						</div>
						<div id="addressdiv">
							<h2 class="mb-4" id="h2Title">주소&emsp;
								<input type="text" id="address_kakao" name="address_kakao" class="input" style="width:400px" placeholder="주소를 입력해주세요."><br>&emsp;
								<input type="text" id="address_detail" name="address_detail" class="input" style="width:400px" placeholder="상세주소를 입력해주세요.">
							</h2>
						</div>
						<div id="divisiondiv">
							<h2 class="mb-4" id="h2Title">구분&emsp;
								<input type="radio" id="division_p" name="division" value="P" checked>학부모&emsp;&emsp;&emsp;
								<input type="radio" id="division_s" name="division" value="S">학생
							</h2>
						</div>
						<div id="parentdiv">
							<h2 class="mb-4" id="h2Title">부모님&emsp;
								<input type="text" id="parent" name="parent" placeholder="부모님의 이메일을 적어주세요." class="input" style="width:400px">
							</h2>
						</div>
						<br>
						<div>
							<input id="join" type="button" value="회원가입" onclick="Check()" class="btn btn-outline-secondary">&emsp; 
							<input id="reset" type="reset" value="취소" class="btn btn-outline-secondary">
						</div>
					</form>
				</div>
			</div>
		</div>
	</section>
	
	<!-- 카카오 주소찾기 api -->
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script type="text/javascript">
		window.onload = function(){
		    document.getElementById("address_kakao").addEventListener("click", function(){ //주소입력칸을 클릭하면
		        //카카오 지도 발생
		        new daum.Postcode({
		            oncomplete: function(data) { //선택시 입력값 세팅
		                document.getElementById("address_kakao").value = data.address; // 주소 넣기
		                document.querySelector("input[name=address_detail]").focus(); //상세입력 포커싱
		            }
		        }).open();
		    });
		}
	
		$(document).ready(function() {
			document.getElementById("parentdiv").style.display="none";
			$("input:radio[id=division_s]").click(function() {
				parent();
			})
		});
		
		

		function parent() {
			
				document.getElementById("parentdiv").style.display="block";	
			
		}

		function Check() {
			var pw = frm.password.value;
			var pw1 = frm.password1.value;

			if (frm.password.value == "") {
				alert("비밀번호를 입력해 주세요.");
				frm.password.focus();
				return false;
			}
			if (frm.name.value == "") {
				alert("이름을 입력해 주세요.");
				frm.name.focus();
				return false;
			}
			if (pw == pw1) {
				frm.submit();
			} else {
				alert("패스워드가 일치하지 않습니다.");
				frm.password.value = "";
				frm.password1.value = "";
				frm.password.focus();
				return false;
			}
		}

	</script>
	
	<script src="yswtemp/js/jquery.min.js"></script>
	<script src="yswtemp/js/jquery-migrate-3.0.1.min.js"></script>
	<script src="yswtemp/js/popper.min.js"></script>
	<script src="yswtemp/js/bootstrap.min.js"></script>
	<script src="yswtemp/js/jquery.easing.1.3.js"></script>
	<script src="yswtemp/js/jquery.waypoints.min.js"></script>
	<script src="yswtemp/js/jquery.stellar.min.js"></script>
	<script src="yswtemp/js/owl.carousel.min.js"></script>
	<script src="yswtemp/js/jquery.magnific-popup.min.js"></script>
	<script src="yswtemp/js/aos.js"></script>
	<script src="yswtemp/js/jquery.animateNumber.min.js"></script>
	<script src="yswtemp/js/scrollax.min.js"></script>
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
	<script src="yswtemp/js/google-map.js"></script>
	<script src="yswtemp/js/main.js"></script>
</body>
</html>