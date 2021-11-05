<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- bootstrap core css -->
<link rel="stylesheet" type="text/css" href="template/css/bootstrap.css" />
<!-- progress barstle -->
<!-- 
<link rel="stylesheet" href="template/css/css-circular-prog-bar.css">
 -->
<!-- fonts style -->
<link
	href="https://fonts.googleapis.com/css?family=Poppins:400,700|Raleway:400,600&display=swap"
	rel="stylesheet">
<!-- font wesome stylesheet -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
<!-- Custom styles for this template -->
<!-- 
<link href="template/css/style.css" rel="stylesheet" />
 -->
<!-- responsive style -->
<link href="template/css/responsive.css" rel="stylesheet" />

<style>

	header{
		position: fixed;
		z-index: 10000;
		top: 0;
		left: 0;
		width: 100%;
		background-color: #E8BF12;
		transition: top 0.2s ease-in-out;
		display: block;
	}
	
	.nav-up { 
		top: -72px; 
	}

	
</style>

</head>
<body>
<header class="header_section">
      <div class="container">
        <nav class="navbar navbar-expand-lg custom_nav-container ">
          <a class="navbar-brand" href="home.do">
            <span>
              ThinkWise
            </span>
          </a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>

          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <div class="d-flex ml-auto flex-column flex-lg-row align-items-center">
              <ul class="navbar-nav  ">
                <li class="nav-item active">
                  <a class="nav-link" href="home.do"> Home <span class="sr-only">(current)</span></a>
                </li>
                
                	<!-- Ul로 묶어야할 곳 -->
	                <li class="nav-item ">
	                  <a class="nav-link" href="noticeList.do"> Notice </a>
	                </li>
	                <li class="nav-item ">
	                  <a class="nav-link" href="boardList.do"> Board </a>
	                </li>
					<!-- Ul로 묶어야할 곳 -->
					
                <li class="nav-item">
                  <a class="nav-link" href="memberInputForm.do">Contact Us</a>
                </li>
                
                <li class="nav-item">
                  <a class="nav-link" href="memberLoginForm.do">Login</a>
                </li>
                
                <li class="nav-item">
                  <a class="nav-link" href="carlendar.do">calendar</a>
                </li>
                
                <li class="nav-item">
                  <a class="nav-link" href="selectMemberList.do">MemberList</a>
                </li>
                
                <li class="nav-item">
                  <a class="nav-link" href="selectMyInfo.do">MyProfile</a>
                </li>
                
                <li class="nav-item">
                  <a class="nav-link" href="location.do">location</a>
                </li>

              </ul>
            </div>
            </div>
        </nav>
      </div>
    </header>
    
<script type="text/javascript" src="template/js/jquery-3.4.1.min.js"></script>
<script type="text/javascript" src="template/js/bootstrap.js"></script>

<script type="text/javascript"> //스크롤 이벤트시 헤더 숨기는 기능 위해 추가
//Hide Header on on scroll down 
var didScroll; 
var lastScrollTop = 0; 
var delta = 5; 
var navbarHeight = $('header').outerHeight(); 

$(window).scroll(function(event){ 
	didScroll = true; 
}); 

setInterval(function() { 
	if (didScroll) { 
		hasScrolled(); 
		didScroll = false; 
	} 
}, 250); 

function hasScrolled() { 
	var st = $(this).scrollTop(); 
	
	// Make sure they scroll more than delta 
	if(Math.abs(lastScrollTop - st) <= delta) {
		return; 
	}
	
	// If they scrolled down and are past the navbar, add class .nav-up. 
	// This is necessary so you never see what is "behind" the navbar. 
	if (st > lastScrollTop && st > navbarHeight){ 
		// Scroll Down 
		$('header').removeClass('nav-down').addClass('nav-up'); 
	} else { 
		// Scroll Up 
		if(st + $(window).height() < $(document).height()) { 
			$('header').removeClass('nav-up').addClass('nav-down'); 
		} 
	} 
	
	lastScrollTop = st; 
}
</script>

</body>
</html>