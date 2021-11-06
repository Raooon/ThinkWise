<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<!-- Mobile Metas -->
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />

<title><tiles:getAsString name="title" /></title>

<!-- bootstrap core css -->
<link rel="stylesheet" type="text/css" href="template/css/bootstrap.css" />
<!-- progress barstle -->
<link rel="stylesheet" href="template/css/css-circular-prog-bar.css">
<!-- fonts style -->
<link
	href="https://fonts.googleapis.com/css?family=Poppins:400,700|Raleway:400,600&display=swap"
	rel="stylesheet">
<!-- font wesome stylesheet -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
<!-- Custom styles for this template -->
<link href="template/css/style.css" rel="stylesheet" />
<!-- responsive style -->
<link href="template/css/responsive.css" rel="stylesheet" />

<link rel="stylesheet" href="template/css/css-circular-prog-bar.css">

<style>
button.kakao{
	border-color: transparent;
	background-color: transparent;
	z-index: 1000;
	position:fixed;
	right: 3%;
	bottom: 5%;
	overflow:hidden;
}
img.imgKakao{
	width: 71px;
	height: 60px;
}
</style>
</head>

<body>
	<div class="top_container">
		<tiles:insertAttribute name="header" />
		
		<div>
			<tiles:insertAttribute name="body" />
			<!-- 
			<button class="kakao"><img class="imgKakao" src="template/images/kakao.png"/></button>
			 -->
		</div>
	</div>
	<div>
		<tiles:insertAttribute name="footer" />
	</div>
	
<script type="text/javascript" src="template/js/jquery-3.4.1.min.js"></script>
<script type="text/javascript" src="template/js/bootstrap.js"></script>

<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>

<script>

$(document).on('click', 'button.kakao', function(event) { 
	// SDK를 초기화 합니다. 사용할 앱의 JavaScript 키를 설정해 주세요.
    Kakao.init('c87cae6cde08866fda69ce70f14b0780');

    // SDK 초기화 여부를 판단합니다.
    console.log(Kakao.isInitialized());
    
    window.open('kakaoChat.do', 'popup', 'width=300, height=200. right=30');
    
    
    
    
})
</script>
</body>
</html>