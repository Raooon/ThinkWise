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
	
	<title>teacher</title>
	
	<!-- bootstrap core css -->
	<link rel="stylesheet" type="text/css" href="template/bootstrap3.css" />
	<!-- progress barstle -->
	<link rel="stylesheet" href="css/css-circular-prog-bar.css">
	<!-- fonts style -->
	<link href="https://fonts.googleapis.com/css?family=Poppins:400,700&display=swap" rel="stylesheet">
	<!-- font wesome stylesheet -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
	<!-- Custom styles for this template -->
	<link href="template/css/style.css" rel="stylesheet" />
	<!-- responsive style -->
	<link href="template/css/responsive3.css" rel="stylesheet" />
	
	<link rel="stylesheet" href="css/css-circular-prog-bar.css">
	
	<style>
		.Tcontainer{
			
		}
	</style>
</head>
<body>
	<!-- teacher section -->
	<section class="teacher_section layout_padding-bottom">
		<div class="container">
			<h2 class="subject-heading ">
			  	Our Teachers
			</h2>
			<p class="text-center">
			  	아이들이 상상력을 자유롭게 표현할 수 있도록 노력하겠습니다.
			</p>
			<div class="teacher_container layout_padding2" >
			  	<div class="card-deck">
			    				    	
			  	</div>
			</div>
			
			<!-- 
			<div class="d-flex justify-content-center mt-3">
			  	<a href="" class="btn-seemore  ">
				    <span>
				      	See More
				    </span>
			    	<img src="images/right-arrow.png" alt="">
			  	</a>
			</div>
			 -->
		</div>
	</section>
	
	<script>
	$(document).ready(function() {
		
		$.ajax({
			url : "teacherList.do",
			type: "post",
			dataType : "json",
			success: function(data) {
				if(data.length > 0) {
					
					for(var i in data) {
						var card = $('<div class="card" />');
						
						var img = $('<img class="card-img-top" alt="Card image cap" />').attr("src", "template/images/teacher" + data[i].teacherCd + ".png");
						card.append(img);
						
						var cardbody = $('<div class="card-body" />');
						var h5 = $('<h5 class="card-title" />').text(data[i].teacherNm);
						cardbody.append(h5);
						card.append(cardbody);	
						
						$('.card-deck').append(card);
					}
					
					<!--
					<div class="card">
			      		<img class="card-img-top" src="template/images/teacher-2.jpg" alt="Card image cap">
			      		<div class="card-body">
			        		<h5 class="card-title">Leena jorj</h5>
			      		</div>
			    	</div>
			    	-->
				}
				
				
			},
			error: function(res) {
				console.log("fail")
			}
		});
   	});
	</script>

  <!-- teacher section -->
</body>
</html>