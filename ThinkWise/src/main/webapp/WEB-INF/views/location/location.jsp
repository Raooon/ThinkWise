<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>


	
	<meta name="description" content="" />
	<meta name="keywords" content="">
	<meta name="author" content="Phoenixcoded" />
	<!-- Favicon icon -->
	<link rel="icon" href="assets/images/favicon.ico" type="image/x-icon">

	<!-- vendor css -->
	<link rel="stylesheet" href="template/css/style1.css">
  
<style>
	#mapcontainer{
		margin: 70px;
		padding-top: 100px;
		padding-bottom: 100px;
		display: inline-block;
	}
</style>
</head>

<body>
	<div class="container-fluid" id="mapcontainer">
		<div class="row">
			<div class="col-sm-1"></div>
			<div class="col-sm-5">
				<div class="card bg-light">
					<div class="card-header">지 도</div>
					<div class="card-bodyA" style="height: 338px; ">
						<jsp:include page="kakaoMap.jsp" />
					</div>
				</div>
				
				
				
			</div>
			<div class="col-sm-4">
				<div class="card bg-light">
					<div class="card-header">교통정보 및 연락처</div>
					<div class="card-body" style="height: 338px">
						<ul>
							<li style="list-style-type:square !important;font-size:12px;line-height:18px;margin:5px 5px 5px 0px"><span style="font-weight:bold">주&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;소</span> : 대구광역시 중구 중앙대로 403 (남일동 135-1, 5층) 태왕 아너스 타워</li>
					
							<li style="list-style-type:square !important;font-size:12px;line-height:18px;margin:5px 5px 5px 0px"><span style="font-weight:bold">버&nbsp;&nbsp;스(도보 1~2분)</span>
							<div>
								- 약령시앞 : 204, 304, 349, 401, 410-1, 503, 518, 650, 706, 730, 909, 급행2, 북구2<br>
								- 약령시건너(동성로입구) : 204, 304, 349, 401, 410, 503, 518, 650, 706, 730, 급행2
							</div>
							</li>
							<li style="list-style-type:square !important;font-size:12px;line-height:18px;margin:5px 5px 5px 0px"><span style="font-weight:bold">지 하 철</span>
							<div>
								- 1호선 : 중앙로역(1번 출구, 도보 1~2분)<br>
								- 2호선 : 반월당역(14번 출구, 도보 5~7분)
							</div>
							</li>
							<li style="list-style-type:square !important;font-size:12px;line-height:18px;margin:5px 5px 5px 0px"><span style="font-weight:bold">전화번호</span> : 053-421-2460</li>
							<li style="list-style-type:square !important;font-size:12px;line-height:18px;margin:5px 5px 5px 0px"><span style="font-weight:bold">F &nbsp;A &nbsp;X</span> : 053-356-3939</li>
						</ul>
					</div>
				</div>
			</div>
			<div class="col-sm-2"></div>
		</div>
	</div>
	

</body>
</html>