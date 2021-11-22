<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
  <head>
  	<link rel="shortcut icon" href="img/favicon.ico">
    <title>�׸���õ</title>
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
	
    </style>
  </head>
  <body>
	<div>
   		<jsp:include page="g_Header.jsp" flush="true"></jsp:include>
    </div>
    <!-- END nav -->
    
    <section class="hero-wrap hero-wrap-2" style="background-image: url('images/bg_2.jpg');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text align-items-end justify-content-center">
          <div class="col-md-9 ftco-animate mb-5 text-center">
          	<p class="breadcrumbs mb-0"><span class="mr-2"><a href="index.html">Home <i class="fa fa-chevron-right"></i></a></span> <span>�׸���õ <i class="fa fa-chevron-right"></i></span></p>
            <h2 class="mb-0 bread">�׸��� ��õ</h2>
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
							<h3>�̴��� ��ö��ǰ</h3>
						</div>
					</div>
					<div class="col-lg-2 col-md-4 ">
						<div class="sort w-100 text-center ftco-animate">
							<div class="img" style="background-image: url(images/kind-2.jpg);"></div>
							<h3>����� ����</h3>
						</div>
					</div>
					<div class="col-lg-2 col-md-4 ">
						<div class="sort w-100 text-center ftco-animate">
							<div class="img" style="background-image: url(images/kind-3.jpg);"></div>
							<h3>������ ����</h3>
						</div>
					</div>
					<div class="col-lg-2 col-md-4 ">
						<div class="sort w-100 text-center ftco-animate">
							<div class="img" style="background-image: url(images/kind-4.jpg);"></div>
							<h3>������ ���ΰ</h3>
						</div>
					</div>
					<div class="col-lg-2 col-md-4 ">
						<div class="sort w-100 text-center ftco-animate">
							<div class="img" style="background-image: url(images/kind-5.jpg);"></div>
							<h3>��Ʈ���� ������</h3>
						</div>
					</div>
					<div class="col-lg-2 col-md-4 ">
						<div class="sort w-100 text-center ftco-animate">
							<div class="img" style="background-image: url(images/kind-6.jpg);"></div>
							<h3>����� ��</h3>
						</div>
					</div>

				</div>
			</div>
		</section>
		<section class="ftco-section ftco-no-pb" id="padding" style="padding-bottom: 10px; padding-top: 10px">
		<div class="container">
			<div id='category'>
				<ul id='icons'>
					<li><a href="#"><img src="img/icon_1.png">��丮</a></li>
					<li><a href="#"><img src="img/icon_2.png">��&��</a></li>
					<li><a href="#"><img src="img/icon_3.png">�&����</a></li>
					<li><a href="#"><img src="img/icon_4.png">�ع���</a></li>
					<li><a href="#"><img src="img/icon_5.png">�����丮</a></li>
					<li><a href="#"><img src="img/icon_6.png">����(���/����)</a></li>
					<li><a href="#"><img src="img/icon_7.png">��&����</a></li>
					<li><a href="#"><img src="img/icon_8.png">�մԻ�</a></li>
					<li><a href="#"><img src="img/icon_9.png">���̹���</a></li>
					<li><a href="#"><img src="img/icon_10.png">��ġ �����</a></li>
					<li><a href="#"><img src="img/icon_11.png">���ö�</a></li>
					<li><a href="#"><img src="img/icon_12.png">Ƣ��</a></li>
					<li><a href="#"><img src="img/icon_13.png">��丮</a></li>
					<li><a href="#"><img src="img/icon_14.png">������</a></li>
					<li><a href="#"><img src="img/icon_15.png">���&�ʹ�</a></li>
					<li><a href="#"><img src="img/icon_16.png">�߽�&������</a></li>
					<li><a href="#"><img src="img/icon_17.png">���İ�Ƽ</a></li>
					<li><a href="#"><img src="img/icon_18.png">����/�н�</a></li>
					<li><a href="#"><img src="img/icon_19.png">�佺Ʈ/������ġ</a></li>
					<li><a href="#"><img src="img/icon_20.png">����ŷ</a></li>
					<li><a href="#"><img src="img/icon_21.png">����Ʈ</a></li>
					<li><a href="#"><img src="img/icon_22.png">�ֽ�&����</a></li>
					<li><a href="#"><img src="img/icon_23.png">��&Ĭ����</a></li>
					<li><a href="#"><img src="img/icon_24.png">�����丮</a></li>
					<li><a href="#"><img src="img/icon_25.png">��Ÿ�丮</a></li>
				</ul>
			</div>
		</div>
		<!-- <div class="container slide">
		<a href="#"><img src="img/theme_down.png" whith='12px' height='15px'>�׸��ݱ�</a>
		
		</div> -->
		</section>
<div class="w-100"></div>
    <section class="ftco-section">
			<div class="container">
				<div class="row">
					<div class="col-md-9" id="menuW">
						<div class="row mb-4">
							<div class="col-md-12 d-flex justify-content-between align-items-center">
								<h4 class="product-select">�ٻ۴���� ���� ��õ�޴�</h4>
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
						<%for(int i = 1; i <= 12; i++ ){ %>
							<div class="col-md-4 d-flex">
								<a href="recipe.jsp">
								<div class="product ftco-animate">
									<div class="img d-flex align-items-center justify-content-center" style="background-image: url(img/<%=i %>.jpg);">
										<div class="desc">
											<!-- <p class="meta-prod d-flex">
												<a href="#" class="d-flex align-items-center justify-content-center"><span class="flaticon-shopping-bag"></span></a>
												<a href="#" class="d-flex align-items-center justify-content-center"><span class="flaticon-heart"></span></a>
												<a href="#" class="d-flex align-items-center justify-content-center"><span class="flaticon-visibility"></span></a>
											</p> -->
										</div>
									</div>
									<div class="text text-center">
										<span class="category">�ѽ�</span>
										<h2>����� �ѻ�</h2>
										<p class="mb-0"><span class="price">�߿������ ������ ������ ���ִ� �ѽ�</span></p>
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