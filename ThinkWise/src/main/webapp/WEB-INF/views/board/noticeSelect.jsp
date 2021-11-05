<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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

  <!-- bootstrap core css -->
  <link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
  <!-- progress barstle -->
  <link rel="stylesheet" href="css/css-circular-prog-bar.css">
  <!-- fonts style -->
  <link href="https://fonts.googleapis.com/css?family=Poppins:400,700|Raleway:400,600&display=swap" rel="stylesheet">
  <!-- font wesome stylesheet -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
  <!-- Custom styles for this template -->
  <link href="css/style.css" rel="stylesheet" />
  <!-- responsive style -->
  <link href="css/responsive.css" rel="stylesheet" />

  <link rel="stylesheet" href="css/css-circular-prog-bar.css">

</head>

<body class="sub_page">

  <!-- contact section -->

  <section class="contact_section" style="background: white;">

    <div class="container">

      <div class="row">
        <div class="col-md-6">
          <div class="d-flex justify-content-center d-md-block">
            <h2>
              공지사항
            </h2>
          </div>
          
          
            <div class="contact_form-container">
              <table>
              	<tr>
              		<td>
              			<textarea rows="1" cols="50" id="contents" name="contents" style="resize: none;">${notice.title }</textarea>
              		</td>
              	</tr>
              	
              	<tr>
              		<td>
	              		<c:set var="modifiedDate" value="${notice.modifyDt }" />
	                
	                	<c:if test="${not empty modifiedDate}">
	                		${notice.modifyDt }
	                	</c:if>
	                	
	               		<c:if test="${empty modifiedDate}">
	                		${notice.enrollDt }
	                	</c:if>
	                	
              		</td>
              		
              		<td>
              			${notice.hit }
              		</td>
              	</tr>
              	
              	<tr>
              		<td>
              			<textarea rows="10" cols="50" id="contents" name="contents" style="resize: none;">${notice.contents }</textarea>
              		</td>
              	</tr>
              	
              	
              	
              </table>
              
               
                
                
                
                <!-- 버튼 -->
                <div class="mt-5">
                  <button type="button" onclick="noticeList.do">
                    뒤로가기
                  </button>
                </div>
                <!-- 관리자만 할 수 있게 -->
                <div class="mt-5">
                  <button type="button" onclick="noticeList.do">
                    수정하기
                  </button>
                </div>
                <div class="mt-5">
                  <button type="button" onclick="noticeList.do">
                    삭제하기
                  </button>
                </div>
                
            </div>
          
          
        </div>
        <div class="col-md-6">
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