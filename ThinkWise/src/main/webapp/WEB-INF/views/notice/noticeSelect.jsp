<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

<head>
	<!-- Basic -->
	<meta charset="utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<!-- Mobile Metas -->
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
	<!-- Site Metas -->
	<meta name="keywords" content="" />
	<meta name="description" content="" />
	<meta name="author" content="" />

	<title></title>

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
	function noticeEdit(p) {
		frm.nid.value = ${notice.noticeNo};

		if (p == 'D') {
			frm.action = "noticeDelete.do";
		} else {
			utitle.value = title.value;
			ucontent.value = contents.value;
			frm.action = "noticeUpdateForm.do";
		}
		
		frm.submit();

	}
</script>
<style type="text/css">
textarea {
  width: 100%;
  height: 150px;
  padding: 12px 20px;
  box-sizing: border-box;
  border: 2px solid #ccc;
  border-radius: 4px;
  resize: none;
}
input[type=text]:focus {
  border: 3px solid #555;
}
input[type=text] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  box-sizing: border-box;
}
</style>
</head>


<body class="sub_page">

	<!-- contact section -->

	<section class="ftco-section bg-light">
		<div class="container">

			<div class="col-md-12 row justify-content-center mb-5 pb-2">

				<div class="col-md-8 text-center heading-section">
					<h2 class="mb-4">
						<span>공지</span> 사항
					</h2>
				</div>

				<div class="contact_form-container">

					<table>
						<tr>
							<td colspan="2">
								<input id="title" name="title" style="resize: none;"
									readonly="readonly" value="${notice.title }" type="text">
							</td>
						</tr>

						<tr>

							<td>
								등록일 ${notice.enrollDt }
								<c:if test="${not empty modifiedDate}">
									수정일 ${notice.modifyDt }
								</c:if>
							</td>

							<td>
								<div align="right">
									조회수 ${notice.hit }
								</div>
							</td>

						</tr>

						<tr>
							<td colspan="2">
								<textarea rows="10" cols="70" id="contents" name="contents" style="resize: none;"
									readonly="readonly">${notice.contents }</textarea>
							</td>
						</tr>

						<tr>
							<!-- 버튼 3종 -->
							<td colspan="2">

								<div class="mt-5" align="center">
									
									<input type="button" onclick="location.href='noticeList.do'" value="뒤로가기" class="btn btn-outline-secondary">
									<c:if test="${division eq 'A' }">
									&nbsp;&nbsp;&nbsp;
									<input type="button" onclick="noticeEdit('U')" value="수정하기" class="btn btn-outline-secondary">
									&nbsp;&nbsp;&nbsp;
									<input type="button" onclick="noticeEdit('D')" value="삭제하기" class="btn btn-outline-secondary">
									</c:if>
									
								</div>
							</td>
						</tr>

					</table>

					<div>
						<form id="frm" method="post" action="">
							<input type="hidden" id="nid" name="nid">
							<input type="hidden" id="utitle" name="utitle">
							<input type="hidden" id="ucontent" name="ucontent">
						</form>
					</div>

				</div>

			<!-- 오른쪽 이미지 -->
			<div class="col-md-4">
				<div class="contact_img-box">
					<img src="template/images/students.jpg" alt="">
				</div>
			</div>

		</div>
	</section>

	<script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.js"></script>



</body>

</html>