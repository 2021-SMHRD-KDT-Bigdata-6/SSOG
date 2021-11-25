<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Dashboard - SB Admin</title>
<link
	href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css"
	rel="stylesheet" />
<link href="css/styles3.css" rel="stylesheet" />
<!-- <script
	src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js"
	crossorigin="anonymous"></script> -->





<link
	href="https://fonts.googleapis.com/css2?family=Spectral:ital,wght@0,200;0,300;0,400;0,500;0,700;0,800;1,200;1,300;1,400;1,500;1,700&display=swap"
	rel="stylesheet">

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="css/animate.css">
<link rel="stylesheet" href="css/owl.carousel.min.css">
<link rel="stylesheet" href="css/owl.theme.default.min.css">
<link rel="stylesheet" href="css/magnific-popup.css">
<link rel="stylesheet" href="css/flaticon.css">
<link rel="stylesheet" href="css/style.css">
<style>
.cate {
	display: inline-block;
	padding-left: 50px;
}

.cate>li {
	width: 60px;
	height: 40px;
	background-color: #b7472a;
	list-style: none;
	text-align: center;
	color: white;
	display: flex;
	align-items: center;
	justify-content: center;
	float: left;
	border-radius: 5px;
	font-size: 12px;
	margin-right: 15px;
}

.card {
	border: 0px;
}

#container {
	padding-top: 96px;
	padding-bottom: 96px;
}
</style>

</head>



<!-- Navbar Brand-->

<!-- Sidebar Toggle-->

<!-- Navbar Search-->

<!-- Navbar-->
<body>
<div>
	<jsp:include page="g_Header.jsp"></jsp:include>
</div>
	<section class="hero-wrap hero-wrap-2"
		style="background-image: url('images/bg_2.jpg');"
		data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="container">
			<div
				class="row no-gutters slider-text align-items-end justify-content-center">
				<div class="col-md-9 ftco-animate mb-5 text-center">
					<p class="breadcrumbs mb-0">
						<span class="mr-2"><a href="index.jsp">Home <i
								class="fa fa-chevron-right"></i></a></span> <span>물가 정보 <i
							class="fa fa-chevron-right"></i></span>
					</p>
					<h2 class="mb-0 bread">물가 정보</h2>
				</div>
			</div>
		</div>
	</section>
	<div class="container">
		<div id="layoutSidenav">

			<div id="layoutSidenav_content">
				<main>
					<div class="container-fluid px-4" id="container">
						<h1 class="mt-4" align="center"></h1>



						<div>
							<ul class="cate">
								<li id="meet">육류</li>
								<li>생선류</li>
								<li>곡류</li>
								<li>야채류</li>
								<li>과일류</li>
								<li></li>
								<li></li>
								<li></li>
								<li></li>
								<li></li>
								<li></li>
								<li></li>
								<li></li>

							</ul>











						</div>




						<div class="row">
							<div class="col-xl-6">
								<div class="card mb-4">
									<div class="card-header">
										<i class="fas fa-chart-area me-1"></i> 이달의 물가
									</div>
									<div class="card-body">
										<canvas id="myAreaChart" width="100%" height="40"></canvas>
									</div>
								</div>
							</div>
							<div class="col-xl-6">
								<div class="card mb-4">
									<div class="card-header">
										<i class="fas fa-chart-bar me-1"></i> 월별 물가
									</div>
									<div class="card-body">
										<canvas id="myBarChart" width="100%" height="40"></canvas>
									</div>
								</div>
							</div>
						</div>
						<div class="card mb-4">
							<div class="card-header">
								<i class="fas fa-table me-1"></i> DataTable Example
							</div>
							<div class="card-body">
								<table id="datatablesSimple">
									<thead>
										<tr>
											<th style="width: 25%;">품목</th>
											<!--<th>분류</th>-->
											<th style="width: 25%;">지역</th>
											<th style="width: 25%;">오눌날짜</th>
											<th style="width: 25%;">가격</th>
										</tr>
									</thead>
									<tfoot>
										<tr>
											<th>Name</th>
											<th>Office</th>
											<th>Start date</th>
											<th>Salary</th>
										</tr>
									</tfoot>
									<tbody>
										<tr>
											<td>쌀</td>
											<td>고흥</td>
											<td>2021/11/26</td>
											<td>54800원</td>
										</tr>
										<tr>
											<td>팥/붉은 팥(국산)</td>
											<td>영광</td>
											<td>2021/11/26</td>
											<td>8797원</td>
										</tr>
										<tr>
											<td>배추/가을</td>
											<td>해남</td>
											<td>2021/11/26</td>
											<td>4048원</td>
										</tr>
										<tr>
											<td>갓/갓</td>
											<td>여수</td>
											<td>2021/11/26</td>
											<td>3799원</td>
										</tr>
										<tr>
											<td>오이/취청</td>
											<td>광주</td>
											<td>2021/11/26</td>
											<td>16622원</td>
										</tr>
										<tr>
											<td>호박/애호박</td>
											<td>전주</td>
											<td>2021/11/26</td>
											<td>1737원</td>
										</tr>
										<tr>
											<td>쌀</td>
											<td>고흥</td>
											<td>2021/11/26</td>
											<td>54800원</td>
										</tr>
										<tr>
											<td>팥/붉은 팥(국산)</td>
											<td>영광</td>
											<td>2021/11/26</td>
											<td>8797원</td>
										</tr>
										<tr>
											<td>배추/가을</td>
											<td>해남</td>
											<td>2021/11/26</td>
											<td>4048원</td>
										</tr>
										<tr>
											<td>갓/갓</td>
											<td>여수</td>
											<td>2021/11/26</td>
											<td>3799원</td>
										</tr>
										<tr>
											<td>오이/취청</td>
											<td>광주</td>
											<td>2021/11/26</td>
											<td>16622원</td>
										</tr>
										<tr>
											<td>호박/애호박</td>
											<td>전주</td>
											<td>2021/11/26</td>
											<td>1737원</td>
										</tr>
										<tr>
											<td>Charde Marshall</td>
											<td>San Francisco</td>
											<td>2008/10/16</td>
											<td>$470,600</td>
										</tr>
										<tr>
											<td>Haley Kennedy</td>
											<td>London</td>
											<td>2012/12/18</td>
											<td>$313,500</td>
										</tr>
										<tr>
											<td>Tatyana Fitzpatrick</td>
											<td>London</td>
											<td>2010/03/17</td>
											<td>$385,750</td>
										</tr>
										<tr>
											<td>Michael Silva</td>
											<td>London</td>
											<td>2012/11/27</td>
											<td>$198,500</td>
										</tr>
										<tr>
											<td>Paul Byrd</td>
											<td>New York</td>
											<td>2010/06/09</td>
											<td>$725,000</td>
										</tr>
										<tr>
											<td>Gloria Little</td>
											<td>New York</td>
											<td>2009/04/10</td>
											<td>$237,500</td>
										</tr>
										<tr>
											<td>Bradley Greer</td>
											<td>London</td>
											<td>2012/10/13</td>
											<td>$132,000</td>
										</tr>
										<tr>
											<td>Dai Rios</td>
											<td>Edinburgh</td>
											<td>2012/09/26</td>
											<td>$217,500</td>
										</tr>
										<tr>
											<td>Jenette Caldwell</td>
											<td>New York</td>
											<td>2011/09/03</td>
											<td>$345,000</td>
										</tr>
										<tr>
											<td>Yuri Berry</td>
											<td>New York</td>
											<td>2009/06/25</td>
											<td>$675,000</td>
										</tr>
										<tr>
											<td>Caesar Vance</td>
											<td>New York</td>
											<td>2011/12/12</td>
											<td>$106,450</td>
										</tr>
										<tr>
											<td>Doris Wilder</td>
											<td>Sidney</td>
											<td>2010/09/20</td>
											<td>$85,600</td>
										</tr>
										<tr>
											<td>Angelica Ramos</td>
											<td>London</td>
											<td>2009/10/09</td>
											<td>$1,200,000</td>
										</tr>
										<tr>
											<td>Gavin Joyce</td>
											<td>Edinburgh</td>
											<td>2010/12/22</td>
											<td>$92,575</td>
										</tr>
										<tr>
											<td>Jennifer Chang</td>
											<td>Singapore</td>
											<td>2010/11/14</td>
											<td>$357,650</td>
										</tr>
										<tr>
											<td>Brenden Wagner</td>
											<td>San Francisco</td>
											<td>2011/06/07</td>
											<td>$206,850</td>
										</tr>
										<tr>
											<td>Fiona Green</td>
											<td>San Francisco</td>
											<td>2010/03/11</td>
											<td>$850,000</td>
										</tr>
										<tr>
											<td>Shou Itou</td>
											<td>Tokyo</td>
											<td>2011/08/14</td>
											<td>$163,000</td>
										</tr>
										<tr>
											<td>Michelle House</td>
											<td>Sidney</td>
											<td>2011/06/02</td>
											<td>$95,400</td>
										</tr>
										<tr>
											<td>Suki Burks</td>
											<td>London</td>
											<td>2009/10/22</td>
											<td>$114,500</td>
										</tr>
										<tr>
											<td>Prescott Bartlett</td>
											<td>London</td>
											<td>2011/05/07</td>
											<td>$145,000</td>
										</tr>
										<tr>
											<td>Gavin Cortez</td>
											<td>San Francisco</td>
											<td>2008/10/26</td>
											<td>$235,500</td>
										</tr>
										<tr>
											<td>Martena Mccray</td>
											<td>Edinburgh</td>
											<td>2011/03/09</td>
											<td>$324,050</td>
										</tr>
										<tr>
											<td>Unity Butler</td>
											<td>San Francisco</td>
											<td>2009/12/09</td>
											<td>$85,675</td>
										</tr>
										<tr>
											<td>Howard Hatfield</td>
											<td>San Francisco</td>
											<td>2008/12/16</td>
											<td>$164,500</td>
										</tr>
										<tr>
											<td>Hope Fuentes</td>
											<td>San Francisco</td>
											<td>2010/02/12</td>
											<td>$109,850</td>
										</tr>
										<tr>
											<td>Vivian Harrell</td>
											<td>San Francisco</td>
											<td>2009/02/14</td>
											<td>$452,500</td>
										</tr>
										<tr>
											<td>Timothy Mooney</td>
											<td>London</td>
											<td>2008/12/11</td>
											<td>$136,200</td>
										</tr>
										<tr>
											<td>Jackson Bradshaw</td>
											<td>New York</td>
											<td>2008/09/26</td>
											<td>$645,750</td>
										</tr>
										<tr>
											<td>Olivia Liang</td>
											<td>Singapore</td>
											<td>2011/02/03</td>
											<td>$234,500</td>
										</tr>
										<tr>
											<td>Bruno Nash</td>
											<td>London</td>
											<td>2011/05/03</td>
											<td>$163,500</td>
										</tr>
										<tr>
											<td>Sakura Yamamoto</td>
											<td>Tokyo</td>
											<td>2009/08/19</td>
											<td>$139,575</td>
										</tr>
										<tr>
											<td>Thor Walton</td>
											<td>New York</td>
											<td>2013/08/11</td>
											<td>$98,540</td>
										</tr>
										<tr>
											<td>Finn Camacho</td>
											<td>San Francisco</td>
											<td>2009/07/07</td>
											<td>$87,500</td>
										</tr>
										<tr>
											<td>Serge Baldwin</td>
											<td>Singapore</td>
											<td>2012/04/09</td>
											<td>$138,575</td>
										</tr>
										<tr>
											<td>Zenaida Frank</td>
											<td>New York</td>
											<td>2010/01/04</td>
											<td>$125,250</td>
										</tr>
										<tr>
											<td>Zorita Serrano</td>
											<td>San Francisco</td>
											<td>2012/06/01</td>
											<td>$115,000</td>
										</tr>
										<tr>
											<td>Jennifer Acosta</td>
											<td>Edinburgh</td>
											<td>2013/02/01</td>
											<td>$75,650</td>
										</tr>
										<tr>
											<td>Cara Stevens</td>
											<td>New York</td>
											<td>2011/12/06</td>
											<td>$145,600</td>
										</tr>
										<tr>
											<td>Hermione Butler</td>
											<td>London</td>
											<td>2011/03/21</td>
											<td>$356,250</td>
										</tr>
										<tr>
											<td>Lael Greer</td>
											<td>London</td>
											<td>2009/02/27</td>
											<td>$103,500</td>
										</tr>
										<tr>
											<td>Jonas Alexander</td>
											<td>San Francisco</td>
											<td>2010/07/14</td>
											<td>$86,500</td>
										</tr>
										<tr>
											<td>Shad Decker</td>
											<td>Edinburgh</td>
											<td>2008/11/13</td>
											<td>$183,000</td>
										</tr>
										<tr>
											<td>Michael Bruce</td>
											<td>Singapore</td>
											<td>2011/06/27</td>
											<td>$183,000</td>
										</tr>
										<tr>
											<td>Donna Snider</td>
											<td>New York</td>
											<td>2011/01/25</td>
											<td>$112,000</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</main>

			</div>
		</div>
	</div>

	<div>
		<jsp:include page="g_Footer.jsp" flush="true"></jsp:include>
	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		crossorigin="anonymous"></script>
	<script src="js/scripts.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"
		crossorigin="anonymous"></script>
	<script src="assets/demo/chart-area-demo.js"></script>
	<script src="assets/demo/chart-bar-demo.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest"
		crossorigin="anonymous"></script>
	<script src="js/datatables-simple-demo.js"></script>
	<script src="js/snow.js"></script>


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
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
	<script src="js/google-map.js"></script>
	<script src="js/main.js"></script>


	<script type="text/javascript">
(function ()
      {
          function k(a, b, c)
          {
              if (a.addEventListener) {
                  a.addEventListener(b, c, false);
              }
              else {
                  a.attachEvent && a.attachEvent("on" + b, c);
              }
          }
          function g(a)
          {
              if (typeof window.onload != "function")
              {
                  window.onload = a;
              }
              else {
                  var b = window.onload;
                  window.onload = function ()
                  {
                      b();
                      a()
                  }
              }
          }
          function h()
          {
              var a = {};
              for (type in {
                  Top : "", Left : ""
              })
              {
                  var b = type == "Top" ? "Y" : "X";
                  if (typeof window["page" + b + "Offset"] != "undefined") {
                      a[type.toLowerCase()] = window["page" + b + "Offset"];
                  }
                  else
                  {
                      b = document.documentElement.clientHeight ? document.documentElement : document.body;
                      a[type.toLowerCase()] = b["scroll" + type];
                  }
              }
              return a
          }
          function l()
          {
              var a = document.body, b;
              if (window.innerHeight) {
                  b = window.innerHeight;
              }
              else if (a.parentElement.clientHeight) {
                  b = a.parentElement.clientHeight;
              }
              else if (a && a.clientHeight) {
                  b = a.clientHeight;
              }
              return b
          }
          function i(a)
          {
              this.parent = document.body;
              this.createEl(this.parent, a);
              this.size = Math.random() * 5 + 5;
              this.el.style.width = Math.round(this.size) + "px";
              this.el.style.height = Math.round(this.size) + "px";
              this.maxLeft = document.body.offsetWidth - this.size;
              this.maxTop = document.body.offsetHeight - this.size;
              this.left = Math.random() * this.maxLeft;
              this.top = h().top + 1;
              this.angle = 1.4 + 0.2 * Math.random();
              this.minAngle = 1.4;
              this.maxAngle = 1.6;
              this.angleDelta = 0.01 * Math.random();
              this.speed = 2 + Math.random()
          }
          var j = false;
          g(function ()
          {
              j = true;
          });
          var f = true;
          window.createSnow = function (a, b)
          {
              if (j)
              {
                  var c = [], m = setInterval(function ()
                  {
                      f && b > c.length && Math.random() < b * 0.0025 && c.push(new i(a));
                      !f && !c.length && clearInterval(m);
                      for (var e = h().top, n = l(), d = c.length - 1; d >= 0; d--) if (c[d]) if (c[d].top < e || c[d].top + c[d].size + 1 > e + n) {
                          c[d].remove();
                          c[d] = null;
                          c.splice(d, 1)
                      }
                      else {
                          c[d].move();
                          c[d].draw()
                      }
                  }, 40);
                  k(window, "scroll", function ()
                  {
                      for (var e = c.length - 1; e >= 0; e--) {
                          c[e].draw();
                      }
                  })
              }
              else {
                  g(function () 
                  {
                      createSnow(a, b) 
                  });
              }
          };
          window.removeSnow = function ()
          {
              f = false;
          };
          i.prototype = 
          {
              createEl : function (a, b)
              {
                  this.el = document.createElement("img");
                  this.el.setAttribute("src", b + "snow" + Math.floor(Math.random() * 4) + ".gif");
                  this.el.style.position = "absolute";
                  this.el.style.display = "block";
                  this.el.style.zIndex = "99999";
                  this.parent.appendChild(this.el)
              },
              move : function ()
              {
                  if (this.angle < this.minAngle || this.angle > this.maxAngle) {
                      this.angleDelta =- this.angleDelta;
                  }
                  this.angle += this.angleDelta;
                  this.left += this.speed * Math.cos(this.angle * Math.PI);
                  this.top -= this.speed * Math.sin(this.angle * Math.PI);
                  if (this.left < 0) {
                      this.left = this.maxLeft;
                  }
                  else if (this.left > this.maxLeft) {
                      this.left = 0;
                  }
              },
              draw : function ()
              {
                  this.el.style.top = Math.round(this.top) + "px";
                  this.el.style.left = Math.round(this.left) + "px";
              },
              remove : function ()
              {
                  this.parent.removeChild(this.el);
                  this.parent = this.el = null;
              }
          }
      })();
</script>
	<script>
      //------------ ./는 이미지 경로, 1000는 눈 갯수(크면 클수록 폭설이 내립니다.)
    createSnow('', 1000);
</script>

     <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-
="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


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
    