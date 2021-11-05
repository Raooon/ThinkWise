<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<style>
	#login {
		margin: 70px;
		padding-top: 30px;
	}
</style>
</head>
<body>
	<div align="center" id="login">
		<div>
			<h1>Login</h1>
		</div>
		<form id="frm" action="memberLogin.do" method="post">
			<div>
				<table border="1">
					<tr>
						<th>Email</th>
						<td>
							<input type="text" id="email" name="email" placeholder="이메일을 입력해주세요">
						</td>
					</tr>
					<tr>
						<th>Password</th>
						<td>
							<input type="password" id="password" name="password" placeholder="패스워드를 입력해주세요">
						</td>
					</tr>
				</table>
			</div><br>
			<div>
				<input type="submit" value="로그인">
				<input type="button" value="회원가입" onclick="location.href='memberInputForm.do'">	
				<input type="button" value="이메일찾기" onclick="location.href='memberSelectEmailForm.do'">	
			</div>
		</form>
	</div>
</body>
</html>