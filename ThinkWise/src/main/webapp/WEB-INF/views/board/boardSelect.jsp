<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
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

<style type="text/css">
textarea {
  width: 100%;
  padding: 12px 20px;
  box-sizing: border-box;
  border: 2px solid #ccc;
  border-radius: 4px;
  resize: none;
  vertical-align: middle;
}
input[type=text]:focus {
  border: 3px solid #555;
}
input[type=text] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  box-sizing: border-box;
  vertical-align: middle;
}
</style>
</head>

<body class="sub_page">

	<!-- contact section -->
	<!-- 
	<section class="contact_section" style="background: white;">
 -->
	<section class="ftco-section bg-light">
		<div class="container">

			<div class="row justify-content-center mb-5 pb-2">
				<div class="col-md-12">
					<div
						class="d-flex justify-content-center d-md-block text-center heading-section">
						<h2 class="mb-4">
							<span>월별</span> 보고
						</h2>
					</div>

					<div class="contact_form-container">
						<div align="center">
							<table>
									<tr>
										<c:if test="${not empty board.image }">
										<c:set var="imageName" value="${board.image }" />
										<c:set var="thumb" value="${fn:split(imageName,'/') }" />
										<td colspan="3">
											<div align="center">
										<c:forEach items="${thumb }" var="selectedImage">
											<c:if test="${selectedImage ne 'null' }">
											
												
													<div style="display: inline-block">
														<img alt="" src="upload/${selectedImage }" width="240px" height="180px">
													</div>
												
												
											</c:if>
										</c:forEach>
											</div>
										</td>
									</tr>
								</c:if>

								<tr>
									<td colspan="3">
									<input id="contents" name="contents" style="resize: none;" readonly="readonly" value="${board.title }" type="text" width="80px">
									</td>
								</tr>

								<tr>

									<td>등록일 ${board.enrollDt }
										<c:if test="${not empty board.modifyDt}">
											&nbsp;&nbsp;&nbsp;
											수정일 ${board.modifyDt }
										</c:if>
									</td>
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
									<tr id="insertTr">
										<td colspan="3" height="100px">
											댓글 &nbsp; 
											<textarea rows="1" cols="80" id="commentInsert" name="commentInsert" style="resize: none; width: 85%; vertical-align: middle" placeholder="댓글을 남겨보세요."></textarea>
											&nbsp;
											<input type="button" onclick="CommentsInsert()" class="btn btn-outline-secondary" style="vertical-align: middle" value="등록">
										</td>
									</tr>
								</c:if>
								<!-- 댓글 등록 끝 -->

								<!-- 신규댓글 위치 -->

								<!-- 답글버튼 / 좋아요 버튼 -->
								<tr>

								</tr>

								<!-- List -->
								<c:forEach items="${comments }" var="comment">
									<c:if test="${comment.dimension eq '1' }">
										<!-- 작성자 아이디 / 등록날짜 / 수정버튼 -->
										<tr id="outTr${comment.commentNo }">
											<td>${comment.name }</td>
											<td>${comment.enrollDt }</td>
										</tr>

										<!-- 댓글 내용 -->
										<tr height="80px" id="cmt${comment.commentNo }">
											<td><textarea rows="1" cols="80"
													id="comment${comment.commentNo }" name="commentList"
													style="resize: none;" readonly="readonly">${comment.contents }</textarea>
											</td>
										</tr>
										<tr id="tr${comment.commentNo }">
											<td id="td${comment.commentNo }">
												<div style="display: inline-block;"
													id="div${comment.commentNo }">
													<c:if test="${not empty id}">
														<input type="button" 
															id="i${comment.commentNo }"
															onclick="openInsert('${comment.commentNo }')" value="답글" class="btn btn-outline-secondary">
													</c:if>
													<c:if test="${comment.id eq id}">
														<input type="button"
															id="e${comment.commentNo }"
															onclick="CommentsChange('${comment.commentNo }')" value="수정" class="btn btn-outline-secondary">
														<input type="button"
															id="d${comment.commentNo }"
															onclick="CommentsDelete('${comment.commentNo }')" value="삭제" class="btn btn-outline-secondary">
													</c:if>
												</div>
											</td>
										</tr>
										<!-- 대댓글 -->
										<c:forEach items="${comments }" var="subComment">
											<c:if
												test="${subComment.dimension eq '2'&& subComment.commentNo2 == comment.commentNo}">

												<tr
													class="subCom${comment.commentNo } subCom${subComment.commentNo }">
													<td>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
														${subComment.name }</td>
													<td>${subComment.enrollDt }</td>
												</tr>

												<tr height="80px"
													class="subCom${comment.commentNo } subCom${subComment.commentNo }"
													id="subcmt${subComment.commentNo }">
													<td>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <textarea
															rows="1" cols="80" id="comment${subComment.commentNo }"
															name="commentList" style="resize: none; width:90%"
															readonly="readonly">${subComment.contents }</textarea>
													</td>
												</tr>

												<tr
													class="subCom${comment.commentNo } subCom${subComment.commentNo }">
													<td>
														<div style="display: inline-block;"
															id="Div${subComment.commentNo }">
															<c:if test="${subComment.id eq id}">
															&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
															<input type="button"
																	id="e${subComment.commentNo }"
																	onclick="CommentsSubChange('${subComment.commentNo }')" value="수정" class="btn btn-outline-secondary">
															<input type="button"
																	id="d${subComment.commentNo }"
																	onclick="CommentsDelete('${subComment.commentNo }')" value="삭제" class="btn btn-outline-secondary">
															</c:if>
														</div>
													</td>
												</tr>

											</c:if>
										</c:forEach>

									</c:if>
								</c:forEach>
								<!--  -->

								<!-- 하단 버튼 3종 -->
								<tr>
									<td colspan="3">
										<div class="mt-5" align="center">
										
												<input type="button" onclick="location.href='boardList.do'" value="뒤로가기" class="btn btn-outline-secondary">
											
											<c:if test="${division eq 'A' }">
											&nbsp;&nbsp;&nbsp;
												<input type="button" onclick="boardEdit('U')" value="수정하기" class="btn btn-outline-secondary">
											&nbsp;&nbsp;&nbsp;
												<input type="button" onclick="boardEdit('D')" value="삭제하기" class="btn btn-outline-secondary">
											</c:if>

										</div>
									</td>
								</tr>
								<!-- 하단 버튼 끝 -->
							</table>
						</div>
						<div>

							<form id="frm" method="post" action="">

								<input type="hidden" id="nid" name="nid"
									value="${board.boardNo }"> <input type="hidden"
									id="titleu" name="titleu" value="${board.title }"> <input
									type="hidden" id="contentsu" name="contentsu"
									value="${board.contents }">

							</form>

						</div>
					</div>

				</div>

			</div>
		</div>
	</section>


	<script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.js"></script>

	<script>
		function boardEdit(p) {

			if (p == 'D') {

				frm.action = "boardDelete.do";

			} else {

				frm.action = "boardUpdateForm.do";
			}

			frm.submit();

		}

		function CommentsInsert() {

			let contents = $('#commentInsert').val();
			let param = "boardNo=${board.boardNo}&contents=" + contents;

			$.ajax({
				url : 'commentsInsert.do',
				data : param,
				type : 'post',
				dataType : 'json',
				success : function(result) {
					console.log('success');
					console.log(result);

					CommentsAttach(result);

					$('#commentInsert').val('');

				},
				error : function(reject) {
					console.log(reject)
				}
			})
		}

		function CommentsAttach(data) {

			var beforeTr = $('<tr />').attr('id','outTr'+data.commentNo);
			var idTd = $('<td />').text(data.name);
			var enrollTd = $('<td />').text(data.enrollDt);

			$(beforeTr).append(idTd, enrollTd);

			var afterTr = $('<tr />').attr('id','cmt'+data.commentNo);
			var contextTd = $('<td />')
					.html(
							'<textarea rows="1" cols="80" id="comment'+data.commentNo+'" name="commentList" style="resize: none;" readonly="readonly">'
									+ data.contents + '</textarea>');

			var btnTr = $('<tr />').attr('id','tr'+data.commentNo);
				var btnDiv = $('<div />').attr('id','div'+data.commentNo);
			
				
				var addButton = $('<input />').addClass('btn btn-outline-secondary')
								.attr('onclick', 'openInsert(' + data.commentNo + ')')
								.attr('id','i' + data.commentNo)
								.attr('type','button')
								.val('답글');
				
				var deleteButton = $('<input />').addClass('btn btn-outline-secondary')
								.attr('onclick', 'CommentsDelete(' + data.commentNo + ')')
								.attr('id','d' + data.commentNo)
								.attr('type','button')
								.val('삭제');
				
				var updateButton = $('<input />').addClass('btn btn-outline-secondary')
								.attr('onclick', 'CommentsChange(' + data.commentNo + ')')
								.attr('id','e' + data.commentNo)
								.attr('type','button')
								.val('수정');
				
				$(btnTr).append(
					$(btnDiv).append(
							addButton,
							updateButton,
							deleteButton
					)
				);
				
				
			
			$(afterTr).append(contextTd);

			$('#insertTr').after(beforeTr, afterTr,btnTr);

		}

		function replyAttach(data) {

			var beforeTr = $('<tr />').addClass('subCom'+data.commentNo2);
				var idTd = $('<td />').html('&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;' + data.name);
				var enrollTd = $('<td />').text(data.enrollDt);

			$(beforeTr).append(idTd, enrollTd);

			var afterTr = $('<tr />').addClass('subCom'+data.commentNo2).attr('id','subcmt'+data.commentNo);
				var contextTd = $('<td />')
								.html('&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<textarea rows="1" cols="80" id="comment'+data.commentNo+'" name="commentList" style="resize: none; width: 90%" readonly="readonly">'
									+ data.contents + '</textarea>');

			var btnTr = $('<tr />').addClass('subCom'+data.commentNo2);
			
				var blankSpan = $('<span />').html('&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;');
				
				var deleteButton = $('<input />').addClass('btn btn-outline-secondary')
								.attr('onclick', 'CommentsSubDelete(' + data.commentNo + ')')
								.attr('id','d' + data.commentNo)
								.attr('type','button')
								.val('삭제');
	
				var updateButton = $('<input />').addClass('btn btn-outline-secondary')
								.attr('onclick', 'CommentsSubChange(' + data.commentNo + ')')
								.attr('id','e' + data.commentNo)
								.attr('type','button')
								.val('수정');
				
				$(btnTr).append(
						blankSpan,
						updateButton,
						deleteButton
						);
				
			$(afterTr).append(contextTd);

			$('#tr' + data.commentNo2).after(beforeTr, afterTr,btnTr);

		}
		function openInsert(num) {
			
			var addTr = $('<tr />').attr('id', 'addTr' + num);
			var addTd = $('<td />')
					.html(
							'&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <textarea rows="1" cols="80" id="commentAdd" name="commentAdd" style="resize: none; vertical-align: middle; width: 85%" placeholder="댓글을 남겨보세요."></textarea>');
			
			var addButton = $('<input />').addClass('btn btn-outline-secondary')
							.attr('onclick', 'commentAdd(' + num + ')')
							.attr('type','button')
							.val('등록');
			
			var cancleButton = $('<input />').addClass('btn btn-outline-secondary')
							.attr('onclick', 'closeInsert(' + num + ')')
							.attr('type','button')
							.val('취소');

			$('#cmt' + num).after(
					$(addTr).append(addTd, addButton, cancleButton));

			$('#i' + num).hide();
			$('#e' + num).hide();
			$('#d' + num).hide();
			$('#c' + num).hide();

		}

		function closeInsert(num) {

			$('#addTr' + num).hide();

			$('#tr' + num).show();
			$('#td' + num).show();
			$('#div' + num).show();

			$('#i' + num).show();
			$('#e' + num).show();
			$('#d' + num).show();

		}

		function commentAdd(num) {

			let contents = $('#commentAdd').val();
			let param = "boardNo=${board.boardNo}&contents=" + contents
					+ "&commentNo=" + num;

			$.ajax({
				url : 'commentsAdd.do',
				data : param,
				type : 'post',
				dataType : 'json',
				success : function(result) {
					console.log('success');
					
					replyAttach(result);
					closeInsert(num);
					
					$('#commentAdd').val('');

				},
				error : function(reject) {
					console.log(reject)
				}
			})

		}

		function CommentsDelete(num) {

			let param = "commentNo=" + num;

			$.ajax({
				url : 'commentsDelete.do',
				data : param,
				type : 'post',
				success : function(result) {
					console.log('success');

					$('.subCom' + num).hide();

					$('#outTr' + num).hide();
					$('#cmt' + num).hide();
					$('#tr' + num).hide();

					console.log('success2222');
				},
				error : function(reject) {
					console.log(reject)
				}
			})

		}
		
		function CommentsSubDelete(num) {

			let param = "commentNo=" + num;

			$.ajax({
				url : 'commentsDelete.do',
				data : param,
				type : 'post',
				success : function(result) {
					console.log('success');

					$('.subCom' + num).hide();

				},
				error : function(reject) {
					console.log(reject)
				}
			})

		}

		function CommentsChange(num) {

			$('#i' + num).toggle();
			$('#e' + num).toggle();
			$('#d' + num).toggle();

			$('#comment' + num).removeAttr('readonly');
			$('#comment' + num).focus();

			var updateButton = $('<input />').addClass('btn btn-outline-secondary')
							.attr('onclick', 'CommentsUpdate(' + num + ')')
							.attr('id','ub' + num)
							.attr('type','button')
							.val('수정');
			
			var cancleButton = $('<input />').addClass('btn btn-outline-secondary')
							.attr('onclick', 'CommentsChangeClose(' + num + ')')
							.attr('id','cl' + num)
							.attr('type','button')
							.val('취소');

			$('#cmt' + num).after(updateButton, cancleButton);
			
		}

		function CommentsSubChange(num) {

			$('#e' + num).toggle();
			$('#d' + num).toggle();

			$('#comment' + num).removeAttr('readonly');
			$('#comment' + num).focus();

			var updateButton = $('<input />').addClass('btn btn-outline-secondary')
								.attr('onclick', 'CommentsUpdate(' + num + ')')
								.attr('id','ub' + num)
								.attr('type','button')
								.val('수정');
			
			var cancleButton = $('<input />').addClass('btn btn-outline-secondary')
								.attr('onclick', 'CommentsChangeClose(' + num + ')')
								.attr('id','cl' + num)
								.attr('type','button')
								.val('취소');

			$('#subcmt' + num).after(updateButton, cancleButton);
		}
		function CommentsChangeClose(num) {

			$('#i' + num).toggle();
			$('#e' + num).toggle();
			$('#d' + num).toggle();

			$('#comment' + num).attr('readonly', 'readonly');

			$('#ub' + num).hide();
			$('#cl' + num).hide();

		}

		function CommentsUpdate(num) {

			let contents = $('#comment' + num).val();
			let param = "commentNo=" + num + "&contents=" + contents;

			$.ajax({
				url : 'commentsUpdate.do',
				data : param,
				type : 'post',
				success : function(result) {
					console.log('success');

					$('#ub' + num).hide();
					$('#cl' + num).hide();

					$('#i' + num).toggle();
					$('#e' + num).toggle();
					$('#d' + num).toggle();

				},
				error : function(reject) {
					console.log(reject)
				}
			})

		}
	</script>

</body>

</html>