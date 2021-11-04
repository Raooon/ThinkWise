<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<script type="text/javascript">
$(document).ready(function() {
	$("input:radio[id=division_p]").click(function(){
		parent();
	})
});
function parent() {
	/* var inputTable=document.getElementById('testTable');
	var newRow = questTable.insertRow();
	var newCell = newRow.insertCell();
	
	newCell.className="자녀"
	
	newCell.innerHTML = "<input type="text" id="parent" name="parent" placeholder="자녀 이름을 적어주세요." >"; */
	$("alert")
}
</script>
</head>
<body>
<div align="center">
	<div><h1>회원가입</h1></div>
	<table id='inputTable'>
		<tr>
			<th>Email</th>
			<td>
			<input type="email" id="email" name="email" required="required" placeholder="이메일을 입력해주세요.">
			</td>
		</tr>
		<tr>
			<th>비밀번호</th>
			<td>
			<input type="password" id="password" name="password" required="required">
			</td>
		</tr>
		<tr>
			<th>비밀번호 확인</th>
			<td>
			<input type="password" id="password" name="password" required="required">
			</td>
		</tr>
		<tr>
			<th>이름</th>
			<td>
			<input type="text" id="name" name="name" required="required">
			</td>
		</tr>
		<tr>
			<th>성별</th>
			<td>
			<label><input type="radio" id="gender" name="gender" value="male" checked>male</label>&nbsp;&nbsp;
			<label><input type="radio" id="gender" name="gender" value="female">female</label>
			</td>
		</tr>
		<tr>
			<th>생년월일</th>
			<td>
			<input type="date" id="birth" name="birth">
			</td>
		</tr>
		<tr>
			<th>전화번호</th>
			<td>
			<input type="text" id="tel" name="tel">
			</td>
		</tr>
		<tr>
			<th>주소</th>
			<td>
			<input type="text" id="address" name="address">
			</td>
		</tr>
		<tr>
			<th>구분</th>
			<td>
			<label><input type="radio" id="division" name="division" value="s" checked>학생</label>&nbsp;&nbsp;
			<label><input type="radio" id="division_p" name="division" value="p">학부모</label>
			</td>
		</tr>
		
	</table>
</div>
</body>
</html>