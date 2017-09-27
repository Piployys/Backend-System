<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.mfu.*"%>
<%@ page import="com.mfu.entity.*"%>
<%@ page import="javax.naming.*"%>
<%@ page import="java.util.*"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<!-- start: HEAD -->
<head>
<title></title>
<!-- start: META -->
<!--[if IE]><meta http-equiv='X-UA-Compatible' content="IE=edge,IE=9,IE=8,chrome=1" /><![endif]-->
<meta http-equiv=Content-Type content="text/html; charset=utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">

<!-- end: META -->
<!-- start: MAIN CSS -->
<link href="bower_components/bootstrap/dist/css/bootstrap.min.css"
	rel="stylesheet" media="screen">
<link href="bower_components/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" media="screen">
<link href="bower_components/themify-icons/themify-icons.css"
	rel="stylesheet" media="screen">
<link href="bower_components/animate.css/animate.min.css"
	rel="stylesheet" media="screen">
<link href="bower_components/slick.js/slick/slick.css" rel="stylesheet"
	media="screen" />
<link href="bower_components/slick.js/slick/slick-theme.css"
	rel="stylesheet" media="screen" />
<link href="bower_components/swiper/dist/css/swiper.min.css"
	rel="stylesheet" media="screen" />
<link href="assets2/css/styles.css" rel="stylesheet" media="screen">
<link href="assets2/css/plugins.css" rel="stylesheet" media="screen">
<!-- end: MAIN CSS -->
<!-- start: FAVICON -->
<link rel="shortcut icon" href="favicon.ico" />
<!-- end: FAVICON -->
</head>
<!-- end: HEAD -->
<body>
	<div id="app">
		<!-- start: HEADER -->
		<header>
		<div class="navbar navbar-default" role="navigation">
			<!-- start: TOP NAVIGATION CONTAINER -->
			<div class="container">
				<div class="navbar-header">

					<!-- start: LOGO -->
					<a href="#" class="navbar-brand"> <img
						src="assets2/images/logo.png">
					</a>
					<!-- end: LOGO -->

				</div>
				<!-- start: NAVBAR -->
				<div class="navbar-collapse collapse">
					<ul class="nav navbar-nav navbar-right">
						<li class="active"><a href="listAnc.do"> หน้าแรก </a></li>
						<li><a href="LoginStd.jsp">เข้าสู่ระบบ</a></li>

					</ul>
						</div>
				<!-- end: NAVBAR -->
			</div>
			<!-- end: TOP NAVIGATION CONTAINER -->

		</div>
		</header>
		<!-- end: HEADER -->
		<!-- start: APP CONTENT -->
		<div class="app-content">
			<div class="main-content">

				<section class="container-fluid container-fullw bg-white">
				<div class="container">
					<div class="row">
						<div class="col-md-3">
							<aside class="sidebar">

							<ul class="nav nav-list blog-categories">
								<li><a href="Home.html">ประกาศทุนการศึกษา</a></li>
								<li><a href="#">ประกาศรายชื่อผู้มีสิทธิ์สัมภาษณ์</a></li>
								<li><a href="#">ประกาศรายชื่อผู้มีสิทธิ์ได้ทุน</a></li>
							</ul>

							<hr>

							</aside>
						</div>
						<div class="col-md-9">
							<div class="blog-posts">
								<article> <c:forEach items="${ancList}"
									var="ancSchInfo">
									<div class="row">

										<div class="col-md-12">
											<div class="post-content">

												<h2>รับสมัครทุนการศึกษามหาวิทยาลัยแม่ฟ้าหลวงประจำปีการศึกษา
													${ancSchInfo.announceSchInfo_Year} -
													${ancSchInfo.announceSchInfo_Semester}</h2>
												<p class="text-dark">${ancSchInfo.announceSchInfo_Name}
													ของ ${ancSchInfo.announceSchInfo_Company} จำนวนเงิน
													${ancSchInfo.announceSchInfo_Amount}</p>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-md-12">
											<div class="post-meta text-light">
												<span><i class="fa fa-calendar"></i>${ancSchInfo.announceSchInfo_DatePost}
												</span> <span><i class="fa fa-user"></i> By <a href="#">
														Officer </a> </span> <a
													href="listDetail.jsp?id=${ancSchInfo.announceSchInfo_Id}"
													class="btn btn-primary btn-wide btn-scroll btn-scroll-top fa-arrow-right pull-right"
													data-caption-class="fadeIn" data-caption-delay="900">
													<span>อ่านเพิ่มเติม</span>
												</a>
											</div>
										</div>
									</div>
									<hr>
								</c:forEach> </article>
								<hr>


							</div>
						</div>
					</div>
				</div>
				</section>
			</div>
			<!-- start: FOOTER -->
			<footer>
			<div class="footer-copyright">
				<div class="container">
					<div class="row">
						<div class="col-md-8">
							<p>
								&copy; Copyright <span class="current-year"></span> Division of
								Student Development Affairs
							</p>
						</div>

					</div>
				</div>
			</div>
			</footer>
			<a id="scroll-top" href="#"><i class="fa fa-angle-up"></i></a>
			<!-- end: FOOTER -->
		</div>
		<!-- end: APP CONTENT -->
	</div>
	<!-- start: MAIN JAVASCRIPTS -->
	<script src="bower_components/jquery/dist/jquery.min.js"></script>
	<script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
	<script
		src="bower_components/bootstrap-hover-dropdown/bootstrap-hover-dropdown.min.js"></script>
	<script src="bower_components/sticky-kit/jquery.sticky-kit.min.js"></script>
	<script src="bower_components/jquery.appear.js/jquery.appear.js"></script>
	<script src="bower_components/slick.js/slick/slick.min.js"></script>
	<script src="bower_components/swiper/dist/js/swiper.jquery.min.js"></script>
	<script src="bower_components/jquery.stellar/jquery.stellar.min.js"></script>
	<script src="bower_components/countto/jquery.countTo.js"></script>
	<script
		src="bower_components/magnific-popup/dist/jquery.magnific-popup.min.js"></script>
	<script src="assets2/js/main.js"></script>
	<!-- end: MAIN JAVASCRIPTS -->
	<!-- start: JAVASCRIPTS REQUIRED FOR THIS PAGE ONLY -->
	<script src="assets2/js/blog.js"></script>
	<!-- end: JAVASCRIPTS REQUIRED FOR THIS PAGE ONLY -->

	<script>
		jQuery(document).ready(function() {
			Main.init();
			Blog.init();
		});
	</script>
</body>
</html>
