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
<title>Tables - SB Admin</title>
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
   }
</style>
</head>
<body>

<div id="layoutSidenav">
	<div id="layoutSidenav_content">
		<main>
			<div class="container-fluid px-4">
				<h1 class="mt-4">Class List</h1>
				<div class="card mb-4">
					<div class="card-header">
						<i class="fas fa-table me-1"></i> DataTable
					</div>
					<div class="card-body" style="margin-bottom: 0">
						<table id="datatablesSimple">
							<thead>
								<tr>
									<th>수업코드</th>
									<th>수업명</th>
									<th>수업요일</th>
									<th>수업시간</th>
									<th>시작일</th>
									<th>종료일</th>
									<th>강사코드</th>
									<th>수정</th>
									<th>삭제</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${memberClasses }" var="data">
									<tr id="${data.class_cd }">
										<td>${data.class_cd }</td>
										<td>${data.subject_cd }</td>
										<td><input type="text" id="class_day${data.class_cd }" name="class_day" value="${data.class_day }" class="input" required></td>
										<td><input type="text" id="class_time${data.class_cd }" name="class_time" value="${data.class_time }" class="input" required></td>
										<td><input type="text" id="fr_period${data.class_cd }" name="fr_period" value="${data.fr_period }" class="input" required></td>
										<td><input type="text" id="to_period${data.class_cd }" name="to_period" value="${data.to_period }" class="input" required></td>
										<td><input type="text" id="teacher_cd${data.class_cd }" name="teacher_cd" value="${data.teacher_cd }" class="input" required></td>
										<td>
											<button type="button" onclick="CallEdit('${data.class_cd }')" class="button green" style="border: 1px solid silver">
             										수정
           									</button>
           								</td>
										<td>
											<button type="button" id="${data.class_cd }" onclick="CallDelete('${data.class_cd }')" class="button green" style="border: 1px solid silver">
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
			<button type="button" id="showClassRegister" class="button green" style="border: 1px solid silver; float: right; margin: 3px 25px 0 0;">
          		수업등록
			</button>
			<button type="button" id="closeClassRegister" class="button green" style="border: 1px solid silver; float: right; margin: 3px 25px 0 0; display: none;">
          		수업등록
			</button>
		</main>
	</div>
</div>


	
	<form id="frm" name="frm" action="" method="post">
		<input type="hidden" id="class_cd" name="class_cd" value="">
		<input type="hidden" id="modClass_day" name="modClass_day" value="">
		<input type="hidden" id="modClass_time" name="modClass_time" value="">
		<input type="hidden" id="modFr_period" name="modFr_period" value="">
		<input type="hidden" id="modTo_period" name="modTo_period" value="">
		<input type="hidden" id="modTeacher_cd" name="modTeacher_cd" value="">
	</form>
	
	
<div id="app" style="display: none">
<section class="is-hero-bar">
  <div class="flex flex-col md:flex-row items-center justify-between space-y-6 md:space-y-0">
    <h1 class="title">
      Class Register
    </h1>
  </div>
</section>
<section class="section main-section">
    <div class="card" style="margin-bottom: 20px;">
      <div class="card-content">
        <form id="frmm" name="frmm" action="" method="post">
        <label class="label" style="font-size: 17px">Class Info</label>
          <hr>
          <div class="field">
            <label class="label">수업코드</label>
            <div class="field-body">
              <div class="field">
                <div class="control">
                  <input type="text" id="newClass_cd" name="newClass_cd" value="" class="input" required>
                </div>
              </div>
            </div>
          </div>
          <div class="field">
            <label class="label">수업명</label>
            <div class="field-body">
              <div class="field">
                <div class="control">
                  <input type="text" id="newSubject_cd" name="newSubject_cd" class="input" required>
                </div>
              </div>
            </div>
          </div>
          <div class="field">
            <label class="label">수업요일</label>
            <div class="field-body">
              <div class="field">
                <div class="control">
                  <input type="text" id="newClass_day" name="newClass_day" class="input" required>
                </div>
              </div>
            </div>
          </div>
          <div class="field">
            <label class="label">수업시간</label>
            <div class="field-body">
              <div class="field">
                <div class="control">
                  <input type="text" id="newClass_time" name="newClass_time" class="input" required>
                </div>
              </div>
            </div>
          </div>
          <div class="field">
            <label class="label">시작일</label>
            <div class="field-body">
              <div class="field">
                <div class="control">
                  <input type="text" id="newFr_period" name="newFr_period"  class="input" required>
                </div>
              </div>
            </div>
          </div>
          <div class="field">
            <label class="label">종료일</label>
            <div class="field-body">
              <div class="field">
                <div class="control">
                  <input type="text" id="newTo_period" name="newTo_period" class="input" required>
                </div>
              </div>
            </div>
          </div>
          <div class="field">
            <label class="label">강사코드</label>
            <div class="field-body">
              <div class="field">
                <div class="control">
                  <input type="text" id="newTeacher_cd" name="newTeacher_cd" class="input" required>
                </div>
              </div>
            </div>
          </div>
          <hr>
          <div class="field">
            <div class="control">
              <button type="button" onclick="classInsert()" class="button green" style="border: 1px solid silver; float: right">
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
		$("#showClassRegister").click(function() {
			$("#app").show();
			$("#showClassRegister").hide();
			$("#closeClassRegister").show();
			$("#newClass_cd").focus();
		})
		
		$("#closeClassRegister").click(function() {
			$("#app").hide();
			$("#showClassRegister").show();
			$("#closeClassRegister").hide();
		})
		
		function CallEdit(str) {
			console.log(str);
			frm.class_cd.value = str;
			frm.modClass_day.value = $("#class_day" + str).val();
			frm.modClass_time.value = $("#class_time" + str).val();
			frm.modFr_period.value = $("#fr_period" + str).val();
			frm.modTo_period.value = $("#to_period" + str).val();
			frm.modTeacher_cd.value = $("#teacher_cd" + str).val();
			
			if(window.confirm("입력하신 정보로 변경하시겠습니까?")){
				frm.action = "classEdit.do"; 
			} else {
				return;
			}
			frm.submit();
		}
		
		function CallDelete(str) {
			console.log(str);
			if(window.confirm("선택하신 수업을 삭제하시겠습니까?")){
				$.ajax({
					url: "classDelete.do",
					type: "POST",
					data: {class_cd:str},
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
		
		function classInsert() {
			if(window.confirm("입력하신 수업을 등록하시겠습니까?")){
				frmm.action = "classInsert.do";
			} else {
				return;
			}
			frmm.submit();
		}
		/* function addClass() {
			let newClass_cd = $("#newClass_cd").val();
			let newSubject_cd = $("#newSubject_cd").val();
			let newClass_day = $("#newClass_day").val();
			let newClass_time = $("#newClass_time").val();
			let newFr_period = $("#newFr_period").val();
			let newTo_period = $("#newTo_period").val();
			let newTeacher_cd = $("#newTeacher_cd").val();
			
			$('#datatablesSimple > tbody:last')
			.append("<tr><td>" + newClass_cd + 
					"</td><td>" + newSubject_cd +
					"</td><td>" + newClass_day +
					"</td><td>" + newClass_time +
					"</td><td>" + newFr_period +
					"</td><td>" + newTo_period +
					"</td><td>" + newTeacher_cd + 
					"</td><td>" + "<button type='button' onclick='CallEdit(" + newClass_cd + ")' class='button green' style='border: 1px solid silver'>수정</button>" +
					"</td><td>" + "<button type='button' onclick='CallDelete(" + newClass_cd + ")' class='button green' style='border: 1px solid silver'>삭제</button>" + "</td></tr>");
		} */
		
	</script>
	
</div>
</body>
</html>