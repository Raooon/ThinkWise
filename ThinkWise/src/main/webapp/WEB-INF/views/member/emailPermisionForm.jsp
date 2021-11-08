<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Tailwind is included -->
<link rel="stylesheet" href="profile/css/main.css?v=1628755089081">

<link rel="apple-touch-icon" sizes="180x180" href="apple-touch-icon.png" />
<link rel="icon" type="image/png" sizes="32x32" href="favicon-32x32.png" />
<link rel="icon" type="image/png" sizes="16x16" href="favicon-16x16.png" />
<link rel="mask-icon" href="safari-pinned-tab.svg" color="#00b4b6" />

<meta name="description" content="Admin One - free Tailwind dashboard">

<style>

#emailP {
	margin: 70px;
	padding-top: 30px;
}

#label2 {
	margin-right: -7px;
}

</style>
</head>
<body>
	<div align="center" id="emailP">
		<section class="is-hero-bar">
			<div
				class="flex flex-col md:flex-row items-center justify-between space-y-6 md:space-y-0">
				<h1 class="title">이메일 인증</h1>
			</div>
		</section>
		<section class="section main-section">
			<div class="card">
				<div class="card-content">
					<form id="frm" action="emailPermision.do" method="post">
						<div class="field">
							<label class="label">Email 인증&emsp;&emsp;
							<input type="email"id="email" name="email" required="required" placeholder="이메일을 입력해주세요." class="input" style="width: 400px">&emsp; 
							<input type="button" id="emailcheck" name="emailcheck" onclick="checkEmail()" value="중복확인" class="btn btn-outline-secondary"><br><br>
							<input type="button" id="emailPermision" name="emailPermision" onclick="sendEmail()" value="인증번호 전송" class="btn btn-outline-secondary">
							</label>
						</div><br>
						<div class="field" id="Permision">
							<label class="label" id="label2">인증번호 입력&emsp;&emsp;     
							<input type="text" id="perNb" name="perNb" required="required" placeholder="인증번호를 입력해주세요." class="input" style="width: 400px">&emsp;
							<input type="submit" id="perNbBTN" name="perNbBTN" value="인증번호 확인" class="btn btn-outline-secondary">
							</label>
						</div>
					</form>
				</div>
			</div>
		</section>
	</div>
	
	<script>
	$(document).ready(function() {
		document.getElementById("emailPermision").style.display="none";
		document.getElementById("Permision").style.display="none";
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
					document.getElementById("emailPermision").style.display="block";
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
			}
		});
	}

	</script>
</body>
</html>