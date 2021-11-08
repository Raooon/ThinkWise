<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 찾기</title>
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

#loginh2 {
	font-size: 40px;
}

#frm {
	border: 1px #363636;
    border-style: solid;
    margin-left: -65px;
    width: 900px;
}

#emaildiv {
	margin-left: 15px;
}

#emailInput {
	font-size: 30px;
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

input#emailbtn {
	width: 150px;
	heigh: 40px;
	font-size: 18px;
}
#namediv {
	margin-right: 187px;
}

#nameInput {
	font-size: 27px;
	color : #5d50c6;
}

input#name {
	font-size: 19px;
	width: 400px;
	heigh: 40px; 
	padding-top: 5px;
	padding-left: 3px;
	padding-bottom: 5px; 
}

#teldiv {
	margin-right: 215px;
}

#telInput {
	font-size: 27px;
	color : #5d50c6;
}

input#tel {
	font-size: 19px;
	width: 400px;
	heigh: 40px; 
	padding-top: 5px;
	padding-left: 3px;
	padding-bottom: 5px; 
}

input#findPwBtn {
	margin-right: 15px;
	width: 180px;
	heigh: 40px;
	font-size: 20px;
}

</style>
</head>
<body>
	<section class="ftco-section bg-light" id="session">
		<div class="container">
			<div class="row justify-content-center mb-5 pb-2">
				<div class="col-md-8 text-center heading-section ftco-animate">
					<h2 class="mb-4" id="loginh2">
						<span>비밀번호 </span>찾기
					</h2>
				</div>
			</div>
		</div>
		<div class="container">
			<div class="row justify-content-center mb-5 pb-2">
				<div class="col-md-8 text-center heading-section ftco-animate" align="center">
					<form id="frm" action="findPw.do" method="post">
					<br>
					<br>
					<div id="emaildiv">
						<h2 class="mb-4" id="emailInput"> Email &emsp; 
						<input type="text" id="email" name="email" placeholder="기억하시는 이메일을 입력해주세요" class="input" required="required"> &emsp; 
						<input type="button" id="emailbtn" name="email" onclick="checkEmail()" value="이메일 확인" class="btn btn-outline-secondary">
						</h2>
					</div>
					<div id="namediv">
						<h2 class="mb-4" id="nameInput">&emsp;이름 &emsp; 
						<input type="text" id="name" name="name" required="required" placeholder="이름을 입력해주세요." class="input">
						</h2>
					</div>
					<div id="teldiv">
						<h2 class="mb-4" id="telInput"> 전화번호 &emsp; 
						<input type="text" id="tel" name="tel" class="input" required="required" placeholder="전화번호를 입력해주세요.">
						</h2>
					</div>
					<br>
					<div class="field">
						<div class="control">
							<input id="findPwBtn" type="submit" class="btn btn-outline-secondary" value="비밀번호 찾기" disabled="true" id="findpw"> <br>
							<br>
						</div>
					</div>
					<br>
				</form></div>
			</div>
		</div>
	</section>

	<script type="text/javascript">
		function checkEmail() {
			var email = $('#email').val();
			$.ajax({
				url : 'memberCheck2.do',
				type : 'post',
				data : {
					email : email
				},
				success : function(result) {
					console.log(result);
					alert(result);
					if (result == "이메일이 확인 되었습니다.") {
						$('#email1').prop('disabled', true);
						$('#findpw').prop('disabled', false);
					}
				},
				error : function() {
					console.log(result);
				}
			});
		};

		function mailSubmit() {
			var email = $('#email').val();
			var name = $('#name').val();
			var tel = $('#tel').val();
			$.ajax({
				url : 'findPw.do',
				type : 'post',
				data : {
					email : email,
					name : name,
					tel : tel
				},
				success : function() {
				},
				error : function(reject) {
					alert(reject);
				}
			});
		};
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