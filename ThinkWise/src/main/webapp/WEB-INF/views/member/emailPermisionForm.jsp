<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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

}

#frm {

}

#emailDiv {

}

#emailInput {

}

input#email {

}
#emailcheckBtn {

}

#emailPermisionBtn {

}

#Permision {

}

#perNbInput {
	margin-right: -7px;
}

input#perNb {

}

#perNbBtn {

}
</style>
</head>
<body>
	<section class="ftco-section bg-light">
		<div class="container">
			<div class="row justify-content-center mb-5 pb-2">
				<div class="col-md-8 text-center heading-section ftco-animate">
					<h2 class="mb-4" id="loginh2">
						<span>이메일 </span>인증
					</h2>
				</div>
			</div>
		</div>
		<div class="container">
			<div class="row justify-content-center mb-5 pb-2">
				<div class="col-md-8 text-center heading-section ftco-animate" align="center">
					<form id="frm" action="emailPermision.do" method="post">
						<div id="emailDiv">
							<h2 class="mb-4" id="emailInput"> Email 인증&emsp;&emsp;
							<input type="email"id="email" name="email" required="required" placeholder="이메일을 입력해주세요." class="input" style="width: 400px">&emsp; 
							<input type="button" id="emailcheckBtn" name="emailcheck" onclick="checkEmail()" value="중복확인" class="btn btn-outline-secondary"><br><br>
							<input type="button" id="emailPermisionBtn" name="emailPermision" onclick="sendEmail()" value="인증번호 전송" class="btn btn-outline-secondary">
							</h2>
						</div><br>
						<div id="Permision">
							<h2 class="mb-4" id="perNbInput">인증번호 입력&emsp;&emsp;     
							<input type="text" id="perNb" name="perNb" required="required" placeholder="인증번호를 입력해주세요." class="input" style="width: 400px">&emsp;
							<input type="submit" id="perNbBtn" name="perNbBTN" value="인증번호 확인" class="btn btn-outline-secondary">
							</h2>
						</div>
					</form>
				</div>
			</div>
		</div>
	</section>
	
	<script>
	$(document).ready(function() {
		//document.getElementById("emailPermision").style.display="none";
		//document.getElementById("Permision").style.display="none";
	});
	
	function checkEmail() {
		console.log("확인");
		var email = $('#email').val();
		$.ajax({
			url : 'memberCheck.do',
			type : 'post',
			data : {
				email : email
			},
			success : function(result) {
				console.log(result);
				alert(result);
				if(result == "사용가능한 이메일 입니다.") {
					document.getElementById("emailPermisionBtn").style.display="block";
				}
			},
			error : function() {
				console.log(reject);
			}
		});
	};
	
	function sendEmail(){
		var email =  $('#email').val();
		$.ajax({
			url : 'sendEmail.do',
			type : 'post',
			data : {
				email : email
			},
			success : function(result) {
				document.getElementById("Permision").style.display="block";
				console.log(result);
				alert(result);
			},
			error : function() {
				document.getElementById("Permision").style.display="block";
				console.log(result);
				alert(result);
			}
		});
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