<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- 
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
  -->
  

  
</head>
<body>
	<section class="ftco-section bg-light">
		<div class="container">
		
			<div class="row justify-content-center mb-5 pb-2">
				<div class="col-md-8 text-center heading-section ftco-animate">
					<h2 class="mb-4">
						<span>Recent</span> Blog18
					</h2>
					<p>Separated they live in. A small river named Duden flows by
						their place and supplies it with the necessary regelialia. It is a
						paradisematic country</p>
				</div>
			</div>
			
			<!-- 게시글 시작 -->
			
			<div class="row" id="noticeRow">
			
				<!-- 게시글 들어가는 곳 - 3개 -->
				
			</div>
			
			<!-- 게시글 end -->	
			
			
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
	
	<script	src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
	<script src="yswtemp/js/google-map.js"></script>
	
	<script src="yswtemp/js/main.js"></script>
	
<script>

			makeDiv();
			
	/*	
	
	$(document).ready(function(){
		
	});
		
	*/	

function makeDiv() {
	
var outDiv = $('<div />').addClass('col-md-6 col-lg-4 ftco-animate');
	var entryDiv = $('<div />').addClass('blog-entry');
		//style="background-image: url('images/image_3.jpg');">
		var firstA = $('<a />').addClass('block-20 d-flex align-items-end').attr('href','#');
		
			var thirdDiv = $('<div />').addClass('meta-date text-center p-2');
				//span 안에 값 넣어주기.
				var daySpan = $('<span />').addClass('day');
				var mosSpan = $('<span />').addClass('mos');
				var yrSpan = $('<span />').addClass('yr');
				
		var bgDiv = $('<div />').addClass('text bg-white p-4');
		
			var titleH = $('<h3 />').addClass('heading');
				var secondA = $('<a />').attr('href','#').text('여기에 제목을'); //게시글 링크, 제목 넣어주기.
				
			var summaryP = $('<p />').text('여기에 요약을'); //요약 넣어주기
			
			var lastDiv = $('<div />').addClass('d-flex align-items-center mt-4');
			
				var moreP = $('<p />').addClass('mb-0');
					var thirdA = $('<a />').addClass('btn btn-secondary').attr('href','#').html('Read More <span class="ion-ios-arrow-round-forward"></span>');
					
				var authorP = $('<p />').addClass('ml-auto mb-0');
					var fourthA = $('<a />').addClass('mr-2').attr('href','#').text('Admin');
					var fifthA = $('<a />').addClass('meta-chat').attr('href','#').html('<span class="icon-chat"></span> '+'조회수');//조회수 넣어주기.
					
	$(outDiv).append(
		$(entryDiv).append(
				$(firstA).append(
						$(thirdDiv).append(
							daySpan,
							mosSpan,
							yrSpan
						)
				),
				$(bgDiv).append(
						$(titleH).append(
								secondA
						),
						summaryP,
						$(lastDiv).append(
								$(moreP).append(
										thirdA
								),
								$(authorP).append(
										fourthA,
										fifthA
								)
						)
				)
		)	
	);
	
	$('#noticeRow').append(outDiv);
		
//return outDiv;	
//return entryDiv;	
				
}

/* function postNotice(mkR) {
	
	for( let i=0 ; i<3 ; i++) {
		$('#noticeRow').append(mkR);
	}
	
} */
</script>

</body>
</html>