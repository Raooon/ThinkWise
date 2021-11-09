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
			<div class="container-fluid px-4">
				<h1 class="mt-4">Subject List</h1>
				<div class="card mb-4">
					<div class="card-header">
						<i class="fas fa-table me-1"></i> DataTable
					</div>
					<div class="card-body" style="margin-bottom: 0">
						<table id="datatablesSimple">
							<thead>
								<tr>
									<th class="col-sm-1">과목코드</th>
									<th class="col-sm-2">과목명</th>
									<th class="col-sm-7">과목정보</th>
									<th class="col-sm-1">사용여부</th>
									<th class="col-sm-1">수정</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${subjects }" var="data">
									<tr id="${data.subjectCd }">
										<td>${data.subjectCd }</td>
										<td><input type="text" id="subjectNm${data.subjectCd }" name="subjectNm" value="${data.subjectNm }" class="input" required></td>
										<td><input type="text" id="subjectInfo${data.subjectCd }" name="subjectInfo" value="${data.subjectInfo }" class="input" required></td>
										<td><input type="text" id="useYn${data.subjectCd }" name="useYn" value="${data.useYn }" class="input" required></td>
										<td>
											<button type="button" onclick="CallEdit('${data.subjectCd }')" class="button green" style="border: 1px solid silver">
             										수정
           									</button>
           								</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<button type="button" id="showSubjectRegister" class="button green" style="border: 1px solid silver; float: right; margin: 3px 25px 0 0;">
          		과목등록
			</button>
			<button type="button" id="closeSubjectRegister" class="button green" style="border: 1px solid silver; float: right; margin: 3px 25px 0 0; display: none;">
          		과목등록
			</button>
		</main>
	</div>
</div>


	
	<form id="frm" name="frm" action="" method="post">
		<input type="hidden" id="modSubjectCd" name="modSubjectCd" value="">
		<input type="hidden" id="modSubjectNm" name="modSubjectNm" value="">
		<input type="hidden" id="modSubjectInfo" name="modSubjectInfo" value="">
		<input type="hidden" id="modUseYn" name="modUseYn" value="">
	</form>
	
	
<div id="app" style="display: none">
<section class="is-hero-bar">
  <div class="flex flex-col md:flex-row items-center justify-between space-y-6 md:space-y-0">
    <h1 class="title">
      Subject Register
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
            <label class="label">과목코드</label>
            <div class="field-body">
              <div class="field">
                <div class="control">
                  <input type="text" id="newSubjectCd" name="newSubjectCd" value="" class="input" required>
                </div>
              </div>
            </div>
          </div>
          <div class="field">
            <label class="label">과목명</label>
            <div class="field-body">
              <div class="field">
                <div class="control">
                  <input type="text" id="newSubjectNm" name="newSubjectNm" class="input" required>
                </div>
              </div>
            </div>
          </div>
          <div class="field">
            <label class="label">과목정보</label>
            <div class="field-body">
              <div class="field">
                <div class="control">
                  <input type="text" id="newSubjectInfo" name="newSubjectInfo" class="input" required>
                </div>
              </div>
            </div>
          </div>
          <div class="field">
            <label class="label">사용여부</label>
            <div class="field-body">
              <div class="field">
                <div class="control">
                  <input type="text" id="newUseYn" name="newUseYn" value="Y" class="input" required>
                </div>
              </div>
            </div>
          </div>
          <hr>
          <div class="field">
            <div class="control">
              <button type="button" onclick="SubjectInsert()" class="button green" style="border: 1px solid silver; float: right">
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
		$("#showSubjectRegister").click(function() {
			$("#app").show();
			$("#showSubjectRegister").hide();
			$("#closeSubjectRegister").show();
			$("#newSubjectCd").focus();
		})
		
		$("#closeSubjectRegister").click(function() {
			$("#app").hide();
			$("#showSubjectRegister").show();
			$("#closeSubjectRegister").hide();
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
			frm.modSubjectCd.value = str;
			frm.modSubjectNm.value = $("#subjectNm" + str).val();
			frm.modSubjectInfo.value = $("#subjectInfo" + str).val();
			frm.modUseYn.value = $("#useYn" + str).val();
			
			console.log(frm.modSubjectCd.value);
			console.log(frm.modSubjectNm.value);
			console.log(frm.modSubjectInfo.value);
			console.log(frm.modUseYn.value);
			
			if(window.confirm("입력하신 정보로 변경하시겠습니까?")){
				frm.action = "subjectUpdate.do"; 
			} else {
				return;
			}
			frm.submit();
		}
		
		function SubjectInsert() {
			if(window.confirm("입력하신 과목을 등록하시겠습니까?")){
				frmm.action = "subjectInsert.do";
			} else {
				return;
			}
			frmm.submit();
		}
		
	</script>
	
</div>

</body>
</html>