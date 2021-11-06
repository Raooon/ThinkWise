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
<link href="mltemp/css/styles.css" rel="stylesheet" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
<style>
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
						<div class="card-body">
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
										<tr>
											<td>${data.class_cd }</td>
											<td>${data.subject_cd }</td>
											<td><input type="text" autocomplete="on" id="class_day" name="class_day" value="${data.class_day }" class="input" required></td>
											<td><input type="text" autocomplete="on" id="class_time" name="class_time" value="${data.class_time }" class="input" required></td>
											<td><input type="text" autocomplete="on" id="fr_period" name="fr_period" value="${data.fr_period }" class="input" required></td>
											<td><input type="text" autocomplete="on" id="to_period" name="to_period" value="${data.to_period }" class="input" required></td>
											<td><input type="text" autocomplete="on" id="teacher_cd" name="teacher_cd" value="${data.teacher_cd }" class="input" required></td>
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
							<button type="button" onclick="classInsert()" class="button green" style="border: 1px solid silver; float: right">
             						등록
           					</button>
						</div>
					</div>
				</div>
			</main>
			<footer class="py-4 bg-light mt-auto">
				<div class="container-fluid px-4">
					<div class="d-flex align-items-center justify-content-between small"></div>
				</div>
			</footer>
		</div>
	</div>
	
	<form id="frm" name="frm" action="" method="post">
		<input type="hidden" id="class_cd" name="class_cd" value="">
	</form>
	
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
	<script src="mltemp/js/scripts.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
	<script src="mltemp/js/datatables-simple-demo.js"></script>
	<script type="text/javascript">
		function CallEdit(str) {
			console.log(str);
			frm.class_cd.value = str;
			if(window.confirm("입력하신 정보로 변경하시겠습니까?")){
				frm.action = "classEdit.do";
			} else {
				return;
			}
			frm.submit();
		}
		
		function CallDelete(str) {
			console.log(str);
			frm.class_cd.value = str;
			if(window.confirm("선택하신 수업을 삭제하시겠습니까?")){
				frm.action = "classDelete.do";
			} else {
				return;
			}
			frm.submit();
		}
		
		function classInsert() {
			
		}
	</script>
	
</body>
</html>