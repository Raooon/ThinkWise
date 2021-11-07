<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 메일 전송</title>

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
#sendMail {
	margin: 70px;
	padding-top: 30px;
}
</style>

</head>
<body>
	<div align="center" id="sendMail">
		<section class="is-hero-bar">
			<div
				class="flex flex-col md:flex-row items-center justify-between space-y-6 md:space-y-0">
				<h1 class="title">비밀번호 찾기</h1>
			</div>
		</section>
		<section class="section main-section">
			<div class="card">
				<div class="card-content">
					<br>
					<br>
					<div style= "font-size:30px;" class="field">
								<h4>${message }</h4>
					</div>
					<br>
					<br>
					<div class="field" id="notFound">
						<input id="notFound" type="button" value="비밀번호 찾기" onclick="location.href='findPwForm.do'" class="btn btn-outline-secondary">&emsp; 
					</div>
				</div>
			</div>
		</section>
	</div>
</body>
</html>