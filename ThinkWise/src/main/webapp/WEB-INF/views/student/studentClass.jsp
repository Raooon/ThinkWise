<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>subject management</title>
<link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
<link rel="stylesheet" href="profile/css/main.css?v=1628755089081">
<link href="mltemp/css/styles.css" rel="stylesheet" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
<style>
	#app{
      	margin: 70px;
      	padding-top: 30px;
   	}
   	#layoutSidenav{
      	margin: 70px;
      	padding-top: 30px;
      	margin-left: 15%;
      	margin-right: 15%;
   	}
   	#LoId{
		font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, "Noto Sans", sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol", "Noto Color Emoji";
		margin-left: 30px;
		color: rgb(8, 36, 101);
		font-size: 44px;
		margin-top: -50px;
	}
</style>
</head>
<body>

<script>
	if ("${message }" != "") {
		alert("${message }");
	}
</script>

<div id="layoutSidenav">
	<div id="layoutSidenav_content">
		<main>
			<h1 class="mt-4" id="LoId">Student Class List</h1>
			<div class="container-fluid px-4">
				<div class="card mb-4">
					<div class="card-header">
						<i class="fas fa-table me-1"></i> DataTable
					</div>
					<div class="card-body" style="margin-bottom: 0">
						<table id="datatablesSimple">
							<thead>
								<tr>
									<th>아이디</th>
									<th>이름</th>
									<th>수업코드</th>
									<th>수업정보</th>
									<th>지불여부</th>
									<th></th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${students }" var="data">
									<tr id="${data.id }">
										<td>${data.id }</td>
										<td>${data.name }</td>
										<td><input type="text" id="classCd${data.id }" name="classCd" value="${data.classCd }" class="input" required></td>
										<td>${data.classInfo }</td>
										<td><input type="text" id="payYn${data.id }" name="payYn" value="${data.payYn }" class="input" required></td>
										<td>
											<button type="button" onclick="CallEdit('${data.id }')" class="button green" style="border: 1px solid silver">
             										수정
           									</button>
           								</td>
           								<td>
											<button type="button" id="${data.id }" onclick="CallDelete('${data.id }')" class="button green" style="border: 1px solid silver">
             										삭제
           									</button>
           								</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<button type="button" id="showStudentRegister" class="button green" style="border: 1px solid silver; float: right; margin: 3px 25px 0 0;">
          		학생수업등록
			</button>
			<button type="button" id="closeStudentRegister" class="button green" style="border: 1px solid silver; float: right; margin: 3px 25px 0 0; display: none;">
          		학생수업등록
			</button>
		</main>
	</div>
</div>


	
	<form id="frm" name="frm" action="" method="post">
		<input type="hidden" id="modId" name="modId" value="">
		<input type="hidden" id="modClassCd" name="modClassCd" value="">
		<input type="hidden" id="modPayYn" name="modPayYn" value="">
	</form>
	
	
<div id="app" style="display: none">
<section class="is-hero-bar">
  <div class="flex flex-col md:flex-row items-center justify-between space-y-6 md:space-y-0">
    <h1 class="title">
      Student Class Register
    </h1>
  </div>
</section>
<section class="section main-section">
    <div class="card" style="margin-bottom: 20px;">
      <div class="card-content">
        <form id="frmm" name="frmm" action="" method="post">
        <label class="label" style="font-size: 17px">Subject Info</label>
          <hr>
          <div class="field">
            <label class="label">아이디</label>
            <div class="field-body">
              <div class="field">
                <div class="control">
                  <input type="text" id="newId" name="newId" value="" class="input" required>
                </div>
              </div>
            </div>
          </div>
          <div class="field">
            <label class="label">과목코드</label>
            <div class="field-body">
              <div class="field">
                <div class="control">
                  <input type="text" id="newClassCd" name="newClassCd" class="input" required>
                </div>
              </div>
            </div>
          </div>
          <div class="field">
            <label class="label">지불여부</label>
            <div class="field-body">
              <div class="field">
                <div class="control">
                  <input type="text" id="newPayYn" name="newPayYn" class="input" required>
                </div>
              </div>
            </div>
          </div>
          <hr>
          <div class="field">
            <div class="control">
              <button type="button" onclick="StudentInsert()" class="button green" style="border: 1px solid silver; float: right">
                Submit
              </button>
            </div>
          </div>
        </form>
      </div>
    </div>
</section>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
	<script src="mltemp/js/scripts.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
	<script src="mltemp/js/datatables-simple-demo.js"></script>
	<!-- Scripts below are for demo only -->
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	
	<script type="text/javascript">
		$("#showStudentRegister").click(function() {
			$("#app").show();
			$("#showStudentRegister").hide();
			$("#closeStudentRegister").show();
			$("#newId").focus();
		})
		
		$("#closeStudentRegister").click(function() {
			$("#app").hide();
			$("#showStudentRegister").show();
			$("#closeStudentRegister").hide();
		})
		
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

		function CallEdit(str) {
			console.log(str);
			frm.modId.value = str;
			frm.modClassCd.value = $("#classCd" + str).val();
			frm.modPayYn.value = $("#payYn" + str).val();
			
			console.log(frm.modId.value);
			console.log(frm.modClassCd.value);
			console.log(frm.modPayYn.value);
			
			if(window.confirm("입력하신 정보로 변경하시겠습니까?")){
				frm.action = "studentUpdate.do"; 
			} else {
				return;
			}
			frm.submit();
		}
		
		function CallDelete(str) {
			console.log(str);
			if(window.confirm("선택하신 수업을 삭제하시겠습니까?")){
				$.ajax({
					url: "studentDelete.do",
					type: "POST",
					data: {id:str},
					success: function(data) {
						window.alert(data);
						$("#" + str).remove();
					},
					error: function(data) {
						window.alert(data);
						console.log(data);
		            }
				});
			} else {
				return;
			}
		}
		
		function StudentInsert() {
			if(window.confirm("입력하신 수업을 등록하시겠습니까?")){
				frmm.action = "studentInsert.do";
			} else {
				return;
			}
			frmm.submit();
		}
		
	</script>
	
</div>

</body>
</html>