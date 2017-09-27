<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.mfu.*"%>
<%@ page import="com.mfu.entity.*"%>
<%@ page import="javax.naming.*"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html lang="en">
<!-- start: HEAD -->
<head>
<title></title>
<!-- start: META -->

<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta content="" name="description" />
<meta content="" name="author" />
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
<link href="bower_components/magnific-popup/dist/magnific-popup.css"
	rel="stylesheet" media="screen" />
<link href="assets2/css/styles.css" rel="stylesheet" media="screen">
<link href="assets2/css/plugins.css" rel="stylesheet" media="screen">
<!-- end: MAIN CSS -->

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
						<a href="index.html" class="navbar-brand"> <img
							src="assets2/images/logo.png">
						</a>
						<!-- end: LOGO -->
					</div>
					<!-- start: NAVBAR -->
					<div class="navbar-collapse collapse">
						<ul class="nav navbar-nav navbar-right">
							<li><a href="Home.html">หน้าแรก</a></li>
							<li><a href="Register.html">สมัครสมาชิก</a></li>
							<li class="active"><a href="LoginStd.jsp">เข้าสู่ระบบ</a></li>

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
								</aside>
							</div>
							<div class="col-md-9">
								<div class="blog-posts">
									<article>
										<div class="row">

											<div class="col-md-12">
												<div class="post-content">
													<h3>เข้าสู่ระบบ</h3>


												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-md-6">
												<!-- start: LOGIN BOX -->
												<div class="box-login">
													<form class="form-login" action="checkLogin.jsp">
														<fieldset>
															<legend> เข้าสู่ระบบเพื่อใช้งาน </legend>

															<div class="form-group">
																<span class="input-icon"> <input type="email"
																	class="form-control" name="username" id="username"
																	placeholder="ชื่อผู้ใช้"> <i class="fa fa-user"></i>
																</span>
															</div>
															<div class="form-group form-actions">
																<span class="input-icon"> <input type="password"
																	class="form-control password" name="password"
																	id="password" placeholder="รหัสผ่านผู้ใช้"> <i
																	class="fa fa-lock"></i>
																</span>
															</div>
															<div class="form-actions">
																<hr>
																<button type="submit" class="btn btn-primary pull-right">
																	Login <i class="fa fa-arrow-circle-right"></i>
																</button>
															</div>
															<div class="new-account">

																<a href="newRegisterMember.do">
																	สร้างบัญชีเพื่อใช้งาน</a>

															</div>
														</fieldset>
													</form>

												</div>
												<!-- end: LOGIN BOX -->
											</div>
										</div>
										<!-- end: LOGIN -->
									</article>


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
