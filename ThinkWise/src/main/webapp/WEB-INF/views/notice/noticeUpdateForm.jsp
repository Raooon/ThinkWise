<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
  <!-- Basic -->
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <!-- Mobile Metas -->
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
  <!-- Site Metas -->
  <meta name="keywords" content="" />
  <meta name="description" content="" />
  <meta name="author" content="" />

  <title></title>

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
	
<style>
textarea {
  width: 100%;
  height: 150px;
  padding: 12px 20px;
  box-sizing: border-box;
  border: 2px solid #ccc;
  border-radius: 4px;
  resize: none;
}
input[type=text]:focus {
  border: 3px solid #555;
}
input[type=text] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  box-sizing: border-box;
}
</style>
</head>

<body class="sub_page">

  <!-- contact section -->

  <section class="ftco-section bg-light">

    <div class="container">

      <div class="row">
        <div class="col-md-8 mb-5 pb-2">
        
          <div class="d-flex justify-content-center text-center d-md-block heading-section">
            <h2 class="mb-4">
				<span>공지</span> 수정
			</h2>
          </div>
          
          <form action="noticeUpdate.do" method="post">
            <div class="contact_form-container">
              
                <div>
                  <input type="text" id="title" name="title" width="120" value="${notice.title }">
                </div>
                
                <div>
                  <textarea rows="10" cols="70" id="contents" name="contents">${notice.contents }</textarea>
                </div>
                
                <div>
                	<input type="hidden" id="noticeNo" name="noticeNo" value="${notice.noticeNo }">
                </div>
                
                <div class="mt-5" align="center">
                   <input type="button" value="취소하기" class="btn btn-outline-secondary" onclick="history.back()">
                   <input type="submit" value="수정하기" class="btn btn-outline-secondary">
                </div>
                
            </div>
          </form>
          
        </div>
        
        <div class="col-md-4">
          <div class="contact_img-box">
            <img src="template/images/students.jpg" alt="">
          </div>
        </div>
        
      </div>
      
    </div>
    
  </section>


  <script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
  <script type="text/javascript" src="js/bootstrap.js"></script>


</body>

</html>