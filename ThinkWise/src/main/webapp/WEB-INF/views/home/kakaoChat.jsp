<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<div id="kakaotalk" style="width:300px; height: 250px;"></div>
    <!-- <a id="custom-login-btn" href="javascript:loginWithKakao()">
		<img  src="//k.kakaocdn.net/14/dn/btqCn0WEmI3/nijroPfbpCa4at5EIsjyf0/o.jpg" width="222" />
	</a> -->
	<a id="custom-login-btn" href="javascript:sendLinkCustom()">
		<img style="align-items: center;" src="https://developers.kakao.com/tool/resource/static/img/button/channel/consult/consult_large_yellow_pc.png" />
	</a>

	<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
	<script type="text/JavaScript" src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>

	<script type="text/javascript">
		// SDK를 초기화 합니다. 사용할 앱의 JavaScript 키를 설정해 주세요.
	    Kakao.init('c87cae6cde08866fda69ce70f14b0780');
	
	    // SDK 초기화 여부를 판단합니다.
	    //console.log(Kakao.isInitialized()); //true나오면 초기화 성공!!
	    
		function loginWithKakao() {
			Kakao.Auth.login({
				success: function(authObj) {
					
					//alert(JSON.stringify(authObj))
					console.log("login success: " + JSON.stringify(authObj))
					//{"access_token":"vh657TuZd9LRbcwMwWznmVg8WqnQGHbLlce6hwo9dZwAAAF88KNDwA","token_type":"bearer","refresh_token":"xkImzH2deIGa0peBRf96El9LdqPsRLiOxaV8NAo9dZwAAAF88KNDvw","expires_in":7199,"refresh_token_expires_in":5183999}
					Kakao.API.request({
					    url: '/v2/user/me',
					    success: function(response) {
					        console.log("getInfo: " + response);
					        
					        //sendLinkCustom();
					        
					        
					        
					    },
					    fail: function(error) {
					        console.log("fail : " + error);
					    }
					});
					
				},
				fail: function(err) {
					//alert(JSON.stringify(err))
					console.log("login err: " + JSON.stringify(err))
				},
			})
		}
	    
		function sendLinkCustom() {
	        //Kakao.init("c87cae6cde08866fda69ce70f14b0780"); //이부분 들어가면 다시 초기화되서 주석처리
	        Kakao.Link.sendCustom({
	            templateId: 64792
	        });
	        
	        window.close();
	    }
		
		Kakao.Channel.createChatButton({
			  container: '#kakao-talk-channel-chat-button',
			  channelPublicId: '_JxabEb' // 카카오톡 채널 홈 URL에 명시된 id로 설정합니다.
			});
	</script>
</body>
</html>