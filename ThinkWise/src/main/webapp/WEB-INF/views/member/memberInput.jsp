<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$("input:radio[id=division_s]").click(function() {
			parent();
		})
	});

	function parent() {
		if ($("#parent").length < 1) {
			const table = document.getElementById('inputTable');
			const newRow = table.insertRow();
			const newCell1 = newRow.insertCell(0);
			const newCell2 = newRow.insertCell(1);

			newCell1.innerHTML = '부모님';
			newCell2.innerHTML = '<input type="text" id="parent" name="parent" placeholder="부모님 이메일을 적어주세요." >';
		}
	}

	function Check() {
		var pw = frm.password.value;
		var pw1 = frm.password1.value;
		
		if(frm.password.value == "") {
			alert("비밀번호를 입력해 주세요.");
			frm.password.focus();
			return false;
		}
		if(frm.name.value == "") {
			alert("이름을 입력해 주세요.");
			frm.name.focus();
			return false;
		}
		if(pw == pw1) {
			frm.submit();
		} else {
			alert("패스워드가 일치하지 않습니다.")	;
			frm.password.value="";
			frm.password1.value="";
			frm.password.focus();
			return false;
		}
	}
	
</script>
    <style>
    	#input{
    		margin: 70px;
    		padding-top: 30px;
    	}
    </style>
</head>
<body>
	<div align="center" id="input">
		<div>
			<h1>회원가입</h1>
		</div>
		<form id="frm" action="memberInput.do" method="post">
			<div>
				<table id='inputTable' border="1">
					<tr>
						<th>Email</th>
						<td>
						<input type="email" id="email" name="email" required="required" placeholder="이메일을 입력해주세요.">
						<input type="button" id="email1" name="email" onclick="checkEmail()" value="중복확인">
						</td>
					</tr>
					<tr>
						<th>비밀번호</th>
						<td><input type="password" id="password" name="password" required="required"></td>
					</tr>
					<tr>
						<th>비밀번호 확인</th>
						<td><input type="password" id="password1" required="required"></td>
					</tr>
					<tr>
						<th>이름</th>
						<td><input type="text" id="name" name="name"
							required="required"></td>
					</tr>
					<tr>
						<th>성별</th>
						<td>
						<label><input type="radio" id="gender" name="gender" value="M" checked>male</label>&nbsp;&nbsp; 
						<label><input type="radio" id="gender" name="gender" value="F">female</label>
						</td>
					</tr>
					<tr>
						<th>생년월일</th>
						<td><input type="date" id="birth" name="birth"></td>
					</tr>
					<tr>
						<th>전화번호</th>
						<td><input type="text" id="tel" name="tel"></td>
					</tr>
					<tr>
						<th>주소</th>
						<td><input type="text" id="address" name="address"></td>
					</tr>
					<tr>
						<th>구분</th>
						<td>
						<label><input type="radio" id="division" name="division" value="P" checked>학부모</label>&nbsp;&nbsp; 
						<label><input type="radio" id="division_s" name="division" value="S">학생</label>
						</td>
					</tr>
				</table>
			</div>
			<br>
			<div>
			
				<input id="join" type="button" disabled="true" value="회원가입" onclick="Check()"> 
			
				<input type="reset" value="취소">
			</div>
		</form>
	</div>
	<script type="text/javascript">
	function checkEmail(){
        var email = $('#email').val(); 
        $.ajax({
            url:'memberCheck.do',
            type:'post', 
            data:{email:email},
            datatype:'json',
            success:function(result){
            	console.log(result);      
            	alert(result);
            	$('#email1').prop('disabled', true);
            	$('#join').prop('disabled', false);
            },
            error:function(){
            	console.log(result);
            }
        });
    };
	</script>
</body>
</html>