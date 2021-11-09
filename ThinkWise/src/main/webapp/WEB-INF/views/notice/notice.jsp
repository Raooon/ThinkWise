<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="en">

<head>
	<title></title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<link href="https://fonts.googleapis.com/css?family=Work+Sans:100,200,300,400,500,600,700,800,900" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Fredericka+the+Great" rel="stylesheet">

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

	<script>
		function noticeSelect(num) {
			console.log(frm);
			console.log(frm.nid);

			frm.nid.value = num;
			frm.submit();

		}
	</script>

</head>

<body>


	<section class="ftco-section bg-light">
		<div class="container">
			<div class="row justify-content-center mb-5 pb-2">
				<div class="col-md-8 text-center heading-section ftco-animate">
					<h2 class="mb-4">
						<span>공지</span> 사항
					</h2>
				</div>
			</div>
			<div align="right">
				<!-- 글 쓰기 버튼 -->
				<!-- 권한에 따라 안보이게 -->
				<c:if test="${division eq 'A' }">
					<div class="hero_btn-continer">
						<a href="noticeInsertForm.do" class="call_to-btn btn_white-border"> 공지사항 등록 </a>
					</div>
				</c:if>
				<!-- 글 쓰기 버튼 -->
			</div>
			<div class="row">

				<!-- 게시글 ForEach 시작 -->
				<c:forEach items="${notices }" var="notice">
					<div class="col-md-6 col-lg-4 ftco-animate">
						<div class="blog-entry">


							<!-- 이미지 들어가는 곳 -->
							<!-- 공지사항은 고정이미지 -->
							<a onclick="noticeSelect('${notice.noticeNo }')" class="block-20 d-flex align-items-end"
								style="background-image: url('yswtemp/images/image_1.jpg');">

								<!-- 날짜 들어가는 곳 -->
								<div class="meta-date text-center p-2">
									<c:set var="date" value="${notice.enrollDt }" />
									<span class="yr">${fn:substring(date,0,4) }</span>
									<span class="mos">${fn:substring(date,5,7) }</span>
									<span class="day">${fn:substring(date,8,10) }</span>
								</div>

							</a>
							<div class="text bg-white p-4">
								<h3 class="heading">
									<!-- 제목들어가는 곳 -->
									<a href="#">${notice.title }</a>
								</h3>
								<!-- 간략한 내용 들어가는 곳 -->
								<c:set var="summary" value="${notice.contents }" />
								${fn:substring(summary,0,20) }
								<c:if test="${fn:length(summary) gt 20 }">
									...
								</c:if>
								<div class="d-flex align-items-center mt-4">

									<p class="ml-auto mb-0">
										<a href="#" class="mr-2">Admin</a> <a href="#" class="meta-chat"><span
												class="icon-chat"></span> ${notice.hit }</a>
									</p>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
				<form action="noticeSelect.do" id="frm" method="post">
					<input type="hidden" id="nid" name="nid">
				</form>
				<!-- 게시글 ForEach End -->



			</div>
		</div>
	</section>

	<script src="yswtemp/js/jquery.min.js"></script>
	<script src="yswtemp/js/jquery-migrate-3.0.1.min.js"></script>
	<script src="yswtemp/js/popper.min.js"></script>
	<script src="yswtemp/js/bootstrap.min.js"></script>
	<script src="yswtemp/js/jquery.easing.1.3.js"></script>
	<script src="yswtemp/js/jquery.waypoints.min.js"></script>
	<script src="yswtemp/js/jquery.stellar.min.js"></script>
	<script src="yswtemp/js/owl.carousel.min.js"></script>
	<script src="yswtemp/js/jquery.magnific-popup.min.js"></script>
	<script src="yswtemp/js/aos.js"></script>
	<script src="yswtemp/js/jquery.animateNumber.min.js"></script>
	<script src="yswtemp/js/scrollax.min.js"></script>
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false">
	</script>
	<script src="yswtemp/js/google-map.js"></script>
	<script src="yswtemp/js/main.js"></script>


</body>

</html>