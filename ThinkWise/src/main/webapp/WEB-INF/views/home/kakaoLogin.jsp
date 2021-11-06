<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>

	<script type="text/javascript">
	// SDK를 초기화 합니다. 사용할 앱의 JavaScript 키를 설정해 주세요.
    Kakao.init('c87cae6cde08866fda69ce70f14b0780');

    // SDK 초기화 여부를 판단합니다.
    console.log(Kakao.isInitialized()); //true나오면 초기화 성공!!
    
    Kakao.Auth.authorize({
		redirectUri: 'http://localhost/ThinkWise/kakaoChat.do'
	});
</script>
</body>
</html>