<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.mfu.*"%>
<%@ page import="com.mfu.entity.*"%>
<%@ page import="javax.naming.*"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>

<!-- start: HEAD -->
<head>
<title></title>
<!-- start: META -->

<meta http-equiv=Content-Type content="text/html; charset=utf-8">
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
							<li class="active"><a href="Index-Student.jsp"> หน้าแรก
							</a></li>
							<li><a href="LogoutUser.jsp">ออกจากระบบ</a></li>
						</ul>


					</div>
					<!-- end: NAVBAR -->
				</div>
				<!-- end: TOP NAVIGATION CONTAINER -->
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
										<li><a href="listAncStd.do">ประกาศทุนการศึกษา</a></li>
										<li><a href="announceInterview.html">ประกาศรายชื่อผู้มีสิทธิ์สัมภาษณ์</a></li>
										<li><a href="listScrolaship.html">ประกาศรายชื่อผู้มีสิทธิ์ได้ทุน</a>
										</li>
										<li><a href="profile.html">จัดการข้อมูลส่วนตัว</a></li>
										<li><a href="manageScrolaship.html">จัดการเกี่ยวกับทุนการศึกษา</a>
										</li>
										<li><a href="checkPaper.html">พิมพ์เอกสารเพิ่มเติม</a></li>
									</ul>
									<hr>

								</aside>
							</div>
							<div class="col-md-9">
								<div class="blog-posts">
									<article>
										<%
											Hashtable jndiProp = new Hashtable();
											jndiProp.put(Context.URL_PKG_PREFIXES, "org.jboss.ejb.client.naming");
											Context context = new InitialContext(jndiProp);

											RegisterMemberService regMemservice = (RegisterMemberService) context
													.lookup("ejb:/HelloEJB/RegisterMemberServiceBean!com.mfu.RegisterMemberService");

											List<RegisterMember> stdList = regMemservice.getRegisterMembers();
											for (RegisterMember std : stdList) {
												if (session.getAttribute("id").equals(std.getRegisterId())) {
										%>
										<c:forEach items="${ancList}" var="ancSchInfo">
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
															href="AncStdDetail.jsp?id=${ancSchInfo.announceSchInfo_Id}"
															class="btn btn-primary btn-wide btn-scroll btn-scroll-top fa-arrow-right pull-right"
															data-caption-class="fadeIn" data-caption-delay="900">
															<span>อ่านเพิ่มเติม</span>
														</a>
													</div>
												</div>
											</div>
											<hr>
										</c:forEach>
										<%
											}
											}
										%>
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
	<script src="bower_components/jquery.asppear.js/jquery.appear.js"></script>
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
