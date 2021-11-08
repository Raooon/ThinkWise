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
#pwdiv1 {
	margin-right: 23px;
}
#pwdiv2 {
	margin-right: 62px;
}
#namediv {
	margin-right: -10px;
}
#genderdiv {
	margin-right: 97px;
}
#birthdiv {
	margin-right: 135px;
}
#teldiv {
	margin-right: 23px;
}
#addressdiv {
	margin-right: -10px;
}
#divisiondiv {
	margin-right: 110px;
}
#parentDiv {
	margin-right: 5px;
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
						<div class="field" align="center" id="emaildiv">
							<label class="label">Email&emsp;
								<input type="email" id="email" name="email" required="required" value=${email } class="input" style="width:400px" readonly> 
							</label>
						</div>
						<div class="field" id="pwdiv1">
							<label class="label">비밀번호&emsp;
								<input type="password" id="password" name="password" placeholder="비밀번호를 입력해주세요." required="required" class="input" style="width:400px">
							</label>
						</div>
						<div class="field" id="pwdiv2">
							<label class="label">비밀번호 확인&emsp;
								<input type="password" id="password1" required="required" class="input" placeholder="한번 더 입력해주세요." style="width:400px">
							</label>
						</div>
						<div class="field" id="namediv">
							<label class="label">이름&emsp;
								<input type="text" id="name" name="name" required="required" placeholder="이름을 입력해주세요." class="input" style="width:400px">
							</label>
						</div>
						<div class="field" id="genderdiv">
							<label class="label">성별&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
									<input type="radio" id="gender_M" name="gender" value="M" checked >male&emsp;&emsp;&emsp;
									<input type="radio" id="gender_F" name="gender" value="F">female
							</label>
						</div>
						<div class="field" id="birthdiv">
							<label class="label">생년월일&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
								<input type="date" id="birth" name="birth">
							</label>
						</div>
						<div class="field" id="teldiv">
							<label class="label">전화번호&emsp;
								<input type="text" id="tel" name="tel" class="input" style="width:400px" required="required" placeholder="전화번호를 입력해주세요.">
							</label>
						</div>
						<div class="field" id="addressdiv">
							<label class="label">주소&emsp;
								<input type="text" id="address" name="address" class="input" style="width:400px" placeholder="주소를 입력해주세요.">
							</label>
						</div>
						<div class="field" id="divisiondiv">
							<label class="label">구분&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
								<input type="radio" id="division_p" name="division" value="P" checked>학부모&emsp;&emsp;&emsp;
								<input type="radio" id="division_s" name="division" value="S">학생
							</label>
						</div>
						<div class="field" id="parentDiv">
							<label class="label">부모님&emsp;
								<input type="text" id="parent" name="parent" placeholder="부모님의 이메일을 적어주세요." class="input" style="width:400px">
							</label>
						</div>
						<br>
						<div>
							<input id="join" type="button" value="회원가입" onclick="Check()" class="btn btn-outline-secondary">&emsp; 
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

		//새로고침 막기
		function noEvent() {
          if (event.keyCode == 116) {
              event.keyCode= 2;
              return false;
          }
          else if(event.ctrlKey && (event.keyCode==78 || event.keyCode == 82))
          {
              return false;
          }
      }
     	 document.onkeydown = noEvent;
	</script>
</body>
</html>