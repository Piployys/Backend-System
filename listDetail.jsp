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
<!-- start: CSS REQUIRED FOR THIS PAGE ONLY -->
<link href="bower_components/magnific-popup/dist/magnific-popup.css"
	rel="stylesheet" media="screen" />
<!-- end: CSS REQUIRED FOR THIS PAGE ONLY -->
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
						</li>
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
									<article>
										<div class="row">
											<%
												Hashtable jndiProp = new Hashtable();
												jndiProp.put(Context.URL_PKG_PREFIXES, "org.jboss.ejb.client.naming");
												Context context = new InitialContext(jndiProp);

												AnnounceScholarshipInfoService ancServ = (AnnounceScholarshipInfoService) context
														.lookup("ejb:/HelloEJB/AnnounceScholarshipInfoServiceBean!com.mfu.AnnounceScholarshipInfoService");

												long id = Long.parseLong(request.getParameter("id"));
												AnnounceScholarshipInfo anc = ancServ.findAnnounceScholarshipInfoById(id);
											%>
											<div class="col-md-9">
												<div class="post-content">
													<h2>
														รับสมัครทุนการศึกษามหาวิทยาลัยแม่ฟ้าหลวงประจำปีการศึกษา
														<%=anc.getAnnounceSchInfo_Year()%>
														-
														<%=anc.getAnnounceSchInfo_Semester()%></h2>
													<div class="post-meta text-light">
														<span><i class="fa fa-calendar"></i><%=anc.getAnnounceSchInfo_DatePost()%>
														</span> <span><i class="fa fa-user"></i> By <a href="#">
																Officer </a> </span>
													</div>
												</div>

											</div>
											<div class="row">
												<div class="col-md-9">

													<br> <br>

													<table width="725" height="127" border="0">
														<tr>
															<td width="248"><strong>รายละเอียดเกี่ยวกับทุนการศึกษา</strong></td>
															<td width="10">:</td>
															<td width="529"><%=anc.getAnnounceSchInfo_Name()%>
																ของ <%=anc.getAnnounceSchInfo_Company()%> จำนวนเงิน <%=anc.getAnnounceSchInfo_Amount()%></td>
														</tr>
														<tr>
															<td width="248" valign="top"><strong>เงื่อนไขในการสมัครทุนการศึกษา</strong></td>
															<td width="10" valign="top">:</td>
															<td width="529">เกรดไม่ต่ำกว่า : <%=anc.getAnnounceSchInfo_Gpax()%>
																<br> กำหนดสำนักวิชา : <%=anc.getAnnounceSchInfo_Faculty()%>
																<%=anc.getAnnounceSchInfo_Major()%><br><%=anc.getAnnounceSchInfo_Condition()%>
															</td>
														</tr>
														<tr>
															<td><strong>หมายเหตุ</strong></td>
															<td>:</td>
															<td><%=anc.getAnnounceSchInfo_Note()%></td>
														</tr>
														<tr>
															<td><strong>ช่วงวันที่รับสมัคร</strong></td>
															<td>:</td>
															<td><%=anc.getAnnounceSchInfo_DateRegister()%> - <%=anc.getAnnounceSchInfo_DateExpire()%></td>
														</tr>

													</table>
													<br> <br>
												</div>

											</div>

											<!-- GRID -->
											<ul id="Grid" class="list-unstyled">
												<li class="col-md-4 col-xs-12 mix category_1" data-cat="1">
													<div class="portfolio-item icons-effect">
														<div class="thumb-overlay">
															<img src="assets2/images/portfolio/00001.jpg"
																class="img-responsive">
															<div class="mask">
																<div class="icons-wrapper">
																	<div class="icons">
																		<a href="assets2/images/portfolio/00001.jpg"
																			class="icon zoom-image"> <span
																			class="fa-stack fa-2x"> <i
																				class="fa fa-circle fa-stack-2x text-white"></i> <i
																				class="fa fa-plus fa-stack-1x text-extra-large text-light"></i>
																		</span>
																		</a>

																	</div>
																</div>
															</div>

														</div>

													</div>

												</li>
												<li class="col-md-4 col-xs-12 mix category_2" data-cat="2">
													<div class="portfolio-item icons-effect">
														<div class="thumb-overlay">
															<img src="assets2/images/portfolio/00002.jpg"
																class="img-responsive" alt="">
															<div class="mask">
																<div class="icons-wrapper">
																	<div class="icons">
																		<a href="assets2/images/portfolio/00002.jpg"
																			class="icon zoom-image"> <span
																			class="fa-stack fa-2x"> <i
																				class="fa fa-circle fa-stack-2x text-white"></i> <i
																				class="fa fa-plus fa-stack-1x text-extra-large text-light"></i>
																		</span>
																		</a>

																	</div>
																</div>
															</div>

														</div>

													</div>

												</li>


												<div class="col-md-9" align="left">
													<h5>
														<i class="fa fa-newspaper-o"></i><a href="LoginStd.jsp">
															สมัครทุนการศึกษา</a>
													</h5>
												</div>
											</ul>
											<br> <br>
											<hr />
										</div>
								</div>
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
	<!-- start: JAVASCRIPTS REQUIRED FOR THIS PAGE ONLY -->
	<script src="bower_components/mixitup/build/jquery.mixitup.min.js"></script>
	<script src="assets2/js/portfolio.js"></script>
	<!-- end: JAVASCRIPTS REQUIRED FOR THIS PAGE ONLY -->
	<script>
		jQuery(document).ready(function() {
			Main.init();
			Portfolio.init();
		});
	</script>
</body>
</html>
