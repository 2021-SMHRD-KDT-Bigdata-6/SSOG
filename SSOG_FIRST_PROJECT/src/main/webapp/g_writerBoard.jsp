<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
  <head>
  	<link rel="shortcut icon" href="img/favicon.ico">
    <title>게시글 작성</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css2?family=Spectral:ital,wght@0,200;0,300;0,400;0,500;0,700;0,800;1,200;1,300;1,400;1,500;1,700&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

    <link rel="stylesheet" href="css/animate.css">
    
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">
    
    <link rel="stylesheet" href="css/flaticon.css">
    <link rel="stylesheet" href="css/style.css">
    <style>
    	#bgcolor{
    		background: #fbfbfb !important;
    	}
    	.col-md-7{
    		margin : 0 auto;
		    border: 1px solid #ededed99;
		    margin-bottom : 100px;
    	}
    	.filebox {
		    float: right;
		}
    	.filebox .upload-name {
		    display: inline-block;
		    height: 40px;
		    padding: 0 10px;
		    vertical-align: middle;
		    border: 1px solid #dddddd;
		    width: 60%;
		    color: #999999;
		    float : left;
		}
    	.filebox label {
		    display: inline-block;
		    padding: 10px 20px;
		    color: #fff;
		    vertical-align: middle;
		    background-color: #999999;
		    cursor: pointer;
		    height: 40px;
		    margin-left: 10px;
		    float : left;
		}
		.filebox input[type="file"] {
		    position: absolute;
		    width: 0;
		    height: 0;
		    padding: 0;
		    overflow: hidden;
		    border: 0;
		}
    </style>
  </head>
  <body>
	<div>
    	<jsp:include page="g_Header.jsp" flush="true"></jsp:include>
    </div>
    
    <section class="hero-wrap hero-wrap-2" style="background-image: url('images/bg_2.jpg');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text align-items-end justify-content-center">
          <div class="col-md-9 ftco-animate mb-5 text-center">
          	<p class="breadcrumbs mb-0"><span class="mr-2"><a href="index.html">Home <i class="fa fa-chevron-right"></i></a></span> <span>커뮤니티 <i class="fa fa-chevron-right"></i></span></p>
            <h2 class="mb-0 bread">게시글 작성</h2>
          </div>
        </div>
      </div>
    </section>

    <section class="ftco-section bg-light" id="bgcolor">
			<div class="container">
				<div class="row justify-content-center">
					<div class="col-md-12">
						<div class="wrapper px-md-4">
							<div class="row no-gutters">
								<div class="col-md-7">
									<div class="contact-wrap w-100 p-md-5 p-4">
										<h3 class="mb-4">게시글 작성</h3>
										<form method="POST" id="contactForm" name="contactForm" class="contactForm">
											<div class="row">
												<div class="col-md-12">
													<div class="form-group">
														<label class="label" for="subject">제목</label>
														<input type="text" class="form-control" name="subject" id="subject" placeholder="제목">
													</div>
												</div>
												<div class="col-md-12">
													<div class="form-group">
														<label class="label" for="#">내용</label>
														<div class="filebox">
														    <input class="upload-name" value="첨부파일" placeholder="첨부파일">
														    <label for="file">파일찾기</label> 
														    <input type="file" id="file">
														</div>
														<textarea name="message" class="form-control" id="message" cols="30" rows="10" placeholder="내용작성"></textarea>
													</div>
												</div>
												<div class="col-md-12">
													<div class="form-group">
														<input type="submit" value="게시글 올리기" class="btn btn-primary">
														<div class="submitting"></div>
													</div>
												</div>
											</div>
										</form>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>

	<div>
	    <jsp:include page="g_Footer.jsp" flush="true"></jsp:include>
	</div>
	    
  

  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


  <script src="js/jquery.min.js"></script>
  <script src="js/jquery-migrate-3.0.1.min.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/jquery.easing.1.3.js"></script>
  <script src="js/jquery.waypoints.min.js"></script>
  <script src="js/jquery.stellar.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/jquery.magnific-popup.min.js"></script>
  <script src="js/jquery.animateNumber.min.js"></script>
  <script src="js/scrollax.min.js"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="js/google-map.js"></script>
  <script src="js/main.js"></script>
  <script>
	  $("#file").on('change',function(){
		  var fileName = $("#file").val();
		  $(".upload-name").val(fileName);
		});
  </script>
    
  </body>
</html>