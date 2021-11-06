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

</head>

<body>


<div class="top_container">
	<tiles:insertAttribute name="header" />
</div>	
	<div>
		<tiles:insertAttribute name="body" />
	</div>

<div>
	<tiles:insertAttribute name="footer" />
</div>









<!--  
	<div class="top_container">
		<tiles:insertAttribute name="header" />
		
		<div>
			<tiles:insertAttribute name="body" />
		</div>
	</div>
	<div>
		<tiles:insertAttribute name="footer" />
	</div>
-->	
<script type="text/javascript" src="template/js/jquery-3.4.1.min.js"></script>
<script type="text/javascript" src="template/js/bootstrap.js"></script>

<script>

$(document).on('click', 'button.kakao', function(event) { 
    window.open('kakaoLogin.do', 'popup', 'width=500, height=600, right=30');
})
</script>
</body>
</html>