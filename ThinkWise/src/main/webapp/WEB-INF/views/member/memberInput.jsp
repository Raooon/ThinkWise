<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
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
#input {
	margin: 70px;
	padding-top: 30px;
}
</style>

</head>
<body>
	<div align="center" id="input">
		<section class="is-hero-bar">
			<div
				class="flex flex-col md:flex-row items-center justify-between space-y-6 md:space-y-0">
				<h1 class="title">회원가입</h1>
			</div>
		</section>
		<section class="section main-section">
			<div class="card">
				<div class="card-content">
					<form id="frm" action="memberInput.do" method="post">
						<div class="field" align="center">
							<label class="label">Email
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;     
								<input type="email" id="email" name="email" required="required" placeholder="이메일을 입력해주세요." class="input" style="width:400px"> 
								&emsp;<input type="button" id="email1" name="email" onclick="checkEmail()" value="중복확인" class="btn btn-outline-secondary">
							</label>
							<div class="field">
								<label class="label">비밀번호
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;     
										<input type="password" id="password" name="password" placeholder="비밀번호를 입력해주세요." required="required" class="input" style="width:400px">
										&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
								</label>
							</div>
							<div class="field">
								<label class="label">비밀번호 확인
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
									<input type="password" id="password1" required="required" class="input" placeholder="한번 더 입력해주세요." style="width:400px">
									&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
								</label>
							</div>
							<div class="field">
								<label class="label">&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;이름
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<input type="text" id="name" name="name" required="required" placeholder="이름을 입력해주세요." class="input" style="width:400px">
									&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
								</label>
							</div>
							<div class="field">
								<label class="label">&emsp;&nbsp;성별
								&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
										<input type="radio" id="gender" name="gender" value="M" checked >male&emsp;&emsp;&emsp;&emsp;
										<input type="radio" id="gender" name="gender" value="F">female
										&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
								</label>
							</div>
							<div class="field">
								<label class="label">생년월일
								&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;
									<input type="date" id="birth" name="birth">
									&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
								</label>
							</div>
							<div class="field">
								<label class="label">전화번호
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;     
										<input type="text" id="tel" name="tel" class="input" style="width:400px" placeholder="전화번호를 입력해주세요.">
										&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
								</label>
							</div>
							<div class="field">
								<label class="label">&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;주소
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<input type="text" id="address" name="address" class="input" style="width:400px" placeholder="주소를 입력해주세요.">
									&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
								</label>
							</div>
							<div class="field">
								<label class="label">&emsp;&nbsp;구분
								&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
										<input type="radio" id="division" name="division" value="P" checked>학부모&emsp;&emsp;&emsp;&emsp;
										<input type="radio" id="division_s" name="division" value="S">학생
										&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
								</label>
							</div>
							<div class="field" id="parentDiv">
								<label class="label">&nbsp;&nbsp;&nbsp;&nbsp;부모님
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;     
										<input type="text" id="parent" name="parent" placeholder="부모님 이메일을 적어주세요." class="input" style="width:400px">
										&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
								</label>
							</div>
						</div>
						<br>
						<div>
							<input id="join" type="button" disabled="true" value="회원가입" onclick="Check()" class="btn btn-outline-secondary">&emsp; 
							<input type="reset" value="취소" class="btn btn-outline-secondary">
						</div>
					</form>
				</div>
			</div>
		</section>
	</div>
	<script type="text/javascript">
		$(document).ready(function() {
			document.getElementById("parentDiv").style.display="none";
			$("input:radio[id=division_s]").click(function() {
				parent();
			})
		});

		function parent() {
			
				document.getElementById("parentDiv").style.display="block";	
			
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

		function checkEmail() {
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
					$('#email1').prop('disabled', true);
					$('#join').prop('disabled', false);
				},
				error : function() {
					console.log(result);
				}
			});
		};
	</script>
</body>
</html>