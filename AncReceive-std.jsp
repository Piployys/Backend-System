<%@ page
	language="java"
	contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
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
						> <img src="assets2/images/logo.png">
						</a>
						<!-- end: LOGO -->


					</div>
					<!-- start: NAVBAR -->
					<div class="navbar-collapse collapse">
						<ul class="nav navbar-nav navbar-right">
							<li class="active"><a href="index-student.html">หน้าแรก</a>
							</li>
							<li><a href="index-pj.html">ออกจากระบบ</a></li>
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
													<h1 class="text-dark">ประกาศรายชื่อผู้มีสิทธิ์ได้ทุนการศึกษา</h1>
													<hr>

													<!-- start: DYNAMIC TABLE -->
													<div class="container-fluid container-fullw bg-white">
														<div class="row">
															<div class="col-md-10">


																<table
																	class="table table-striped table-bordered table-hover table-full-width"
																	id="sample_1"
																>
																	<thead>
																		<tr>
																			<th>#</th>
																			<th>ชื่อโครงการ</th>
																			<th class="hidden-xs">วันที่ประกาศ</th>



																		</tr>
																	</thead>

																	<tbody>
																		<%
																			Hashtable jndiProp = new Hashtable();
																																																																																																					jndiProp.put(Context.URL_PKG_PREFIXES,
																																																																																																							"org.jboss.ejb.client.naming");
																																																																																																					Context context = new InitialContext(jndiProp);

																																																																																																					ScholarshipService schServ = (ScholarshipService) context
																																																																																																							.lookup("ejb:/HelloEJB/ScholarshipServiceBean!com.mfu.ScholarshipService");
																																																																																																					List<Scholarship> sch = schServ.getScholarships();
																																																																																																					for (Scholarship list : sch){
																		%>
																		<tr>

																			<td><%=list.getSchrId()%></td>
																			<td><a
																				href="listAncReceive-std.jsp?id=<%=list.getSchrId()%>"
																			><%=list.getSchrName()%></a></td>
																			<td class="hidden-xs"><%=list.getDatePost()%></td>




																		</tr>
																		<%
																			}
																		%>


																	</tbody>

																</table>
															</div>
														</div>
													</div>
													<!-- end: DYNAMIC TABLE -->
												</div>
											</div>


										</div>

										<div class="row"></div>

										<div class="row"></div>
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
