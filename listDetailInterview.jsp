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
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<!-- start: HEAD -->
<head>
<title></title>
<!-- start: META -->
<meta
	http-equiv=Content-Type
	content="text/html; charset=utf-8"
>
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

					<!-- start: LOGO -->
					<a
						href="#"
						class="navbar-brand"
					> <img src="assets2/images/logo.png">
					</a>
					<!-- end: LOGO -->

				</div>
				<!-- start: NAVBAR -->
				<div class="navbar-collapse collapse">
					<ul class="nav navbar-nav navbar-right">
						<li class="active"><a href="Index-Student.jsp">หน้าแรก</a></li>
						<li><a href="LogoutUser.jsp">ออกจากระบบ</a></li>
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
						<div class="col-md-9">
							<div class="blog-posts">
								<article>
								<div class="row margin-bottom-25">
									<div class="col-md-12">
										<div class="post-content">
											<h1 class="text-dark">รายชื่อผู้มีสิทธิ์สัมภาษณ์</h1>
											<hr>
											<!-- start: DYNAMIC TABLE -->
											<div class="container-fluid container-fullw bg-white">
												<div class="row">
													<div class="col-md-10">


														<table
															class="table table-striped table-bordered table-hover table-full-width"
														>
															<thead>

																<tr>
																	<th>#</th>
																	<th>รหัสนักศึกษา</th>

																	<th>ชื่อ - นามสกุล</th>
																	<th>สำนักวิชา</th>
																	<th>สาขาวิชา</th>
																	<th>สถานะ</th>

																</tr>

															</thead>
															<%
																Hashtable jndiProp = new Hashtable();
																																																																																																																																																																																											jndiProp.put(Context.URL_PKG_PREFIXES,
																																																																																																																																																																																													"org.jboss.ejb.client.naming");
																																																																																																																																																																																											Context context = new InitialContext(jndiProp);

																																																																																																																																																																																											RegisterinfoService regService = (RegisterinfoService) context
																																																																																																																																																																																													.lookup("ejb:/HelloEJB/RegisterinfoServiceBean!com.mfu.RegisterinfoService");
																																																																																																																																																																																											
																																																																																																																																																																																											StudentService stdservice = (StudentService) context
																																																																																																																																																																																													.lookup("ejb:/HelloEJB/StudentServiceBean!com.mfu.StudentService");
																																																																																																																																																																																											
																																																																																																																																																																																											ScholarshipService schServ = (ScholarshipService) context
																																																																																																																																																																																													.lookup("ejb:/HelloEJB/ScholarshipServiceBean!com.mfu.ScholarshipService");
																																																																																																																																																																																																																		
																																																																																																																																																																																																																		long schrId = Long.parseLong(request.getParameter("id"));
																																																																																																																																																																																																																																																																											List<RegisterInfo> list = regService.findRegisterInfoBySchId(schrId);
																																																																																																																																																																																																																	
																																																																																																																																																																																																																			for (int i = 0; i < list.size(); i++) {
																																																																																																																																																																																																																				
																																																																																																																																																																																																																				if(list.get(i).getStatusOfReg().equals("Approve")){
															%>
															<tbody>
																<tr>
																	<td><%=list.get(i).getRegId()%></td>
																	<td><a
																		href="profile.html"
																		rel="nofollow"
																		target="_blank"
																	><%=list.get(i).getRegister().getStudentId()%></a></td>
																	<td><%=list.get(i).getRegister().getStdFname()%> <%=list.get(i).getRegister().getStdLname()%></td>
																	<td><%=list.get(i).getRegister().getStdSchool()%></td>
																	<td><%=list.get(i).getRegister().getStdMajor()%></td>
																	<td><span class="label label-sm label-warning"><%=list.get(i).getStatusOfReg()%>
																	</span></td>




																</tr>


															</tbody>
															<%
																}}
															%>
														</table>
													</div>
												</div>
											</div>
											<!-- end: DYNAMIC TABLE -->
										</div>
									</div>


								</div>
							</div>
						</div>
						<div class="col-md-3">
							<aside class="sidebar">
									<ul class="nav nav-list blog-categories">
										<li><a href="listAncStd.do">ประกาศทุนการศึกษา</a></li>
										<li><a href="AncInterview.do">ประกาศรายชื่อผู้มีสิทธิ์สัมภาษณ์</a></li>
										<li><a href="AncReceive-std.jsp">ประกาศรายชื่อผู้มีสิทธิ์ได้ทุน</a>
										</li>
										<li><a href="editStd.do">จัดการข้อมูลส่วนตัว</a></li>
										<li><a href="listReg.do">จัดการเกี่ยวกับทุนการศึกษา</a></li>
										<li><a href="checkPaper.html">ปริ้นเอกสาร</a></li>
									</ul>
									<hr>

								</aside>


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

	<script>
		jQuery(document).ready(function() {
			Main.init();
			Blog.init();
		});
	</script>
</body>
</html>
