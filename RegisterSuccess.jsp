<%@ page
	language="java"
	contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
%>

<%@ taglib
	prefix="c"
	uri="http://java.sun.com/jsp/jstl/core"
%>
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
<meta
	name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0"
>
<meta
	name="apple-mobile-web-app-capable"
	content="yes"
>
<meta
	name="apple-mobile-web-app-status-bar-style"
	content="black"
>
<meta
	content=""
	name="description"
/>
<meta
	content=""
	name="author"
/>
<!-- end: META -->
<!-- start: MAIN CSS -->
<link
	href="bower_components/bootstrap/dist/css/bootstrap.min.css"
	rel="stylesheet"
	media="screen"
>
<link
	href="bower_components/font-awesome/css/font-awesome.min.css"
	rel="stylesheet"
	media="screen"
>
<link
	href="bower_components/themify-icons/themify-icons.css"
	rel="stylesheet"
	media="screen"
>
<link
	href="bower_components/animate.css/animate.min.css"
	rel="stylesheet"
	media="screen"
>
<link
	href="bower_components/slick.js/slick/slick.css"
	rel="stylesheet"
	media="screen"
/>
<link
	href="bower_components/slick.js/slick/slick-theme.css"
	rel="stylesheet"
	media="screen"
/>
<link
	href="bower_components/swiper/dist/css/swiper.min.css"
	rel="stylesheet"
	media="screen"
/>
<link
	href="assets2/css/styles.css"
	rel="stylesheet"
	media="screen"
>
<link
	href="assets2/css/plugins.css"
	rel="stylesheet"
	media="screen"
>
<!-- end: MAIN CSS -->
<!-- start: FAVICON -->
<link
	rel="shortcut icon"
	href="favicon.ico"
/>
<!-- end: FAVICON -->
</head>
<!-- end: HEAD -->
<body>
	<div id="app">
		<!-- start: HEADER -->
		<header>
			<div
				class="navbar navbar-default"
				role="navigation"
			>
				<!-- start: TOP NAVIGATION CONTAINER -->
				<div class="container">
					<div class="navbar-header">
						<!-- start: RESPONSIVE MENU TOGGLER -->
						<a
							class="pull-left menu-toggler hidden-md hidden-lg mobile-button"
							id="menu-toggler"
							data-toggle="collapse"
							href=".navbar-collapse"
						> <span class="sr-only">Toggle navigation</span> <i
							class="ti-align-justify"
						></i>
						</a>
						<!-- end: RESPONSIVE MENU TOGGLER -->
						<!-- start: RESPONSIVE MENU SEARCH -->
						<a
							class="pull-right hidden-md hidden-lg margin-right-20 mobile-button mobile-menu-search"
							href="#"
						> <span class="sr-only">Search Button</span> <i
							class="ti-search"
						></i>
						</a>
						<!-- end: RESPONSIVE MENU SEARCH -->
						<!-- start: LOGO -->
						<a
							href="#"
							class="navbar-brand"
						> <img
							src="assets2/images/logo.png"
							alt="Clip-Two"
						>
						</a>
						<!-- end: LOGO -->
					</div>
					<!-- start: NAVBAR -->
					<div class="navbar-collapse collapse">
						<ul class="nav navbar-nav navbar-right">
							<li class="active"><a href="index-pj.html"> หน้าแรก </a></li>
							<li><a href="login.html">เข้าสู่ระบบ</a></li>



						</ul>

						<!-- start: MENU TOGGLER FOR MOBILE DEVICES -->
						<div
							class="close-handle visible-sm-block visible-xs-block menu-toggler"
							data-toggle="collapse"
							href=".navbar-collapse"
						>
							<div class="arrow-left"></div>
							<div class="arrow-right"></div>
						</div>
						<!-- end: MENU TOGGLER FOR MOBILE DEVICES -->
					</div>
					<!-- end: NAVBAR -->
				</div>
				<!-- end: TOP NAVIGATION CONTAINER -->
				<div id="overlay-search">
					<form
						method="get"
						action="search.html"
					>
						<input
							type="text"
							placeholder="Type &amp; Hit Enter.."
							value=""
							class="form-control"
							name="q"
						>
					</form>
					<a
						href="#"
						class="pull-right margin-right-20 close-search mobile-button"
						data-toggle-target="body"
						data-toggle-class="search-open"
					> <i class="ti-close"></i>
					</a>
				</div>
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

									<h4>Categories</h4>
									<ul class="nav nav-list blog-categories">
										<li><a href="index-pj.html">ประกาศทุนการศึกษา</a></li>

									</ul>

									<hr>

								</aside>
							</div>
							<div class="col-md-9">
								<div class="blog-posts">
									<article>
										<div class="row">
												
												<div class="col-md-12">
													<div class="post-content">
													<div role="alert" class="alert alert-success">
														<button type="button" class="close" data-dismiss="alert" aria-label="Close">
															<span aria-hidden="true">&times;</span>
														</button>
														<strong>ดำเนินการสำเร็จ!</strong>  สามารถเข้าสู่ระบบเพื่อใช้งาน
													</div>
														<h2>เข้าสู่ระบบ</h2>
														
														
													</div>
												</div>
											</div>
										<div class="row">

											<div class="col-md-12">
												<div class="post-content">
													<h2>เข้าสู่ระบบ</h2>


												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-md-6">
												<!-- start: LOGIN BOX -->
												<div class="box-login">
													<form
														class="form-login"
														action="checkLogin.jsp"
													>
														<fieldset>
															

															<div class="form-group">
																<span class="input-icon"> <input
																	type="email"
																	class="form-control"
																	name="username"
																	placeholder="ชื่อผู้ใช้"
																> <i class="fa fa-user"></i>
																</span>
															</div>
															<div class="form-group form-actions">
																<span class="input-icon"> <input
																	type="password"
																	class="form-control password"
																	name="password"
																	placeholder="รหัสผ่านผู้ใช้"
																> <i class="fa fa-lock"></i>
																</span>
															</div>
															<div class="form-actions">
																<hr>
																<button
																	type="submit"
																	class="btn btn-primary pull-right"
																>
																	Login <i class="fa fa-arrow-circle-right"></i>
																</button>
															</div>
															<div class="new-account">

																<a href="newStd.do"> สร้างบัญชีเพื่อใช้งาน</a>

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
							<div class="col-md-4">
								<nav id="sub-menu">
									<ul>
										<li><a href="#"> FAQ's </a></li>
										<li><a href="#"> Sitemap </a></li>
										<li><a href="#"> Contact </a></li>
									</ul>
								</nav>
							</div>
						</div>
					</div>
				</div>
			</footer>
			<a
				id="scroll-top"
				href="#"
			><i class="fa fa-angle-up"></i></a>
			<!-- end: FOOTER -->
		</div>
		<!-- end: APP CONTENT -->
	</div>
	<!-- start: MAIN JAVASCRIPTS -->
	<script src="bower_components/jquery/dist/jquery.min.js"></script>
	<script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
	<script
		src="bower_components/bootstrap-hover-dropdown/bootstrap-hover-dropdown.min.js"
	></script>
	<script src="bower_components/sticky-kit/jquery.sticky-kit.min.js"></script>
	<script src="bower_components/jquery.appear.js/jquery.appear.js"></script>
	<script src="bower_components/slick.js/slick/slick.min.js"></script>
	<script src="bower_components/swiper/dist/js/swiper.jquery.min.js"></script>
	<script src="bower_components/jquery.stellar/jquery.stellar.min.js"></script>
	<script src="bower_components/countto/jquery.countTo.js"></script>
	<script
		src="bower_components/magnific-popup/dist/jquery.magnific-popup.min.js"
	></script>
	<script src="assets2/js/main.js"></script>
	<!-- end: MAIN JAVASCRIPTS -->
	<!-- start: JAVASCRIPTS REQUIRED FOR THIS PAGE ONLY -->
	<script src="assets2/js/blog.js"></script>
	<!-- end: JAVASCRIPTS REQUIRED FOR THIS PAGE ONLY -->
	<ul>
		<li
			class="social-google tooltips"
			data-original-title="LinkedIn"
			data-placement="bottom"
		><a
			target="_blank"
			href="#"
			data-original-title="LinkedIn"
		> Google + </a></li>
	</ul>
	<script>
		jQuery(document).ready(function() {
			Main.init();
			Blog.init();
		});
	</script>
</body>
</html>
