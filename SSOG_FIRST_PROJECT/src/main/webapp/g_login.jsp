<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
  <head>
	<link rel="shortcut icon" href="img/favicon.ico">
    <title>�α���</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css2?family=Spectral:ital,wght@0,200;0,300;0,400;0,500;0,700;0,800;1,200;1,300;1,400;1,500;1,700&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

    <link rel="stylesheet" href="css/animate.css">
    
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.1/css/bootstrap-select.min.css">
    
    <link rel="stylesheet" href="css/flaticon.css">
    <link rel="stylesheet" href="css/style.css">
    <style>
    .auto{
    	margin : 0 auto;
    }
    .align{
    	text-align: center;
    }
    #buttonSize{
    	width : 50%;
    	margin : 0 auto;
    	border : 0;
    	padding-top : 0 !important;
    }
    #topH{
    	height: 200px !important;
    }
    #topH2{
    	height: 220px !important;
    }
    
    
    </style>
  </head>
  <body>
	<div>
    	<jsp:include page="g_Header.jsp" flush="true" />
    </div>
    <!-- END nav -->
    
    <section class="hero-wrap hero-wrap-2" id="topH" style="background-image: url('images/bg_2.jpg');" data-stellar-background-ratio="0.5">
      <div class="overlay" id="topH"></div>
      <div class="container">
        <div class="row no-gutters slider-text align-items-end justify-content-center" id="topH2">
          <div class="col-md-9 ftco-animate mb-5 text-center">
          	
            <h2 class="mb-0 bread">Login</h2>
          </div>
        </div>
      </div>
    </section>

    <section class="ftco-section">
    	<div class="container">
    		<div class="row justify-content-center">
          <div class="col-xl-10 ftco-animate">
						<form action="#" class="billing-form">
							<h3 class="mb-4 billing-heading align">������ ���</h3>
	          	<div class="row align-items-end">
	          		<div class="col-md-6 auto">
	                <div class="form-group">
	                	<label for="firstname">���̵�</label>
	                  <input type="text" class="form-control" placeholder="���̵� �Է����ּ���.">
	                </div>
	              </div>
				<div class="w-100"></div>
		            <div class="col-md-6 auto">
		            	<div class="form-group">
	                	<label for="streetaddress">��й�ȣ</label>
	                  <input type="password" class="form-control" placeholder="��й�ȣ�� �Է����ּ���.">
	                </div>
		            </div>
		            
		        <div class="w-100"></div>
		        <div class="cart-detail p-3 p-md-4" id="buttonSize">
		        	<input type='submit' value='�α���' class="btn btn-primary py-3 px-4">
		        </div>
		        	
		        <div class="w-100"></div>
		        	<div class="cart-detail p-3 p-md-4" id="buttonSize">
	              		<p><a href="#"class="btn btn-primary py-3 px-4">ȸ������</a></p>
	            	</div>
	             
                <div class="w-100"></div>
		            
	            </div>
	          </form><!-- END -->

          </div> <!-- .col-md-8 -->
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
  <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.1/js/bootstrap-select.min.js"></script>
  <script src="js/main.js"></script>
    
  </body>
</html>