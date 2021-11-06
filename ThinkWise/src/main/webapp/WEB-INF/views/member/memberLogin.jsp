<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
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
#login {
	margin: 70px;
	padding-top: 30px;
}
</style>

</head>
<body>
	<div align="center" id="login">
		<section class="is-hero-bar">
			<div class="flex flex-col md:flex-row items-center justify-between space-y-6 md:space-y-0">
				<h1 class="title">Login</h1>
			</div>
		</section>
		<section class="section main-section">
			<div class="card">
				<div class="card-content">
					<form id="frm" action="memberLogin.do" method="post">
						<br><br>
						<div class="field">
							<label class="label" > Email
							 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<input type="text" id="email" name="email" placeholder="이메일을 입력해주세요" style="width:220px" class="input">
							</label> 
						</div>
						<div class="field">
							<label class="label"> Password
							 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<input type="password" id="password" name="password" placeholder="패스워드를 입력해주세요" style="width:220px" class="input">
							</label> 
						</div>
						<br><br>
						<div class="field">
							<div class="control">
								<input type="submit" class="btn btn-outline-secondary" value="로그인">
								<br><br> 
								<input type="button" value="회원가입" onclick="location.href='memberInputForm.do'" class="btn btn-outline-secondary"> 
								<input type="button" value="비밀번호찾기" onclick="location.href='findPwForm.do'" class="btn btn-outline-secondary">
							</div>
						</div>
						<br>
					</form>
				</div>
			</div>
		</section>
	</div>
	<noscript><img height="1" width="1" style="display:none" src="https://www.facebook.com/tr?id=658339141622648&ev=PageView&noscript=1"/></noscript>
</body>
</html>