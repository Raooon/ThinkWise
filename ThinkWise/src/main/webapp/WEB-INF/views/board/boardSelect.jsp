<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>

<head>
<!-- Basic -->
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<!-- Mobile Metas -->
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<!-- Site Metas -->
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta name="author" content="" />

<title></title>

<!-- bootstrap core css -->
<link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
<!-- progress barstle -->
<link rel="stylesheet" href="css/css-circular-prog-bar.css">
<!-- fonts style -->
<link
	href="https://fonts.googleapis.com/css?family=Poppins:400,700|Raleway:400,600&display=swap"
	rel="stylesheet">
<!-- font wesome stylesheet -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
<!-- Custom styles for this template -->
<link href="css/style.css" rel="stylesheet" />
<!-- responsive style -->
<link href="css/responsive.css" rel="stylesheet" />

<link rel="stylesheet" href="css/css-circular-prog-bar.css">

</head>

<script>
	function boardEdit(p) {

		frm.nid.value = $
		{
			board.boardNo
		}
		;

		if (p == 'D') {
			frm.action = "boardDelete.do";
		} else {

			//frm.action="boardUpdateForm.do";
		}
		frm.submit();

	}
	
</script>

<body class="sub_page">

	<!-- contact section -->

	<section class="contact_section" style="background: white;">

		<div class="container">

			<div class="row">
				<div class="col-md-12">
					<div class="d-flex justify-content-center d-md-block">
						<h2>월별 보고</h2>
					</div>

					<div class="contact_form-container">
						<div align="center">
							<table>
							<c:if test="${not empty board.image }">
								<tr>
									<c:set var="imageName" value="${board.image }" />
									<c:set var="thumb" value="${fn:split(imageName,'/') }" />
									<c:forEach items="${thumb }" var="selectedImage">
											<c:if test="${selectedImage ne 'null' }"> 
									<td>
										<div align="center">
											<img alt="" src="upload/${selectedImage }" width="240px" height="180px">
										</div>
									</td>
									
											</c:if>
									</c:forEach>
									
								</tr>
							</c:if>
								<tr>
									<td colspan="3"><textarea rows="1" cols="100" id="contents"
											name="contents" style="resize: none;" readonly="readonly">${board.title }</textarea>
									</td>
								</tr>

								<tr>

									<td>등록일 ${board.enrollDt }</td>

									<td>
										<div align="right">조회수 ${board.hit }</div>
									</td>

								</tr>

								<tr>
									<td colspan="3"><textarea rows="10" cols="100"
											id="contents" name="contents" style="resize: none;"
											readonly="readonly">${board.contents }</textarea></td>
								</tr>
								<c:if test="${not empty id }">
								<!-- 댓글 등록 시작 -->
								<tr id="insetTr">
									<td colspan="3" height="100px">
										댓글
										<textarea rows="1" cols="80" id="commentInsert" name="commentInsert" style="resize: none;" placeholder="댓글을 남겨보세요."></textarea>
										<button type="button" style="font-size: 10px" onclick="CommentsInsert()">등록</button>	
									</td>
								</tr>
								</c:if>
								<!-- 댓글 등록 끝 -->
								
								<!-- 신규댓글 위치 -->
							
								<!-- 답글버튼 / 좋아요 버튼 -->
								<tr>
									
								</tr>
								<!-- 신규댓글 -->
								
								<!-- List -->
								<c:forEach items="${comments }" var="comment">
								<c:if test="${comment.dimension eq '1' }">
								<!-- 작성자 아이디 / 등록날짜 / 수정버튼 -->
								<tr>
									<td>
										${comment.id }
									</td>
									<td>
										${comment.enrollDt }
									</td>
								</tr>
								<!-- 댓글 내용 -->
								<tr height="80px">
									<td>
										<textarea rows="1" cols="80" id="comment${comment.commentNo }" name="commentList" style="resize: none;" readonly="readonly">${comment.contents }</textarea>
									</td>
									<!-- 자신의 댓글 삭제버튼 -->
									<td>
									
									</td>
								</tr>
								<tr>
									<!-- 좋아요버튼 -->
									<td>
									
									</td>
									<!-- 수정 버튼 -->
								</tr>
								
								</c:if>
								</c:forEach>
								<!--  -->
								
								<!-- 버튼 3종 -->
								<tr>
									<td colspan="3">
										<div class="mt-5" align="center">
										
											<c:if test="${division eq 'A' }">
											<div style="display: inline-block;">
												&nbsp; &nbsp; &nbsp;
												<button type="button" onclick="boardEdit('U')">수정하기</button>
												&nbsp; &nbsp; &nbsp;
											</div>
											</c:if>
											
											<div style="display: inline-block;" align="center">
												&nbsp; &nbsp; &nbsp;
												<button type="button" onclick="location.href='boardList.do'">뒤로가기</button>
												&nbsp; &nbsp; &nbsp;
											</div>
											
											<c:if test="${division eq 'A' }">
											<div style="display: inline-block;">
												&nbsp; &nbsp; &nbsp;	
												<button type="button" onclick="boardEdit('D')">삭제하기</button>
												&nbsp; &nbsp; &nbsp;
											</div>
											</c:if>
											
										</div>
									</td>
								</tr>
								<!-- 버튼 끝 -->
							</table>
						</div>
						<div>
							<form id="frm" method="post" action="">
								<input type="hidden" id="nid" name="nid">
								<!-- 
              		<input type="hidden" id="tu" name="tu">
              		<input type="hidden" id="cu" name="cu">
              		 -->
							</form>
						</div>
					</div>

				</div>
				<!-- 오른쪽 이미지 -->
				<!-- 
        <div class="col-md-6">
          <div class="contact_img-box">
            <img src="template/images/students.jpg" alt="">
          </div>
        </div>
         -->
			</div>
		</div>
	</section>


	<script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.js"></script>

<script>
function CommentsInsert() {
	
	let contents = $('#commentInsert').val();
	let param= "boardNo=${board.boardNo}&contents="+contents;
	
	$.ajax({
		url: 'commentsInsert.do',
		data: param,
		type: 'post',
		dataType: 'json',
		success: function (result) {
			console.log('success');
			console.log(result);
			
			CommentsAttach(result);
			
			$('#commentInsert').val('');
			
		},
		error: function (reject) {
			console.log(reject)
		}
	})
}

function CommentsAttach(data){
	
	console.log($('#insetTr'));
	
	var beforeTr = $('<tr />');
		var idTd = $('<td />').text(data.id);
		var enrollTd = $('<td />').text(data.enrollDt);
	
		$(beforeTr).append(
				idTd,
				enrollTd
		);
	
	var afterTr = $('<tr />');
		var contextTd = $('<td />').html(
				'<textarea rows="1" cols="80" id="comment'+data.commentNo+'" name="commentList" style="resize: none;" readonly="readonly">'+data.contents+'</textarea>'		
		);
	
		$(afterTr).append(
				contextTd
		);
	
		$('#insetTr').after(
				beforeTr,
				afterTr
		);
	
}
</script>

</body>

</html>