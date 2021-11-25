<%@page import="java.util.Random"%>
<%@page import="jdk.internal.misc.FileSystemOption"%>
<%@page import="Controller.Controller_food"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model_Food.FoodDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
  <head>
  	<link rel="shortcut icon" href="img/favicon.ico">
    <title>테마추천</title>
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
    #menuW{
    	flex: 0 0 100%;
    	flex-grow: 0;
    	flex-shrink: 0;
   	 	flex-basis: 100%;
    	max-width: 100%;
    }
   	#icons{
		list-style : none;
		display : inline-block;
	}
	#category{
		width : 100%;
		margin : 0 auto;
	}
	#category li{
		float:left;
		width : 100px;
		height : 100px;
		border : 1px solid #ededed;
		text-align : center;
		color : #383838;
		box-sizing: border-box;
		font-size : 12px;
	}
	#category li:hover{
		font-weight : bold;
		background-color : #a23f25;
	}
	#category li:hover > img+a{
		filter:invert();
	}
	#category li a{
		color : #383838;
	}
	#category li a:hover{
		color : white;
	}
	#icons img:hover{
		filter:invert();
		/*filter : opacity(0.5) drop-shadow(0 0 0 white);*/
	}
	#icons img{
		width : 100%;
		height : 70px;
		padding : 20px;
		padding-bottom : 0;
		margin : 0 auto; 
		filter : opacity(0.5) drop-shadow(0 0 0 gray);
	}
	/*.container.slide{
		boder-top : 1px solid #ededed;
	}*/
	.footM{
    	margin-top : 100px;
    }
    </style>
  </head>
  <body>
  <%
  	Random ran = new Random();
  	Controller_food dao = new Controller_food();
  	ArrayList<String> result = dao.getFoodInCategori("밥");
  	System.out.println(result.get(1));
  	
  	//String[] fcate = new String[23] ;
  	
  	
  %>
  
	<div>
   		<jsp:include page="g_Header.jsp" flush="true"></jsp:include>
    </div>
    <!-- END nav -->
    
    <section class="hero-wrap hero-wrap-2" style="background-image: url('images/bg_2.jpg');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text align-items-end justify-content-center">
          <div class="col-md-9 ftco-animate mb-5 text-center">
          	<p class="breadcrumbs mb-0"><span class="mr-2"><a href="index.html">Home <i class="fa fa-chevron-right"></i></a></span> <span>테마추천 <i class="fa fa-chevron-right"></i></span></p>
            <h2 class="mb-0 bread">테마별 추천</h2>
          </div>
        </div>
      </div>
    </section>

  <section class="ftco-section ftco-no-pb" id="padding" style="padding-bottom: 48px; padding-top: 100px">

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
		<section class="ftco-section ftco-no-pb" id="padding" style="padding-bottom: 10px; padding-top: 10px">
		<div class="container">
			<div id='category'>
				<ul id='icons'>
					<li class="fcategory" value="밥"><a href="#"><img src="img/icon_1.png">밥/죽</a></li>
					<li class="fcategory" value="면류"><a href="#"><img src="img/icon_2.png">면류/만두</a></li>
					<li class="fcategory" value="국"><a href="#"><img src="img/icon_3.png">국/탕 </a></li>
					<li class="fcategory" value="찌개"><a href="#"><img src="img/icon_4.png">찌개/전골</a></li>
					<li class="fcategory" value="구이"><a href="#"><img src="img/icon_5.png">구이</a></li>
					<li class="fcategory" value="찜"><a href="#"><img src="img/icon_6.png">찜/조림</a></li>
					<li class="fcategory" value="볶음"><a href="#"><img src="img/icon_7.png">볶음</a></li>
					<li class="fcategory" value="튀김"><a href="#"><img src="img/icon_8.png">튀김</a></li>
					<li class="fcategory" value="무침"><a href="#"><img src="img/icon_9.png">무침/부침/냉채</a></li>
					<li class="fcategory" value="김치"><a href="#"><img src="img/icon_10.png">김치/젓갈/장아찌</a></li>
					<li class="fcategory" value="샐러드"><a href="#"><img src="img/icon_11.png">샐러드/수프</a></li>
					<li class="fcategory" value="스테이크"><a href="#"><img src="img/icon_12.png">피자/스테이크</a></li>
					<li class="fcategory" value="스파게티"><a href="#"><img src="img/icon_13.png">스파게티/파스타</a></li>
					<li class="fcategory" value="잼"><a href="#"><img src="img/icon_14.png">잼/드레싱/소스</a></li>
					<li class="fcategory" value="빵"><a href="#"><img src="img/icon_15.png">떡/빵</a></li>
					<li class="fcategory" value="샌드위치"><a href="#"><img src="img/icon_16.png">샌드위치/토스트 </a></li>
					<li class="fcategory" value="크림"><a href="#"><img src="img/icon_17.png">무스/푸딩/크림</a></li>
					<li class="fcategory" value="커피"><a href="#"><img src="img/icon_18.png">커피/차</a></li>
					<li class="fcategory" value="주스"><a href="#"><img src="img/icon_19.png">주스/건강음료</a></li>
					<li class="fcategory" value="빙과"><a href="#"><img src="img/icon_20.png">빙과/유제품</a></li>
					<li class="fcategory" value="주류"><a href="#"><img src="img/icon_21.png">주류</a></li>
					<li class="fcategory" value="장류"><a href="#"><img src="img/icon_22.png">장/조미료/가루</a></li>
					<li class="fcategory" value="기타"><a href="#"><img src="img/icon_23.png">기타요리</a></li>
				</ul>
			</div>
		</div>
		<!-- <div class="container slide">
		<a href="#"><img src="img/theme_down.png" whith='12px' height='15px'>테마닫기</a>
		
		</div> -->
		</section>
<div class="w-100"></div>
    <section class="ftco-section">
			<div class="container">
				<div class="row">
					<div class="col-md-9" id="menuW">
						<div class="row mb-4">
							<div class="col-md-12 d-flex justify-content-between align-items-center">
								<h4 class="product-select">바쁜당신을 위한 추천메뉴</h4>
								<select class="selectpicker" multiple>
				          <option>Brandy</option>
				          <option>Gin</option>
				          <option>Rum</option>
				          <option>Tequila</option>
				          <option>Vodka</option>
				          <option>Whiskey</option>
				        </select>
							</div>
						</div>
						<div class="row">
						<%for(int i = 1; i <= 12; i++ ){ 
							int num = ran.nextInt(20);%>
							<div class="col-md-4 d-flex">
								<a href="g_recipe.jsp?fName=<%=result.get(num) %>">
								<div class="product ftco-animate">
									<div class="img d-flex align-items-center justify-content-center" style="background-image: url(<%=dao.getImgUrl(result.get(num))%>);">
										<div class="desc">
											<!-- <p class="meta-prod d-flex">
												<a href="#" class="d-flex align-items-center justify-content-center"><span class="flaticon-shopping-bag"></span></a>
												<a href="#" class="d-flex align-items-center justify-content-center"><span class="flaticon-heart"></span></a>
												<a href="#" class="d-flex align-items-center justify-content-center"><span class="flaticon-visibility"></span></a>
											</p> -->
										</div>
									</div>
									<div class="text text-center" style="width: 315px;">
										<span class="category"><%=dao.showCategori(result.get(num)) %></span>
										<h2><%=result.get(num) %></h2>
										
									</div>
								</div>
								</a>
							</div>
							<%} %>
							
						</div>
						<div class="row mt-5">
		          <div class="col text-center">
		            <div class="block-27">
		              <ul>
		                <li><a href="#">&lt;</a></li>
		                <li class="active"><span>1</span></li>
		                <li><a href="#">2</a></li>
		                <li><a href="#">3</a></li>
		                <li><a href="#">4</a></li>
		                <li><a href="#">5</a></li>
		                <li><a href="#">&gt;</a></li>
		              </ul>
		            </div>
		          </div>
		        </div>
					</div>

					
					</div>
				</div>
			</div>
		</section>

	<div class="footM">
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
  <script>
  	let category = document.getElementsByClass('fcategory');
  	
  	category.onclick = function(){
  		category.value
  		
  	}
  	
  	
  </script>
    
  </body>
</html>