<%@page import="java.util.Random"%>
<%@page import="Controller.Controller_food"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
  <head>
  	<link rel="shortcut icon" href="img/favicon.ico">
    <title>Liquor Store - Free Bootstrap 4 Template by Colorlib</title>
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
    
    <style type="text/css">
    #firstTitle{
    	color: white;
    }
    #subTitle{
    	color: black;
    }
    #bordercolor{
    border: 1px solid rgba(0, 0, 0, 0.7);
    }
    #padding{
    	margin-bottom : 0px;
    }
    #cmPadding{
    	padding-bottom: 48px;
    }
    .h2{
    	margin-bottom: 16px !important;
    }
  
    </style>
    
  </head>
  <body>
 	<% String[] top100=(String[])session.getAttribute("top100"); 
 	  Controller_food food = new Controller_food();
 	  Random ran = new Random();
 	  int top =ran.nextInt(100);%>
 	
 	
 	
  	<div class="wrap">
			<div class="container">
				<div class="row">
					<div class="col-md-6 d-flex align-items-center">
						<p class="mb-0 phone pl-md-2">
							<a href="#" class="mr-2"><span class="fa fa-phone mr-1"></span> +82 062 1234 567</a> 
							<a href="#"><span class="fa fa-paper-plane mr-1"></span> youremail@email.com</a>
						</p>
					</div>
					<div class="col-md-6 d-flex justify-content-md-end">
						<div class="social-media mr-4">
			    		<p class="mb-0 d-flex">
			    			<a href="#" class="d-flex align-items-center justify-content-center"><span class="fa fa-facebook"><i class="sr-only">Facebook</i></span></a>
			    			<a href="#" class="d-flex align-items-center justify-content-center"><span class="fa fa-twitter"><i class="sr-only">Twitter</i></span></a>
			    			<a href="#" class="d-flex align-items-center justify-content-center"><span class="fa fa-instagram"><i class="sr-only">Instagram</i></span></a>
			    			<a href="#" class="d-flex align-items-center justify-content-center"><span class="fa fa-dribbble"><i class="sr-only">Dribbble</i></span></a>
			    		</p>
		        </div>
		        <div class="reg">
		        	<p class="mb-0"><a href="#" class="mr-2">회원가입</a> <a href="g_login.jsp">로그인</a></p>
		        </div>
					</div>
				</div>
			</div>
		</div>
	  <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
	    <div class="container">
	      <a class="navbar-brand" href="index.html">물가의고수 <span>store</span></a>
	      <div class="order-lg-last btn-group">
          <a href="#" class="btn-cart dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          	<span class="flaticon-shopping-bag"></span>
          	<div class="d-flex justify-content-center align-items-center"><small>3</small></div>
          </a>
          <div class="dropdown-menu dropdown-menu-right">
				    <div class="dropdown-item d-flex align-items-start" href="#">
				    	<div class="img" style="background-image: url(images/prod-1.jpg);"></div>
				    	<div class="text pl-3">
				    		<h4>싱싱 제주은갈치 151</h4>
				    		<p class="mb-0"><a href="#" class="price">$25.99</a><span class="quantity ml-3">Quantity: 01</span></p>
				    	</div>
				    </div>
				    <div class="dropdown-item d-flex align-items-start" href="#">
				    	<div class="img" style="background-image: url(images/prod-2.jpg);"></div>
				    	<div class="text pl-3">
				    		<h4>건강 쑥쑥 브로콜리</h4>
				    		<p class="mb-0"><a href="#" class="price">$30.89</a><span class="quantity ml-3">Quantity: 02</span></p>
				    	</div>
				    </div>
				    <div class="dropdown-item d-flex align-items-start" href="#">
				    	<div class="img" style="background-image: url(images/prod-3.jpg);"></div>
				    	<div class="text pl-3">
				    		<h4>힘이 불끈 인삼</h4>
				    		<p class="mb-0"><a href="#" class="price">$22.50</a><span class="quantity ml-3">Quantity: 01</span></p>
				    	</div>
				    </div>
				    <a class="dropdown-item text-center btn-link d-block w-100" href="cart.html">
				    	View All
				    	<span class="ion-ios-arrow-round-forward"></span>
				    </a>
				  </div>
        </div>
	      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
	        <span class="oi oi-menu"></span> Menu
	      </button>

	      <div class="collapse navbar-collapse" id="ftco-nav">
	        <ul class="navbar-nav ml-auto">
	          <li class="nav-item active"><a href="index.html" class="nav-link">home</a></li>
	          <li class="nav-item"><a href="g_about.jsp" class="nav-link">회사소개</a></li>
	          <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="dropdown04" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">추천상품</a>
              <div class="dropdown-menu" aria-labelledby="dropdown04">
              	<a class="dropdown-item" href="g_todaySpecial.jsp">it추천</a>
                <a class="dropdown-item" href="g_themeSpecial.jsp">테마추천</a>
                <a class="dropdown-item" href="g_cart.jsp">장바구니</a>
                <a class="dropdown-item" href="g_checkout.jsp">결제</a>
              </div>
            </li>
              <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="dropdown05" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">커뮤니티</a>
              <div class="dropdown-menu" aria-labelledby="dropdown05">
              	<a class="dropdown-item" href="HappyCook.html">해피COOK</a>
                <a class="dropdown-item" href="PoisonCook.html">포이즌COOK</a>
	          <li class="nav-item"><a href="index2.html" class="nav-link">물가정보</a></li>
	        </ul>
	      </div>
	    </div>
	  </nav>
    <!-- END nav -->
    
    <div class="hero-wrap" style="background-image: url('images/bg_2.jpg');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text align-items-center justify-content-center">
          <div class="col-md-8 ftco-animate d-flex align-items-end">
          	<div class="text w-100 text-center">
	            <h1 class="mb-4">신선, <span>알뜰,</span> 우리의 <span> 먹거리</span>.</h1>
	            <p><a href="#" class="btn btn-primary py-2 px-4">구매하러 가기</a> <a href="#" class="btn btn-white btn-outline-white py-2 px-4">여긴 뭘 넣지</a></p>
            </div>
          </div>
        </div>
      </div>
    </div>


    

		

		<section class="ftco-section" style="padding-top: 144px;">
			<div class="container">
				<div class="row justify-content-center pb-5">
          <div class="col-md-7 heading-section text-center ftco-animate">
          	<span class="subheading">신선 알뜰 인기절정 재료로 만든!</span>
            <h2 class="h2">오늘의 it 추천메뉴!</h2>
          </div>
        </div>
				<div class="row">
					<div class="col-md-3 d-flex">
						<div class="product ftco-animate">
						<%String name1 = top100[ran.nextInt(100)];%>
							<div class="img d-flex align-items-center justify-content-center">
							<img src="<%=food.getImgUrl(name1)%>">
								<div class="desc">
									<p class="meta-prod d-flex">
										<a href="#" class="d-flex align-items-center justify-content-center"><span class="flaticon-shopping-bag"></span></a>
										<a href="#" class="d-flex align-items-center justify-content-center"><span class="flaticon-heart"></span></a>
										<a href="#" class="d-flex align-items-center justify-content-center"><span class="flaticon-visibility"></span></a>
									</p>
								</div>
							</div>
							<div class="text text-center">
								<span class="seller">Best Seller</span>
								<span class="category">볶음밥</span>
								<h2><%=name1%></h2>
								<span class="price">$69.00</span>
							</div>
						</div>
					</div>
					<div class="col-md-3 d-flex">
						<div class="product ftco-animate">
						<%String name2 = top100[ran.nextInt(100)];%>
							<div class="img d-flex align-items-center justify-content-center">
							<img src="<%=food.getImgUrl(name2)%>">
								<div class="desc">
									<p class="meta-prod d-flex">
										<a href="#" class="d-flex align-items-center justify-content-center"><span class="flaticon-shopping-bag"></span></a>
										<a href="#" class="d-flex align-items-center justify-content-center"><span class="flaticon-heart"></span></a>
										<a href="#" class="d-flex align-items-center justify-content-center"><span class="flaticon-visibility"></span></a>
									</p>
								</div>
							</div>
							<div class="text text-center">
								<span class="seller">Best Seller</span>
								<span class="category">볶음밥</span>
								<h2><%=name2%></h2>
								<span class="price">$69.00</span>
							</div>
						</div>
					</div>
					<div class="col-md-3 d-flex">
						<div class="product ftco-animate">
						<%String name3 = top100[ran.nextInt(100)];%>
							<div class="img d-flex align-items-center justify-content-center">
							<img src="<%=food.getImgUrl(name3)%>">	
								<div class="desc">
									<p class="meta-prod d-flex">
										<a href="#" class="d-flex align-items-center justify-content-center"><span class="flaticon-shopping-bag"></span></a>
										<a href="#" class="d-flex align-items-center justify-content-center"><span class="flaticon-heart"></span></a>
										<a href="#" class="d-flex align-items-center justify-content-center"><span class="flaticon-visibility"></span></a>
									</p>
								</div>
							</div>
							<div class="text text-center">
								<span class="new">New Arrival</span>
								<span class="category">전골</span>
								<h2><%=name3 %></h2>
								<span class="price">$69.00</span>
							</div>
						</div>
					</div>
					<div class="col-md-3 d-flex">
						<div class="product ftco-animate">
						<%String name4 = top100[ran.nextInt(100)];%>
							<div class="img d-flex align-items-center justify-content-center">
							<img src="<%=food.getImgUrl(name4)%>">	
								<div class="desc">
									<p class="meta-prod d-flex">
										<a href="#" class="d-flex align-items-center justify-content-center"><span class="flaticon-shopping-bag"></span></a>
										<a href="#" class="d-flex align-items-center justify-content-center"><span class="flaticon-heart"></span></a>
										<a href="#" class="d-flex align-items-center justify-content-center"><span class="flaticon-visibility"></span></a>
									</p>
								</div>
							</div>
							<div class="text text-center">
								<span class="category">가정식</span>
								<h2><%=name4 %></h2>
								<span class="price">$69.00</span>
							</div>
						</div>
					</div>
		</section>
		
		
		
          	

			
				<div class="row justify-content-center pb-5" style="padding-top: 96px;">
          			<div class="col-md-7 heading-section text-center ftco-animate">
          				<span class="subheading">지금 기분이 어때요?</span>
            			<h2 class="h2">테마별 음식 추천</h2>
          			</div>
        		</div>
  <section class="ftco-section ftco-no-pb" id="padding" style="padding-bottom: 48px; padding-top: 0px">

			<div class="container">
				<div class="row">
					<div class="col-lg-2 col-md-4 ">
						<div class="sort w-100 text-center ftco-animate">
							<div class="img" style="background-image: url(images/kind-1.jpg);"></div>
							<h3>이달의 제철상품</h3>
						</div>
					</div>
					<div class="col-lg-2 col-md-4 ">
						<div class="sort w-100 text-center ftco-animate">
							<div class="img" style="background-image: url(images/kind-2.jpg);"></div>
							<h3>비오는 날엔</h3>
						</div>
					</div>
					<div class="col-lg-2 col-md-4 ">
						<div class="sort w-100 text-center ftco-animate">
							<div class="img" style="background-image: url(images/kind-3.jpg);"></div>
							<h3>눈오는 날엔</h3>
						</div>
					</div>
					<div class="col-lg-2 col-md-4 ">
						<div class="sort w-100 text-center ftco-animate">
							<div class="img" style="background-image: url(images/kind-4.jpg);"></div>
							<h3>월요일 저녁엔</h3>
						</div>
					</div>
					<div class="col-lg-2 col-md-4 ">
						<div class="sort w-100 text-center ftco-animate">
							<div class="img" style="background-image: url(images/kind-5.jpg);"></div>
							<h3>스트레스 받을땐</h3>
						</div>
					</div>
					<div class="col-lg-2 col-md-4 ">
						<div class="sort w-100 text-center ftco-animate">
							<div class="img" style="background-image: url(images/kind-6.jpg);"></div>
							<h3>우울할 땐</h3>
						</div>
					</div>

				</div>
			</div>
		</section>
    <section class="ftco-section testimony-section img bg2" id="cmPadding">
    	
      <div class="container">
        <div class="row justify-content-center mb-5">
          <div class="col-md-7 text-center heading-section heading-section-white ftco-animate text2">
          	<span class="subheading text2" id="subTitle">요리금손 다 모여라!</span>
            <h2 class="mb-3 text2">Happy Cook</h2>
          </div>
        </div>
        <div class="row ftco-animate">
          <div class="col-md-12">
            <div class="carousel-testimony owl-carousel ftco-owl">
              <% for(int i=1;i<=6;i++){%><div class="item" >
                <div class="testimony-wrap py-4" id="bordercolor" style="text-align: center">
                		<div style="width: 100%; height:203px;">
                			<img src="./images/image_<%=i %>.jpg" style="width:100%; height:100%;"/>
                		</div>
                		<div class="icon d-flex align-items-center justify-content-center"><span class="fa fa-quote-left"></div>
                 		 <div class="text text2">
                   		 <p class="mb-4"></p>
                   		 <div class="d-flex align-items-center">
                    		<div class="user-img" style="background-image: url(images/person_1.jpg)"></div>
                    		<div class="pl-3 text2">
		                   	 	<p class="name">현진현진찌</p>
		                    	<span class="position">Marketing Manager</span>
		                  </div>
	                  	</div>
                  </div>
                </div>
              </div><% }%>
              
            </div>
          </div>
        </div>
      </div>
    </section>
   <section class="ftco-section testimony-section img bg2" style="padding-bottom: 144px;"> 
    	
      <div class="container">
        <div class="row justify-content-center mb-5">
          <div class="col-md-7 text-center heading-section heading-section-white ftco-animate text2">
          	<span class="subheading text2" id="subTitle">요리인데..이제 독을 곁들인</span>
            <h2 class="mb-3 text2">Posion Cook</h2>
          </div>
        </div>
        <div class="row ftco-animate">
          <div class="col-md-12">
            <div class="carousel-testimony owl-carousel ftco-owl">
              <% for(int i=1;i<6;i++){%><div class="item">
                <div class="testimony-wrap py-4" id="bordercolor" style="text-align:center">
                		<div style="width: 100%; height:203px;">
                			<img src="./images/image_<%=i %>_<%=i %>.jpg" style="width:100%; height:100%;"/>
                		</div>
                	<div class="icon d-flex align-items-center justify-content-center"><span class="fa fa-quote-left"></div>
                  <div class="text text2">
                    <p class="mb-4"></p>
                    <div class="d-flex align-items-center">
                    	<div class="user-img" style="background-image: url(images/person_1.jpg)"></div>
                    	<div class="pl-3 text2">
		                    <p class="name">진웅진웅찌</p>
		                    <span class="position">Marketing Manager</span>
		                  </div>
	                  </div>
                  </div>
                </div>
              </div><% }%>
              
            </div>
          </div>
        </div>
      </div>
    </section>

		
   
      
    
    <footer class="ftco-footer" id="ftco-footer">
      <div class="container">
        <div class="row mb-5">
          <div class="col-sm-12 col-md">
            <div class="ftco-footer-widget mb-4">
              <h2 class="ftco-heading-2 logo"><a href="#">물가의고수<span>Store</span></a></h2>
              <p>당신의 가까이에서, 신선하게, 알뜰하
              게, 즐겁게!</p>
              <ul class="ftco-footer-social list-unstyled mt-2">
                <li class="ftco-animate"><a href="#"><span class="fa fa-twitter"></span></a></li>
                <li class="ftco-animate"><a href="#"><span class="fa fa-facebook"></span></a></li>
                <li class="ftco-animate"><a href="#"><span class="fa fa-instagram"></span></a></li>
              </ul>
            </div>
          </div>
          <div class="col-sm-12 col-md">
            <div class="ftco-footer-widget mb-4 ml-md-4">
              <h2 class="ftco-heading-2">내 계정</h2>
              <ul class="list-unstyled">
                <li><a href="#"><span class="fa fa-chevron-right mr-2"></span>내 계정</a></li>
                <li><a href="#"><span class="fa fa-chevron-right mr-2"></span>로그인</a></li>
                <li><a href="#"><span class="fa fa-chevron-right mr-2"></span>장바구니</a></li>
              </ul>
            </div>
          </div>
          <div class="col-sm-12 col-md">
            <div class="ftco-footer-widget mb-4 ml-md-4">
              <h2 class="ftco-heading-2">정보 게시판</h2>
              <ul class="list-unstyled">
                <li><a href="#"><span class="fa fa-chevron-right mr-2"></span>물가 정보</a></li>
                <li><a href="#"><span class="fa fa-chevron-right mr-2"></span>레시피</a></li>
              </ul>
            </div>
          </div>
          <div class="col-sm-12 col-md">
             <div class="ftco-footer-widget mb-4">
              <h2 class="ftco-heading-2">고객센터</h2>
              <ul class="list-unstyled">
                <li><a href="#"><span class="fa fa-chevron-right mr-2"></span>문의하기</a></li>
              </ul>
            </div>
          </div>
          <div class="col-sm-12 col-md">
            <div class="ftco-footer-widget mb-4">
            	<h2 class="ftco-heading-2">Have a Questions?</h2>
            	<div class="block-23 mb-3">
	              <ul>
	                <li><span class="icon fa fa-map marker"></span><span class="text">광주광역시 남구 송암로 60 CGI센터 2층</span></li>
	                <li><a href="#"><span class="icon fa fa-phone"></span><span class="text">+82 062 123 5678</span></a></li>
	                <li><a href="#"><span class="icon fa fa-paper-plane pr-4"></span><span class="text">SSOG@gmail.com</span></a></li>
	              </ul>
	            </div>
            </div>
          </div>
        </div>
      </div>
      <div class="container-fluid px-0 py-5 bg-black">
      	<div class="container">
      		<div class="row">
	          <div class="col-md-12">
		
	            <p class="mb-0" style="color: rgba(255,255,255,.5);"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
	  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart color-danger" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib.com</a>
	  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
	          </div>
	        </div>
      	</div>
      </div>
    </footer>
    
  

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
    
  </body>
</html>