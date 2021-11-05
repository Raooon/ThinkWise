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
  <div class="grid grid-cols-1 gap-6 lg:grid-cols-2 mb-6">
    <div class="card">
      <div class="card-content">
        <form>
        <label class="label" style="font-size: 17px">Edit Profile</label>
          <hr>
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
        <hr>
        <div class="field">
          <label class="label">E-mail</label>
          <div class="control">
            <input type="text" readonly value="${member.email }" class="input is-static">
          </div>
        </div>
        <hr>
        <div class="field">
          <label class="label">Name</label>
          <div class="control">
            <input type="text" readonly value="${member.name }" class="input is-static">
          </div>
        </div>
        <hr>
        <div class="field">
          <label class="label">Telephone</label>
          <div class="control">
            <input type="text" readonly value="${member.tel }" class="input is-static">
          </div>
        </div>
        <hr>
        <div class="field">
          <label class="label">Address</label>
          <div class="control">
            <input type="text" readonly value="${member.address }" class="input is-static">
          </div>
        </div>
      </div>
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
          </div>
        </div>
      </form>
    </div>
  </div>
</section>
  
<form name="frm" method="post">
	<input type="hidden" id="id" name="id" value="${member.id }">
	<input type="hidden" id="newName" name="newName" value="">
	<input type="hidden" id="newTel" name="newTel" value="">
	<input type="hidden" id="newAddress" name="newAddress" value="">
</form>

<div id="sample-modal" class="modal">
  <div class="modal-background --jb-modal-close"></div>
  <div class="modal-card">
    <section class="modal-card-body">
      <p>Lorem ipsum dolor sit amet <b>adipiscing elit</b></p>
      <p>This is sample modal</p>
    </section>
    <footer class="modal-card-foot">
      <button class="button --jb-modal-close">Cancel</button>
      <button class="button red --jb-modal-close">Confirm</button>
    </footer>
  </div>
</div>

<div id="sample-modal-2" class="modal">
  <div class="modal-background --jb-modal-close"></div>
  <div class="modal-card">
    <header class="modal-card-head">
      <p class="modal-card-title">Sample modal</p>
    </header>
    <section class="modal-card-body">
      <p>Lorem ipsum dolor sit amet <b>adipiscing elit</b></p>
      <p>This is sample modal</p>
    </section>
    <footer class="modal-card-foot">
      <button class="button --jb-modal-close">Cancel</button>
      <button class="button blue --jb-modal-close">Confirm</button>
    </footer>
  </div>
</div>

</div>

<!-- Scripts below are for demo only -->
<script type="text/javascript" src="profile/js/main.min.js?v=1628755089081"></script>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
	function CallEdit(str){
		let pw = $('#newPassword').val();
		let pw1 = $('#newPwConfirm').val();
		console.log(pw);
		console.log(pw1);
		if(str == 'E'){
			editInfo();
			return;
		} else {
			if(pw == pw1){
				pwCheck();
				return;
				
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
		var name = $('#name').val();
		var tel = $('#tel').val();
		var address = $('#address').val();
		$.ajax({
			url: "memberInfoEdit.do",
			type: "POST",
			async: false,
			data: {name:name,
				   tel:tel,
				   address:address},
			dataType: "json",
			success: function(data) {
				window.alert(data);
			},
			error: function(data) {
				alert(JSON.stringify(data));
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
			async: false,
			data: {password:curPw,
				   id:id,
				   newPw:newPw},
			dataType: "json",
			success: function(data) {
				window.alert(data);
				$("#password_current").val("");
				$("#newPassword").val("");
				$("#newPwConfirm").val("");
			},
			error: function(data) {
				alert(JSON.stringify(data));
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
</body>
</html>