<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>내정보</title>
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Profile - Admin One Tailwind CSS Admin Dashboard</title>

  <!-- Tailwind is included -->
  <link rel="stylesheet" href="profile/css/main.css?v=1628755089081">
  <link href="mltemp/css/styles.css" rel="stylesheet" />
  <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
  <link rel="apple-touch-icon" sizes="180x180" href="apple-touch-icon.png"/>
  <link rel="icon" type="image/png" sizes="32x32" href="favicon-32x32.png"/>
  <link rel="icon" type="image/png" sizes="16x16" href="favicon-16x16.png"/>
  <link rel="mask-icon" href="safari-pinned-tab.svg" color="#00b4b6"/>

  <meta name="description" content="Admin One - free Tailwind dashboard">

<style>
   #app{
      margin: 70px;
      padding-top: 30px;
   }
   #layoutSidenav{
	  margin-left: -1.5rem;
	  margin-right: -1.5rem;
   }
</style>
</head>
<body>
<div id="app">
<section class="is-hero-bar">
  <div class="flex flex-col md:flex-row items-center justify-between space-y-6 md:space-y-0">
    <h1 class="title">
      Profile
    </h1>
  </div>
</section>
<section class="section main-section">
    <div class="card" style="margin-bottom: 20px;">
      <div class="card-content">
        <form>
        <label class="label" style="font-size: 17px">Edit Profile</label>
          <hr>
          <div class="field">
            <label class="label">E-mail</label>
            <div class="field-body">
              <div class="field">
                <div class="control">
                  <input type="text" autocomplete="on" readonly="readonly" value="${member.email }" class="input" required>
                </div>
              </div>
            </div>
          </div>
          <div class="field">
            <label class="label">Name</label>
            <div class="field-body">
              <div class="field">
                <div class="control">
                  <input type="text" autocomplete="on" id="name" name="name" value="${member.name }" class="input" required>
                </div>
                <p class="help">Required. Your name</p>
              </div>
            </div>
          </div>
          <div class="field">
            <label class="label">Telephone</label>
            <div class="field-body">
              <div class="field">
                <div class="control">
                  <input type="text" autocomplete="on" id="tel" name="tel" value="${member.tel }" class="input" required>
                </div>
                <p class="help">Required. Your telephone</p>
              </div>
            </div>
          </div>
          <div class="field">
            <label class="label">Address</label>
            <div class="field-body">
              <div class="field">
                <div class="control">
                  <input type="text" autocomplete="on" id="address" name="address" value="${member.address }" class="input" required>
                </div>
                <p class="help">Required. Your address</p>
              </div>
            </div>
          </div>
          <hr>
          <div class="field">
            <div class="control">
              <button type="button" onclick="CallEdit('E')" class="button green" style="border: 1px solid silver">
                Submit
              </button>
            </div>
          </div>
        </form>
      </div>
    </div>
  <div class="card">
    <div class="card-content">
      <form>
        <div class="field">
          <label class="label">Current password</label>
          <div class="control">
            <input type="password" id="password_current" name="password_current" autocomplete="current-password" class="input" required>
          </div>
          <p class="help">Required. Your current password</p>
        </div>
        <hr>
        <div class="field">
          <label class="label">New password</label>
          <div class="control">
            <input type="password" autocomplete="new-password" id="newPassword" name="newPassword" class="input" required>
          </div>
          <p class="help">Required. New password</p>
        </div>
        <div class="field">
          <label class="label">Confirm password</label>
          <div class="control">
            <input type="password" autocomplete="new-password" id="newPwConfirm" name="newPwConfirm" class="input" required>
          </div>
          <p class="help">Required. New password one more time</p>
        </div>
        <hr>
        <div class="field">
          <div class="control">
            <button type="button" onclick="CallEdit('P')" class="button green" style="border: 1px solid silver">
              Submit
            </button>
            <button type="button" onclick="DeleteAccount()" class="button green" style="border: 1px solid silver; float: right">
              Delete my Account
            </button>
          </div>
        </div>
      </form>
    </div>
  </div>
</section>
  
<form id="frm" name="frm" action="" method="post">
	<input type="hidden" id="id" name="id" value="${member.id }">
	<input type="hidden" id="email" name="email" value="${member.email }">
</form>

</div>
<c:if test="${not empty MyClasses[0].class_cd}">
<div id="layoutSidenav">
		<div id="layoutSidenav_content">
			<main>
				<div class="container-fluid px-4" style="width: 90%;">
					<h1 class="mt-4">My Class</h1>
					<div class="card mb-4">
						<div class="card-header">
							<i class="fas fa-table me-1"></i> DataTable
						</div>
						<div class="card-body">
							<table id="datatablesSimple">
								<thead>
									<tr>
										<th>학생명</th>
										<th>수업코드</th>
										<th>수업명</th>
										<th>수업시간</th>
										<th>시작일</th>
										<th>종료일</th>
										<th>강사명</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${MyClasses }" var="Classes">
										<tr>
											<td>${Classes.name }</td>
											<td>${Classes.class_cd }</td>
											<td>${Classes.subject_nm }</td>
											<td>${Classes.class_time }</td>
											<td>${Classes.fr_period }</td>
											<td>${Classes.to_period }</td>
											<td>${Classes.teacher_nm }</td>
										</tr>
									</c:forEach>
								
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</main>
		</div>
	</div>
	</c:if>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
	<script src="mltemp/js/scripts.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
	<script src="mltemp/js/datatables-simple-demo.js"></script>
	<!-- Scripts below are for demo only -->
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script type="text/javascript">
	function DeleteAccount() {
		if(window.confirm("정말로 탈퇴하시겠습니까?")){
			frm.action = "memberDelete.do";
		} else {
			return;
		}
		frm.submit();
	}
	
	function CallEdit(str){
		let pw = $('#newPassword').val();
		let pw1 = $('#newPwConfirm').val();
		console.log(pw);
		console.log(pw1);
		if(str == 'E'){
			if(window.confirm("입력하신 정보로 변경하시겠습니까?")){
				editInfo();
			} else{
				return;
			}
		} else {
			if(pw == pw1){
				if(window.confirm("비밀번호를 변경하시겠습니까?")){
					pwCheck();
				} else{
					return;
				}
				
			} else {
				window.alert("새로운 패스워드가 일치하지않습니다");
				$("#password_current").val("");
				$('#newPassword').val('');
				$('#newPwConfirm').val('');
				return;
			}
			
		}
	}
	
	function editInfo() {
		//var curPw = $('#password_current').val();
		//var id = $('#id').val();
		//var newPw = document.getElementById("newPassword").value;
		var id = $('#id').val();
		var name = $('#name').val();
		var tel = $('#tel').val();
		var address = $('#address').val();
		$.ajax({
			url: "memberInfoEdit.do",
			type: "POST",
			data: {id:id,
				   name:name,
				   tel:tel,
				   address:address},
			success: function(data) {
				window.alert(data);
				$("#id").val(id);
				$("#name").val(name);
				$("#tel").val(tel);
				$("#address").val(address);
			},
			error: function(data) {
				console.log(data);
            }
		});
	}
	
	function pwCheck() {
		var curPw = $('#password_current').val();
		var id = $('#id').val();
		var newPw = document.getElementById("newPassword").value;
		console.log(newPw);
		$.ajax({
			url: "memberPwEdit.do",
			type: "POST",
			data: {password:curPw,
				   id:id,
				   newPw:newPw},
			success: function(data) {
				console.log(data);
				window.alert(data);
				$("#password_current").val("");
				$("#newPassword").val("");
				$("#newPwConfirm").val("");
			},
			error: function(data) {
				console.log(data);
				$("#password_current").val("");
				$("#newPassword").val("");
				$("#newPwConfirm").val("");
            }
		});
	}
	
</script>

<noscript><img height="1" width="1" style="display:none" src="https://www.facebook.com/tr?id=658339141622648&ev=PageView&noscript=1"/></noscript>

<!-- Icons below are for demo only. Feel free to use any icon pack. Docs: https://bulma.io/documentation/elements/icon/ -->

</body>
</html>