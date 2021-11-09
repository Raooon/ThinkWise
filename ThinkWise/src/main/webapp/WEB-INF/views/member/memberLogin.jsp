<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
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

#frm {
	border: transparent;
    border-style: solid;
    width: 700px;
    margin: 20px;
    background-color: #f8f9fa;
    border-radius: 12px;
    box-shadow: 1px 1px darkgrey;
}

#loginh2 {
	font-size: 60px;
}

#emaildiv {
	margin-right: -10px;
}

#passworddiv {
	margin-right: 44px;
}

#emailInput{
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

#passwordInput{
	font-size: 30px;
	color : #5d50c6;
}

input#password {
	font-size: 19px;
	width: 400px;
	heigh: 40px; 
	padding-top: 5px;
	padding-left: 3px;
	padding-bottom: 5px; 
}

#loginBtn {
	margin-left: 18px;
	width: 370px;
	heigh: 40px;
	font-size: 20px;
	
}

#permissionBtn {
	margin-left: 15px;
	width: 180px;
	heigh: 40px;
	font-size: 20px;
}

#findPwBtn {
	margin-left: 5px;
	width: 180px;
	heigh: 40px;
	font-size: 20px;
}
</style>

</head>
<body>
<br><br>
	<script type="text/javascript">
		if ("${message }" != "") {
			alert("${message}");
		}
	</script>
	
	<section class="ftco-section" id="ftco-section">
		<div class="container">
			<div class="row justify-content-center mb-5 pb-2">
				<div class="col-md-8 text-center heading-section ftco-animate">
					<h2 class="mb-4" id="loginh2">
						<span>L</span>ogin
					</h2>
				</div>
			</div>
		</div>
		<div class="container">
			<div class="row justify-content-center mb-5 pb-2">
				<div class="col-md-8 text-center heading-section ftco-animate" align="center">
						<form id="frm" action="memberLogin.do" method="post">
								<br>
								<br>
								<div id="emaildiv">
									<h2 class="mb-4" id="emailInput"> Email &emsp; 
									<input type="text" id="email" name="email" placeholder="이메일을 입력해주세요" class="input"></h2>
								</div>
								<div id="passworddiv">
									<h2 class="mb-4" id="passwordInput"> Password &emsp; 
									<input type="password" id="password" name="password" placeholder="패스워드를 입력해주세요" class="input">
									</h2>
								</div>
								<br>
								<div class="field">
									<div class="control">
										<input id="loginBtn" type="submit" class="btn btn-outline-secondary" value="로그인"> <br><br> 
										<input id="permissionBtn" type="button" value="회원가입" onclick="location.href='emailPermissionForm.do'" class="btn btn-outline-secondary"> 
										<input id="findPwBtn" type="button" value="비밀번호찾기" onclick="location.href='findPwForm.do'" class="btn btn-outline-secondary">
									</div>
								</div>
								<br>
						</form>
				</div>
			</div>
		</div>
	</section>
	<br><br><br>
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