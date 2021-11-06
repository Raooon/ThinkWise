<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 찾기</title>
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
#findPW {
	margin: 70px;
	padding-top: 30px;
}
</style>
</head>
<body>
	<div align="center" id="findPW">
		<section class="is-hero-bar">
			<div class="flex flex-col md:flex-row items-center justify-between space-y-6 md:space-y-0">
				<h1 class="title">비밀번호 찾기</h1>
			</div>
		</section>
		<section class="section main-section">
			<div class="card">
				<div class="card-content">
					<form id="frm" action="" method="post" onsubmit='return mailSubmit()'>
					<br><br>
						<div class="field">
							<label class="label" > Email &emsp;&emsp;&emsp;
							<input type="text" id="email" name="email" placeholder="기억하시는 이메일을 입력해주세요" style="width:400px" class="input" required="required">
							&emsp;<input type="button" id="email1" name="email" onclick="checkEmail()" value="이메일 확인" class="btn btn-outline-secondary">
							</label> 
						</div>
						<div class="field">
								<label class="label">&emsp;이름 &emsp;&emsp;&emsp;
									<input type="text" id="name" name="name" required="required" placeholder="이름을 입력해주세요." class="input" style="width:400px">
								&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;
								</label>
							</div>
						<div class="field">
							<label class="label" > 전화번호 &emsp;&emsp;&emsp;
							<input type="text" id="tel" name="tel" class="input" required="required" style="width:400px" placeholder="전화번호를 입력해주세요.">
							&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;
							</label> 
						</div>
						<br><br>
						<div class="field">
							<div class="control">
								<input type="submit" class="btn btn-outline-secondary" value="비밀번호 찾기" disabled="true" id="findpw">
								<br><br>
								</div>
							</div>
						<br>
					</form>
				</div>
			</div>
		</section>
	</div>
	
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
				$('#email1').prop('disabled', true);
				$('#findpw').prop('disabled', false);
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
			type: 'post',
			data: {email : email,
					name: name,
					tel : tel},
			success : function(){
				alert("성공");
			},
			error : function() {
				alert("실패");
			}
		});
	};
	</script>
</body>
</html>