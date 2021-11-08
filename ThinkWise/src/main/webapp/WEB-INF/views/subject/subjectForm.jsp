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

  <title>subject</title>



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
.vehicle_img-box{
	border-radius: 15px;
}
.carousel-item{
	widht: 600px;
}
.subject_img{
	display: inline-block;
}
.subject_info{
	display: inline-block;
}
</style>

</head>

<body>
	<script>
		//console.log("aaa");
		//if ("${subjects }" == "") {
		//	console.log("bbb");
		//	location.href="subjectList.do";
		//	console.log("ccc");
		//}
		//console.log("ddd");
	</script>
	
	<!-- vehicle section -->
	<section class="vehicle_section layout_padding">
		<div class="container">
			<h2 class="subject-heading">Our Classes</h2>
	      	<p class="text-center">
		        다양한 연령층을 위한 수업들이 준비되어 있습니다.
	      	</p>
	      	<div class="layout_padding-top">
		        <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
		          	<div class="carousel-inner">
		          
			            <div class="carousel-item active">
			              	<div class="vehicle_img-box ">
			                	<img src="template/images/bus.png" alt="" class="img-fluid w-100">
			              	</div>
			            </div>
		            	
			            <!--<c:forEach items="${subjects }" var="subject">
			            	<div class="carousel-item">
								<div class="vehicle_img-box">
									<div class="subject_img" style="display:inline-block;">
										<img height="175px" src="template/images/${subject.subjectNm }.jpg" alt="">
									</div>
									<div class="subject_info" style="display: inline-block;">
										${subject.subjectInfo }
									</div>
								</div>
				            </div>
						</c:forEach>  -->          
		            
					</div>
		          
		          	<a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
			            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
			            <span class="sr-only">Previous</span>
		          	</a>
		          	<a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
			            <span class="carousel-control-next-icon" aria-hidden="true"></span>
			            <span class="sr-only">Next</span>
		          	</a>
		        </div>
			</div>
		</div>
	</section>
	
	<!-- vehicle section -->


  	<script>
	    // This example adds a marker to indicate the position of Bondi Beach in Sydney,
	    // Australia.
	    function initMap() {
	      var map = new google.maps.Map(document.getElementById('map'), {
	        zoom: 11,
	        center: {
	          lat: 40.645037,
	          lng: -73.880224
	        },
	      });
	
	      var image = 'images/maps-and-flags.png';
	      var beachMarker = new google.maps.Marker({
	        position: {
	          lat: 40.645037,
	          lng: -73.880224
	        },
	        map: map,
	        icon: image
	      });
	    }
	    
	    </script>
	    
	    
	    <script type="text/javascript">
			$(document).ready(function() {
				
				$.ajax({
					url : "subjectList.do",
					type: "post",
					dataType : "json",
					success: function(data) {
						if(data.length > 0) {
							
							for(var i in data) {
								var item = $('<div class="carousel-item" />');
								var imgbox = $('<div class="vehicle_img-box" />');
								item.append(imgbox);
								
								var img = $('<span class="subject_img" style="display: inline-block;"/>').append($('<img height="175px" alt="">').attr("src", "template/images/" + data[i].subjectNm + ".png"));
								imgbox.append(img);
								
								var info = $('<span class="subject_info" style="display: inline-block;"/>');
								var divtitle = $('<div class="subjecttitle" />').text(data[i].subjectNm);
								var divcontents = $('<div class="subjectcontens" />').text(data[i].subjectInfo);
								info.append(divtitle);
								info.append(divcontents);
								imgbox.append(info);	
								
								$('.carousel-inner').append(item);
							}
							
							
							//<div class="carousel-item">
							//	<div class="vehicle_img-box">
							//		<div class="subject_img" style="display:inline-block;">
							//			<img height="175px" src="template/images/${subject.subjectNm }.jpg" alt="">
							//		</div>
							//		<div class="subject_info" style="display: inline-block;">
							//			${subject.subjectInfo }
							//		</div>
							//	</div>
				            //</div>
						}
						
						
					},
					error: function(res) {
						console.log("fail")
					}
				});
	    	});
	    
	    
		</script>
	
  	<!-- google map js -->
  	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA8eaHt9Dh5H57Zh0xVTqxVdBFCvFMqFjQ&callback=initMap">
  	</script>
  	<!-- end google map js -->
</body>

</html>