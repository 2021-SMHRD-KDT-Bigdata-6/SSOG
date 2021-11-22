<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
  <head>
	<link rel="shortcut icon" href="img/favicon.ico">
    <title>레시피</title>
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
    	strong{
    		font-weight : bold;
    	}
    	.product-details .price span{
    		font-size : 16px;
    		font-family : '나눔고딕';
    	}
    	.img-fluid {
    		height : 100%;
    	}
    	/*.ftco-navbar-light {
    		background: black !important;
    	}*/
    	#chartBox{
    		width : 500px;
    		height : 600px;
    		margin : 0 auto;
    		margin-top : 70px;
    	}
    	#v-pills-tabContent{
    		background-color : white !important;
    	}
    	.footM{
	    	margin-top : 100px;
	    }
    </style>
  </head>
  <body>
	<div>
    	<jsp:include page="g_Header.jsp" flush="true" />
    </div>
    <!-- END nav -->
    
    <section class="hero-wrap hero-wrap-2" style="background-image: url('images/bg_2.jpg');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text align-items-end justify-content-center">
          <div class="col-md-9 ftco-animate mb-5 text-center">
          	<p class="breadcrumbs mb-0"><span class="mr-2"><a href="index.html">Home <i class="fa fa-chevron-right"></i></a></span> <span><a href="product.html">it 추천<i class="fa fa-chevron-right"></i></a></span> <span>레시피<i class="fa fa-chevron-right"></i></span></p>
            <h2 class="mb-0 bread">레시피</h2>
          </div>
        </div>
      </div>
    </section>

    <section class="ftco-section">
    	<div class="container">
    		<div class="row">
    			<div class="col-lg-6 mb-5 ftco-animate">
    				<a href="img/1.jpg" class="image-popup prod-img-bg"><img src="img/1.jpg" class="img-fluid" alt="Colorlib Template"></a>
    			</div>
    			<div class="col-lg-6 product-details pl-md-5 ftco-animate">
    				<h3>마늘종장아찌 볶음밥</h3>
    				<div class="rating d-flex">
							<p class="text-left mr-4">
								<a href="#" class="mr-2">난이도</a>
								<a href="#"><span class="fa fa-star"></span></a>
								<a href="#"><span class="fa fa-star"></span></a>
								<a href="#"><span class="fa fa-star"></span></a>
							</p>
							<p class="text-left mr-4">
								<a href="#" class="mr-2" style="color: #000;">소요시간 <span style="color: #bbb;">20분</span></a>
							</p>
						</div>
    				<p class="price"><span>고추장 양념에 빨갛게 무쳐 먹던 마늘종을<br>햄과 함께 달달 볶았어요.</span></p>
    				<p><strong>재료</strong></p>
						<p>마늘종장아찌(1줌=50g), 통조림 햄(1/4개=50g), 마늘(2쪽), 밥(1공기), 달걀(1개)</p>

						<p><strong>양념</strong></p>
						<p>참기름(0.3), 후춧가루(약간)</p>
						<div class="row mt-4">
							<div class="input-group col-md-6 d-flex mb-3">
	             	<span class="input-group-btn mr-2">
	                	<button type="button" class="quantity-left-minus btn"  data-type="minus" data-field="">
	                   <i class="fa fa-minus"></i>
	                	</button>
	            		</span>
	             	<input type="text" id="quantity" name="quantity" class="quantity form-control input-number" value="1" min="1" max="100">
	             	<span class="input-group-btn ml-2">
	                	<button type="button" class="quantity-right-plus btn" data-type="plus" data-field="">
	                     <i class="fa fa-plus"></i>
	                 </button>
	             	</span>
	          	</div>
	          	<div class="w-100"></div>
          	</div>
          	<p><a href="cart.html" class="btn btn-primary py-3 px-5 mr-2">장바구니</a><a href="cart.html" class="btn btn-primary py-3 px-5">결제하기</a></p>
    			</div>
    		</div>




    		<div class="row mt-5">
          <div class="col-md-12 nav-link-wrap">
            <div class="nav nav-pills d-flex text-center" id="v-pills-tab" role="tablist" aria-orientation="vertical">
              <a class="nav-link ftco-animate active mr-lg-1" id="v-pills-1-tab" data-toggle="pill" href="#v-pills-1" role="tab" aria-controls="v-pills-1" aria-selected="true">레시피</a>

              <a class="nav-link ftco-animate mr-lg-1" id="v-pills-2-tab" data-toggle="pill" href="#v-pills-2" role="tab" aria-controls="v-pills-2" aria-selected="false">영양정보</a>

              <a class="nav-link ftco-animate" id="v-pills-3-tab" data-toggle="pill" href="#v-pills-3" role="tab" aria-controls="v-pills-3" aria-selected="false">Reviews</a>

            </div>
          </div>
          <div class="col-md-12 tab-wrap">
            
            <div class="tab-content bg-light" id="v-pills-tabContent">

              <div class="tab-pane fade show active" id="v-pills-1" role="tabpanel" aria-labelledby="day-1-tab">
              	<div class="p-4">
	              	<h3 class="mb-4">마늘종장아찌 볶음밥</h3>
	              	<p>1. 마늘종장아찌는 1cm 길이로 썰고, 통조림 햄은 잘게 썰고, 마늘은 납작 썰고,
						2. 중간 불로 달군 팬에 식용유(1)를 둘러 잘게 썬 햄을
						3분간 볶은 뒤 키친타월에 밭쳐 기름을 제거하고,
						tip 식용유에 햄을 구우면 동물성 기름이 녹아 나와요.
						3. 중간 불로 달군 팬에 식용유(1)를 둘러
						납작 썬 마늘을 넣고 1분간 볶은 뒤
						밥을 넣어 3분간 고루 볶고,
						
						4. 볶은 햄, 마늘종장아찌, 양념을 넣어 3분간 볶고,
						
						5. 중간 불로 달군 팬에 식용유(2)를 두른 뒤
						달걀을 넣어 달걀프라이를 만들고,
						
						6. 그릇에 볶음밥을 담고 달걀프라이를 얹어 마무리.</p>
              	</div>
              </div>

              <div class="tab-pane fade" id="v-pills-2" role="tabpanel" aria-labelledby="v-pills-day-2-tab">
              	<div class="p-4">
	              	<h3 class="mb-4">마늘종장아찌 볶음밥 영양정보</h3>
	              	<div id="chartBox"><canvas id="radarChart"></canvas></div>
              	</div>
              </div>
              <div class="tab-pane fade" id="v-pills-3" role="tabpanel" aria-labelledby="v-pills-day-3-tab">
              	<div class="row p-4">
						   		<div class="col-md-7">
						   			<h3 class="mb-4">23 Reviews</h3>
						   			<div class="review">
								   		<div class="user-img" style="background-image: url(images/person_1.jpg)"></div>
								   		<div class="desc">
								   			<h4>
								   				<span class="text-left">Jacob Webb</span>
								   				<span class="text-right">25 April 2020</span>
								   			</h4>
								   			<p class="star">
								   				<span>
								   					<i class="fa fa-star"></i>
								   					<i class="fa fa-star"></i>
								   					<i class="fa fa-star"></i>
								   					<i class="fa fa-star"></i>
								   					<i class="fa fa-star"></i>
							   					</span>
							   					<span class="text-right"><a href="#" class="reply"><i class="icon-reply"></i></a></span>
								   			</p>
								   			<p>When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrov</p>
								   		</div>
								   	</div>
								   	<div class="review">
								   		<div class="user-img" style="background-image: url(images/person_2.jpg)"></div>
								   		<div class="desc">
								   			<h4>
								   				<span class="text-left">Jacob Webb</span>
								   				<span class="text-right">25 April 2020</span>
								   			</h4>
								   			<p class="star">
								   				<span>
								   					<i class="fa fa-star"></i>
								   					<i class="fa fa-star"></i>
								   					<i class="fa fa-star"></i>
								   					<i class="fa fa-star"></i>
								   					<i class="fa fa-star"></i>
							   					</span>
							   					<span class="text-right"><a href="#" class="reply"><i class="icon-reply"></i></a></span>
								   			</p>
								   			<p>When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrov</p>
								   		</div>
								   	</div>
								   	<div class="review">
								   		<div class="user-img" style="background-image: url(images/person_3.jpg)"></div>
								   		<div class="desc">
								   			<h4>
								   				<span class="text-left">Jacob Webb</span>
								   				<span class="text-right">25 April 2020</span>
								   			</h4>
								   			<p class="star">
								   				<span>
								   					<i class="fa fa-star"></i>
								   					<i class="fa fa-star"></i>
								   					<i class="fa fa-star"></i>
								   					<i class="fa fa-star"></i>
								   					<i class="fa fa-star"></i>
							   					</span>
							   					<span class="text-right"><a href="#" class="reply"><i class="icon-reply"></i></a></span>
								   			</p>
								   			<p>When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrov</p>
								   		</div>
								   	</div>
						   		</div>
						   		<div class="col-md-4">
						   			<div class="rating-wrap">
							   			<h3 class="mb-4">Give a Review</h3>
							   			<p class="star">
							   				<span>
							   					<i class="fa fa-star"></i>
							   					<i class="fa fa-star"></i>
							   					<i class="fa fa-star"></i>
							   					<i class="fa fa-star"></i>
							   					<i class="fa fa-star"></i>
							   					(98%)
						   					</span>
						   					<span>20 Reviews</span>
							   			</p>
							   			<p class="star">
							   				<span>
							   					<i class="fa fa-star"></i>
							   					<i class="fa fa-star"></i>
							   					<i class="fa fa-star"></i>
							   					<i class="fa fa-star"></i>
							   					<i class="fa fa-star"></i>
							   					(85%)
						   					</span>
						   					<span>10 Reviews</span>
							   			</p>
							   			<p class="star">
							   				<span>
							   					<i class="fa fa-star"></i>
							   					<i class="fa fa-star"></i>
							   					<i class="fa fa-star"></i>
							   					<i class="fa fa-star"></i>
							   					<i class="fa fa-star"></i>
							   					(98%)
						   					</span>
						   					<span>5 Reviews</span>
							   			</p>
							   			<p class="star">
							   				<span>
							   					<i class="fa fa-star"></i>
							   					<i class="fa fa-star"></i>
							   					<i class="fa fa-star"></i>
							   					<i class="fa fa-star"></i>
							   					<i class="fa fa-star"></i>
							   					(98%)
						   					</span>
						   					<span>0 Reviews</span>
							   			</p>
							   			<p class="star">
							   				<span>
							   					<i class="fa fa-star"></i>
							   					<i class="fa fa-star"></i>
							   					<i class="fa fa-star"></i>
							   					<i class="fa fa-star"></i>
							   					<i class="fa fa-star"></i>
							   					(98%)
						   					</span>
						   					<span>0 Reviews</span>
							   			</p>
							   		</div>
						   		</div>
						   	</div>
              </div>
            </div>
          </div>
        </div>
    	</div>
    </section>

	<div class="footM">
	    <jsp:include page="g_Footer.jsp" flush="true" />
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
  <!-- chart.js -->
  <script src="https://cdn.jsdelivr.net/npm/chart.js@3.6.0/dist/chart.min.js"></script>
  <!-- <script src="js/g_radarChart.js"></script> -->
  <script>
	//1) chart를 세팅할 수 있는 canvas 태그 가져오기
	let radarChart = document.getElementById('radarChart')
	//2) chart 생성
	//2-1) 데이터 준비
	//============임의의 데이터를 생성하는 함수를 만들어 봄!================
	function random(){
		return Math.round(Math.random()*100)
	}
	
	function randomData(){
		return [
			random(),
			random(),
			random(),
			random(),
			random()
		]
	}
	//============임의의 데이터를 생성하는 함수를 만들어 봄!================
	let radarCht =  new Chart(radarChart,{
		type : 'radar',
		data : {
			labels : ['탄수화물', '단백질', '지방', '무기질', '비타민'],
		  	datasets: [{
			    label: '마늘종장아찌 볶음밥 영양정보',
			    data: [...randomData()],
			    fill: true,
			    backgroundColor: 'rgba(255, 80, 0, 0.7)',
			    borderColor: 'rgb(255, 80, 0)',
			    pointBackgroundColor: 'rgb(255, 80, 0)',
			    pointBorderColor: '#fff',
			    pointHoverBackgroundColor: '#fff',
			    pointHoverBorderColor: 'rgb(255, 80, 0)'
			  }]
		},
		options : {
			elements : {
				line: {
			        borderWidth: 1
			      }
			}
			
		}
		
		
	})
  
  </script>

  <script>
		$(document).ready(function(){

		var quantitiy=0;
		   $('.quantity-right-plus').click(function(e){
		        
		        // Stop acting like a button
		        e.preventDefault();
		        // Get the field name
		        var quantity = parseInt($('#quantity').val());
		        
		        // If is not undefined
		            
		            $('#quantity').val(quantity + 1);

		          
		            // Increment
		        
		    });

		     $('.quantity-left-minus').click(function(e){
		        // Stop acting like a button
		        e.preventDefault();
		        // Get the field name
		        var quantity = parseInt($('#quantity').val());
		        
		        // If is not undefined
		      
		            // Increment
		            if(quantity>0){
		            $('#quantity').val(quantity - 1);
		            }
		    });
		    
		});
	</script>
    
  </body>
</html>