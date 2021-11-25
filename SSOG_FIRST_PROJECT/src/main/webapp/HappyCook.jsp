<%@page import="model_board.BoardVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model_board.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <link rel="shortcut icon" href="img/favicon.ico">
    <title>해피Cook</title>
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
    #bdrd{
    border-radius: 100px;
    }
    
    .md{
    margin-right: 1rem !important; }
    
    .mb-4.md{
    margin-bottom: 0rem !important; }
    #pdbtWhy{
    padding-bottom: 7.5rem !important; }
    
    </style>
  </head>
  <body>
<%
	BoardDAO dao = new BoardDAO();
	ArrayList<BoardVO> b_list = dao.showBoard("HappyCook");

%>
  	<div> 
  		<jsp:include page="g_Header.jsp"></jsp:include>
  	 </div>
    <!-- END nav -->
    
    <section class="hero-wrap hero-wrap-2" style="background-image: url('images/bg_2.jpg');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text align-items-end justify-content-center">
          <div class="col-md-9 ftco-animate mb-5 text-center">
          	<p class="breadcrumbs mb-0"><span class="mr-2"><a href="index.jsp">Home <i class="fa fa-chevron-right"></i></a></span> <span>커뮤니티 <i class="fa fa-chevron-right"></i></span><span>해피COOK</span></p>
            <h2 class="mb-0 bread">해피COOK</h2>
          </div>
        </div>
      </div>
    </section>

    <section class="ftco-section">
      <div class="container">
        <div class="row d-flex">
          <% for(int i = 0; i < b_list.size(); i++) {%>
          <div class="col-lg-6 d-flex align-items-stretch ftco-animate" style="padding-left: 0px;">
          	<div class="blog-entry d-md-flex">
          		<a href="HappyCook2.jsp?num=<%=b_list.get(i).getNum() %>" class="block-20 img" style="background-image: url('fileUpload/<%=b_list.get(i).getFileName()%>');">
              </a>
              <div class="text p-4 bg-light" id="pdbtWhy">
              	<div class="meta">
              		<p><span class="fa fa-calendar"></span><%=b_list.get(i).getB_day() %></p>
              	</div>
                <h3 class="heading mb-3"><a href="HappyCook2.jsp?num=<%=b_list.get(i).getNum() %>"><%=b_list.get(i).getTitle() %> </a></h3>
               
            <div class="about-author d-flex p-4 bg-light" id="specialWhy">
              <div class="bio mr-5 md" style="height: 50px;width: 50px;">
                <img src="images/person_1.jpg" style="width: 50px;" alt="Image placeholder" class="img-fluid mb-4 md" id="bdrd">
              </div>
              <div class="desc" style="display: flex; align-items: center; justify-content: center;">
                <h3 id="gogi" style="margin-bottom: 0px;"><%=b_list.get(i).getWriter() %></h3>
              </div>
            </div>
                <p></p>
                <a href="#" class="btn-custom">Continue <span class="fa fa-long-arrow-right"></span></a>

              </div>
            </div>
          </div><% }%>
          <!-- <% for(int i = 1; i < 7; i++) {%>
          <div class="col-lg-6 d-flex align-items-stretch ftco-animate" style="padding-left: 0px;">
          	<div class="blog-entry d-md-flex">
          		<a href="HappyCook2.jsp" class="block-20 img" style="background-image: url('images/image_<%=i %>.jpg');">
              </a>
              <div class="text p-4 bg-light" id="pdbtWhy">
              	<div class="meta">
              		<p><span class="fa fa-calendar"></span> 2021-11-20 8:16pm </p>
              	</div>
                <h3 class="heading mb-3"><a href="#"> 팬프라잉 스테이크 </a></h3>
               
            <div class="about-author d-flex p-4 bg-light" id="specialWhy">
              <div class="bio mr-5 md" style="height: 50px;width: 50px;">
                <img src="images/person_1.jpg" style="width: 50px;" alt="Image placeholder" class="img-fluid mb-4 md" id="bdrd">
              </div>
              <div class="desc" style="display: flex; align-items: center; justify-content: center;">
                <h3 id="gogi" style="margin-bottom: 0px;">고기식신이</h3>
              </div>
            </div>
                <p></p>
                <a href="#" class="btn-custom">Continue <span class="fa fa-long-arrow-right"></span></a>

              </div>
            </div>
          </div><% }%> -->
          <!-- <div class="col-lg-6 d-flex align-items-stretch ftco-animate" style="padding-left: 0px;">
          	<div class="blog-entry d-md-flex">
          		<a href="HappyCook2.html" class="block-20 img" style="background-image: url('images/image_2.jpg');">
              </a>
               <div class="text p-4 bg-light" id="pdbtWhy">
              	<div class="meta">
              		<p><span class="fa fa-calendar"></span> 2021-11-20 8:16pm </p>
              	</div>
                <h3 class="heading mb-3"><a href="#"> 팬프라잉 스테이크 </a></h3>
               
            <div class="about-author d-flex p-4 bg-light" id="specialWhy">
              <div class="bio mr-5 md" style="height: 50px;width: 50px;">
                <img src="images/person_1.jpg" style="width: 50px;" alt="Image placeholder" class="img-fluid mb-4 md" id="bdrd">
              </div>
              <div class="desc" style="display: flex; align-items: center; justify-content: center;">
                <h3 id="gogi" style="margin-bottom: 0px;">고기식신이</h3>
              </div>
            </div>
                <p></p>
                <a href="#" class="btn-custom">Continue <span class="fa fa-long-arrow-right"></span></a>

              </div>
            </div>
          </div>
          <div class="col-lg-6 d-flex align-items-stretch ftco-animate" id="specialWhy">
          	<div class="blog-entry d-md-flex">
          		<a href="blog-single.html" class="block-20 img" style="background-image: url('images/image_3.jpg');">
              </a>
              <div class="text p-4 bg-light" id="pdbtWhy">
              	<div class="meta">
              		<p><span class="fa fa-calendar"></span> 2021-11-20 8:16pm </p>
              	</div>
                <h3 class="heading mb-3"><a href="#"> 팬프라잉 스테이크 </a></h3>
               
            <div class="about-author d-flex p-4 bg-light" id="specialWhy">
              <div class="bio mr-5 md" style="height: 50px;width: 50px;">
                <img src="images/person_1.jpg" style="width: 50px;" alt="Image placeholder" class="img-fluid mb-4 md" id="bdrd">
              </div>
              <div class="desc" style="display: flex; align-items: center; justify-content: center;">
                <h3 id="gogi" style="margin-bottom: 0px;">고기식신이</h3>
              </div>
            </div>
                <p></p>
                <a href="#" class="btn-custom">Continue <span class="fa fa-long-arrow-right"></span></a>

              </div>
            </div>
          </div>
          <div class="col-lg-6 d-flex align-items-stretch ftco-animate" id="specialWhy">
          	<div class="blog-entry d-md-flex">
          		<a href="blog-single.html" class="block-20 img" style="background-image: url('images/image_4.jpg');">
              </a>
              <div class="text p-4 bg-light" id="pdbtWhy">
              	<div class="meta">
              		<p><span class="fa fa-calendar"></span> 2021-11-20 8:16pm </p>
              	</div>
                <h3 class="heading mb-3"><a href="#"> 팬프라잉 스테이크 </a></h3>
               
            <div class="about-author d-flex p-4 bg-light" id="specialWhy">
              <div class="bio mr-5 md" style="height: 50px;width: 50px;">
                <img src="images/person_1.jpg" style="width: 50px;" alt="Image placeholder" class="img-fluid mb-4 md" id="bdrd">
              </div>
              <div class="desc" style="display: flex; align-items: center; justify-content: center;">
                <h3 id="gogi" style="margin-bottom: 0px;">고기식신이</h3>
              </div>
            </div>
                <p></p>
                <a href="#" class="btn-custom">Continue <span class="fa fa-long-arrow-right"></span></a>

              </div>
            </div>
          </div>
          <div class="col-lg-6 d-flex align-items-stretch ftco-animate" id="specialWhy">
          	<div class="blog-entry d-md-flex">
          		<a href="blog-single.html" class="block-20 img" style="background-image: url('images/image_5.jpg');">
              </a>
              <div class="text p-4 bg-light" id="pdbtWhy">
              	<div class="meta">
              		<p><span class="fa fa-calendar"></span> 2021-11-20 8:16pm </p>
              	</div>
                <h3 class="heading mb-3"><a href="#"> 팬프라잉 스테이크 </a></h3>
               
            <div class="about-author d-flex p-4 bg-light" id="specialWhy">
              <div class="bio mr-5 md" style="height: 50px;width: 50px;">
                <img src="images/person_1.jpg" style="width: 50px;" alt="Image placeholder" class="img-fluid mb-4 md" id="bdrd">
              </div>
              <div class="desc" style="display: flex; align-items: center; justify-content: center;">
                <h3 id="gogi" style="margin-bottom: 0px;">고기식신이</h3>
              </div>
            </div>
                <p></p>
                <a href="#" class="btn-custom">Continue <span class="fa fa-long-arrow-right"></span></a>

              </div>
            </div>
          </div>
          <div class="col-lg-6 d-flex align-items-stretch ftco-animate" id="specialWhy">
          	<div class="blog-entry d-md-flex">
          		<a href="blog-single.html" class="block-20 img" style="background-image: url('images/image_6.jpg');">
              </a>
             <div class="text p-4 bg-light" id="pdbtWhy">
              	<div class="meta">
              		<p><span class="fa fa-calendar"></span> 2021-11-20 8:16pm </p>
              	</div>
                <h3 class="heading mb-3"><a href="#"> 팬프라잉 스테이크 </a></h3>
               
            <div class="about-author d-flex p-4 bg-light" id="specialWhy">
              <div class="bio mr-5 md" style="height: 50px;width: 50px;">
                <img src="images/person_1.jpg" style="width: 50px;" alt="Image placeholder" class="img-fluid mb-4 md" id="bdrd">
              </div>
              <div class="desc" style="display: flex; align-items: center; justify-content: center;">
                <h3 id="gogi" style="margin-bottom: 0px;">고기식신이</h3>
              </div>
            </div>
                <p></p>
                <a href="#" class="btn-custom">Continue <span class="fa fa-long-arrow-right"></span></a>

              </div>
            </div>
          </div> -->
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
    </section>	

  	<div> 
  		<jsp:include page="g_Footer.jsp"></jsp:include>
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
    
  </body>
</html>