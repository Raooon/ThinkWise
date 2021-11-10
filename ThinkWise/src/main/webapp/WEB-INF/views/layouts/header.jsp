<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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

<div id="kakao-talk-channel-chat-button"></div>
<div id="create-channel-add-button"></div>

<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
<script type='text/javascript'>
  //<![CDATA[
    // 사용할 앱의 JavaScript 키를 설정해 주세요.
    Kakao.init('2e138c521b47422d9e2557bb2abb8e71');
    // 카카오톡 채널 1:1채팅 버튼을 생성합니다.
    Kakao.Channel.createChatButton({
      container: '#kakao-talk-channel-chat-button',
      channelPublicId: '_jxfpEb' // 카카오톡 채널 홈 URL에 명시된 ID
    });
  //]]>
</script>

 
<style>
/* pc 화면 */
@media (min-width: 768px) {
    #kakao-talk-channel-chat-button {
    position: fixed;
    z-index: 999;
    right: 20px; /* 화면 오른쪽으로부터의 거리, 숫자만 변경 30이 기본값*/
    bottom: 65px; /* 화면 아래쪽으로부터의 거리, 숫자만 변경 */
    }
}
/* 모바일 화면 */
@media (max-width:767px) {
    #kakao-talk-channel-chat-button {
    position: fixed;
    z-index: 999;
    right: 15px; /* 화면 오른쪽으로부터의 거리, 숫자만 변경 */
    bottom: 30px; /* 화면 아래쪽으로부터의 거리, 숫자만 변경 */
    }
}
/* PC 카카오톡 채널 버튼 위치 */
.kakaoChatPc {
    position: fixed;
    z-index: 999;
    right: 20px; /* 화면 오른쪽으로부터의 거리, 숫자만 입력 */
    bottom: 65px; /* 화면 아래쪽으로부터의 거리, 숫자만 입력 */
}
/* 모바일 카카오톡 채널 버튼 위치 */
.kakaoChatMob {
    position: fixed;
    z-index: 999;
    right: 20px; /* 화면 오른쪽으로부터의 거리, 숫자만 입력 */
    bottom: 20px; /* 화면 아래쪽으로부터의 거리, 숫자만 입력 */
}
#channel-add-button {
    position: fixed;
    z-index: 999;
    right: 20px; /* 화면 오른쪽으로부터의 거리, 숫자만 입력 */
    bottom: 10px; /* 화면 아래쪽으로부터의 거리, 숫자만 입력 */
}
</style>

<!-- 채널 추가 버튼 -->
<a id="channel-add-button" href="#" onclick="void addChannel();">
	<img src="template/images/배너.png"/>
</a>

<!-- 카카오톡 채널 스크립트 -->
<script type='text/javascript'>
    Kakao.init('2e138c521b47422d9e2557bb2abb8e71'); // 사용할 앱의 JavaScript키를 입력해 주세요.
    function kakaoChatStart() {
        Kakao.Channel.chat({
            channelPublicId: '_jxfpEb' // 카카오톡 채널 홈 URL에 명시된 ID를 입력합니다.
        });

        Kakao.Channel.createAddChannelButton({
        	  container: '#kakao-add-channel-button',
        	  channelPublicId: '_jxfpEb' // 카카오톡 채널 홈 URL에 명시된 id로 설정합니다.
        });
    }
    
    function addChannel() {
    	  Kakao.Channel.addChannel({
    	    channelPublicId: '_jxfpEb',
    	  })
    }
    
</script>

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
	
	#divdropdown1{
		border-radius: 8px;
		background-color: #082465; /*#5d50c673;*/
		z-index: 100000000;
		width: 162px;
		height: 180px;
		color: rgb(8, 36, 101);
		transition:  all 2s;
	}
	#divdropdown2{
		border-radius: 8px;
		background-color: #082465; /*#5d50c673;*/
		z-index: 100000000;
		width: 140px;
		height: 90px;
		color: rgb(8, 36, 101);
		transition:  all 2s;
	}
	#uldropdown{
		margin: 0px;
		padding: 0px;
	}
	#uldropdown>li{
		list-style-type: none;
	}
	#navlinka{
		padding-left: 10px;
		padding-right: 10px;
		text-align: left !important;
		font-size: 17px;
		color: #fefefe !important;
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
						<c:if test="${division == 'A' }">
							<li class="nav-item" id="btnadmin" onclick=adminDropDown("btnadmin") style="position:relative;">
							  	<a class="nav-link" href="#">Admin▾</a>
							  	 
							  	<div id="divdropdown1" style="display:none;">
								  	<ul id="uldropdown">
										<li class="nav-item">
								   			<a class="nav-link" id="navlinka" href="selectMemberList.do">Member List</a>
								 		</li>
								 
								 		<li class="nav-item">
								   			<a class="nav-link" id="navlinka" href="memberClassList.do">Class Manage</a>
								 		</li>
								 		
								 		<li class="nav-item">
								   			<a class="nav-link" id="navlinka" href="subjectManageForm.do">Subject Manage</a>
								 		</li>
								 		
								 		<li class="nav-item">
								   			<a class="nav-link" id="navlinka" href="studentManageForm.do">Student Manage</a>
								 		</li>
								  	</ul>
							  	</div>
							  	
							</li>
						</c:if>
					
						<li class="nav-item ">
							<a class="nav-link" href="noticeList.do"> Notice </a>
						</li>
						
						<li class="nav-item ">
						    <a class="nav-link" href="boardList.do"> Board </a>
						</li>
						
						<li class="nav-item">
						    <a class="nav-link" href="carlendar.do">Schedule</a>
						</li>
						
						<li class="nav-item">
						  	<a class="nav-link" href="location.do">Location</a>
						</li>
						
						<c:if test="${empty id }">
							<li class="nav-item">
							  	<a class="nav-link" href="memberLoginForm.do">Login</a>
							</li>
							<li class="nav-item">
							  	<a class="nav-link" href="emailPermissionForm.do">Join</a>
							</li>
						</c:if>
						
						<c:if test="${not empty id }">
							<li class="nav-item" id="btnivinfo" onclick=adminDropDown("btnIvInfo") style="position:relative;">
							  	<a class="nav-link" href="#">${name }님▾</a>
							  	<div id="divdropdown2" style="display:none;">
								  	<ul id="uldropdown">
										<li class="nav-item">
										  	<a class="nav-link" id="navlinka" href="memberLogout.do">Logout</a>
										</li>
								 
								 		<li class="nav-item">
									  		<a class="nav-link" id="navlinka" href="selectMyInfo.do">My Profile</a>
										</li>
								  	</ul>
							  	</div>
							  	
							</li>
						</c:if>
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
		$('#divdropdown1').attr("style", "display:none;");
		$('#divdropdown2').attr("style", "display:none;");
	} else { 
		// Scroll Up 
		if(st + $(window).height() < $(document).height()) { 
			$('header').removeClass('nav-up').addClass('nav-down'); 
		} 
	} 
	
	lastScrollTop = st; 
}


function adminDropDown(btn) {
	if(btn == "btnadmin") {
		if($('#divdropdown1').attr("style") == "display:none;") {
			$('#divdropdown1').attr("style", "display:block; position:absolute; top:"+ ($('#btnadmin').offset().top + 70) + "; left:" + ($('#btnadmin').offset().left ) + ";");
			$('#divdropdown2').attr("style", "display:none;");
		}else {
			$('#divdropdown1').attr("style", "display:none;");
		}
	}else  {
		if($('#divdropdown2').attr("style") == "display:none;") {
			$('#divdropdown2').attr("style", "display:block; position:absolute; top:"+ ($('#btnivinfo').offset().top + 70) + "; left:" + ($('#btnivinfo').offset().left) + ";");
			$('#divdropdown1').attr("style", "display:none;");
		}else {
			$('#divdropdown2').attr("style", "display:none;");
		}
	}
	
}


</script>

</body>
</html>tml>