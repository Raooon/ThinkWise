<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- bootstrap core css -->
<link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
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
	<section class="hero_section ">
		<div class="hero-container container">
			<div class="hero_detail-box">
			</div>
			<div class="hero_img-container">
				<div>
					<img src="template/images/hero.png" alt="" class="img-fluid">
				</div>
			</div>
		</div>
	</section>
</div>


<div class="common_style">
	<section class="subject_section">
		<jsp:include page="../subject/subjectForm.jsp" />
	</section>
</div>

    <script type="text/javascript" src="template/js/jquery-3.4.1.min.js"></script>
	<script type="text/javascript" src="template/js/bootstrap.js"></script>
</body>
</html>