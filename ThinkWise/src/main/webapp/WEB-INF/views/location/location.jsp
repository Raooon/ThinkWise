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

<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link
	href="https://fonts.googleapis.com/css?family=Work+Sans:100,200,300,400,500,600,700,800,900"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Fredericka+the+Great"
	rel="stylesheet">

<link rel="stylesheet" href="yswtemp/css/open-iconic-bootstrap.min.css">
<link rel="stylesheet" href="yswtemp/css/animate.css">

<link rel="stylesheet" href="yswtemp/css/owl.carousel.min.css">
<link rel="stylesheet" href="yswtemp/css/owl.theme.default.min.css">
<link rel="stylesheet" href="yswtemp/css/magnific-popup.css">

<link rel="stylesheet" href="yswtemp/css/aos.css">

<link rel="stylesheet" href="yswtemp/css/ionicons.min.css">

<link rel="stylesheet" href="yswtemp/css/flaticon.css">
<link rel="stylesheet" href="yswtemp/css/icomoon.css">
<link rel="stylesheet" href="yswtemp/css/style.css">

<style>
	#mapcontainer{
		margin: 70px;
		padding-top: 100px;
		padding-bottom: 120px;
		padding-left:10px;
		display: inline-block;
	}
	div.col-sm-1{
		margin-left: 40px;
	}
	div.col-sm-5,
	div.col-sm-4{
		padding-left: 0px;
	}
	div.col-sm-{
		margin-right: 10px;
	}
	
	#LoId{
	font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, "Noto Sans", sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol", "Noto Color Emoji";
	margin-left: 200px;
	color: rgb(8, 36, 101);
	font-size: 44px;
	margin-top: -60px;
	}
</style>

<link rel="stylesheet" href="template/css/style1.css">

</head>

<body>
	<div class="container-fluid" id="mapcontainer">
		<div class="container-fluid px-4">
			<h1 id="LoId">Location</h1>
		</div>
		<br>
		<div class="row" style="margin-left:15px; margin-right:20px;">
			<div class="col-sm-1"></div>
			<div class="col-sm-5">
				<div class="card bg-light">
					<div class="card-header">??? ???</div>
					<div class="card-bodyA" style="height: 450px; ">
						<jsp:include page="kakaoMap.jsp" />
					</div>
				</div>
				
			</div>
			<div class="col-sm-4">
				<div class="card bg-light">
					<div class="card-header">???????????? ??? ?????????</div>
					<div class="card-body" style="height: 450px">
						<ul>
							<li style="list-style-type:square !important;font-size:12px;line-height:18px;margin:5px 5px 5px 0px"><span style="font-weight:bold">???&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;???</span> : ??????????????? ?????? ???????????? 403 (????????? 135-1, 5???) ?????? ????????? ??????</li>
					
							<li style="list-style-type:square !important;font-size:12px;line-height:18px;margin:5px 5px 5px 0px"><span style="font-weight:bold">???&nbsp;&nbsp;???(?????? 1~2???)</span>
							<div>
								- ???????????? : 204, 304, 349, 401, 410-1, 503, 518, 650, 706, 730, 909, ??????2, ??????2<br>
								- ???????????????(???????????????) : 204, 304, 349, 401, 410, 503, 518, 650, 706, 730, ??????2
							</div>
							</li>
							<li style="list-style-type:square !important;font-size:12px;line-height:18px;margin:5px 5px 5px 0px"><span style="font-weight:bold">??? ??? ???</span>
							<div>
								- 1?????? : ????????????(1??? ??????, ?????? 1~2???)<br>
								- 2?????? : ????????????(14??? ??????, ?????? 5~7???)
							</div>
							</li>
							<li style="list-style-type:square !important;font-size:12px;line-height:18px;margin:5px 5px 5px 0px"><span style="font-weight:bold">????????????</span> : 053-421-2460</li>
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