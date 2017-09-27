<%@ page
	language="java"
	contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
%>
<%@ taglib
	prefix="c"
	uri="http://java.sun.com/jsp/jstl/core"
%>

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
<!-- start: GOOGLE FONTS -->
<link
	href="http://fonts.googleapis.com/css?family=Lato:300,400,400italic,600,700|Raleway:300,400,500,600,700|Crete+Round:400italic"
	rel="stylesheet"
	type="text/css"
/>
<!-- end: GOOGLE FONTS -->
<!-- start: MAIN CSS -->
<link
	rel="stylesheet"
	href="vendor/bootstrap/css/bootstrap.min.css"
>
<link
	rel="stylesheet"
	href="vendor/fontawesome/css/font-awesome.min.css"
>
<link
	rel="stylesheet"
	href="vendor/themify-icons/themify-icons.min.css"
>
<link
	href="vendor/animate.css/animate.min.css"
	rel="stylesheet"
	media="screen"
>
<link
	href="vendor/perfect-scrollbar/perfect-scrollbar.min.css"
	rel="stylesheet"
	media="screen"
>
<link
	href="vendor/switchery/switchery.min.css"
	rel="stylesheet"
	media="screen"
>
<!-- end: MAIN CSS -->
<!-- start: CLIP-TWO CSS -->
<link
	rel="stylesheet"
	href="assets/css/styles.css"
>
<link
	rel="stylesheet"
	href="assets/css/plugins.css"
>
<link
	rel="stylesheet"
	href="assets/css/themes/theme-1.css"
	id="skin_color"
/>
<!-- end: CLIP-TWO CSS -->
<!-- start: CSS REQUIRED FOR THIS PAGE ONLY -->
<link
	href="vendor/select2/select2.min.css"
	rel="stylesheet"
	media="screen"
>
<link
	href="vendor/DataTables/css/DT_bootstrap.css"
	rel="stylesheet"
	media="screen"
>
<!-- end: CSS REQUIRED FOR THIS PAGE ONLY -->
</head>
<!-- end: HEAD -->
<body>
	<div id="app">
		<!-- sidebar -->
		<div
			class="sidebar app-aside"
			id="sidebar"
		>
			<div class="sidebar-container perfect-scrollbar">
				<nav>

					<!-- start: MAIN NAVIGATION MENU -->
					<div class="navbar-title">
						<span>Main Navigation</span>
					</div>
					<ul class="main-navigation-menu">

						<li><a href="#">
								<div class="item-content">
									<div class="item-media">
										<i class="ti-home"></i>
									</div>
									<div class="item-inner">
										<span class="title"> หน้าแรก </span>
									</div>
								</div>
						</a></li>
						<li><a href="listSch.do">
								<div class="item-content">
									<div class="item-media">
										<i class="ti-receipt"></i>
									</div>
									<div class="item-inner">
										<span class="title"> บันทึกข้อมูลเกี่ยวกับทุนการศึกษา </span>
									</div>
								</div>
						</a></li>

						<li><a href="javascript:void(0)">
								<div class="item-content">
									<div class="item-media">
										<i class="ti-menu-alt"></i>
									</div>
									<div class="item-inner">
										<span class="title"> เกี่ยวกับประกาศทุนการศึกษา </span><i
											class="icon-arrow"
										></i>
									</div>
								</div>
						</a>
							<ul class="sub-menu">
								<li><a href="listSch.do"> <span class="title">ประกาศรับสมัครทุนการศึกษา</span>
								</a></li>
								
								<li><a href="AnnounceReceive.do"> <span
										class="title"
									>ประกาศผู้มีสิทธิ์สัมภาษณ์</span>
								</a></li>
								<li><a href="ReceiveScholarship.do"> <span class="title">ประกาศผู้ที่ได้รับทุนการศึกษา
									</span>
								</a></li>
							</ul></li>
						<li><a href="RequireRegister.do">
								<div class="item-content">
									<div class="item-media">
										<i class="ti-book"></i>
									</div>
									<div class="item-inner">
										<span class="title"> คำร้องขอทุนการศึกษา </span>
									</div>
								</div>
						</a></li>
						<li><a href="listSummary.do">
								<div class="item-content">
									<div class="item-media">
										<span class="fa-stack"><i class="ti-layers-alt"></i></span>
									</div>
									<div class="item-inner">
										<span class="title">รายงานสรุปทุนการศึกษา</span>
									</div>
								</div>
						</a></li>
					</ul>
					<!-- end: MAIN NAVIGATION MENU -->

				</nav>
			</div>
		</div>
		<!-- / sidebar -->
		<div class="app-content">
			<!-- start: TOP NAVBAR -->
			<header class="navbar navbar-default navbar-static-top">
				<!-- start: NAVBAR HEADER -->
				<div class="navbar-header">
					<a
						class="navbar-brand"
						href="#"
					> <img src="assets/images/logo.png" />
					</a> <a
						class="pull-right menu-toggler visible-xs-block"
						id="menu-toggler"
						data-toggle="collapse"
						href=".navbar-collapse"
					> <span class="sr-only">Toggle navigation</span> <i
						class="ti-view-grid"
					></i>
					</a>
				</div>
				<!-- end: NAVBAR HEADER -->
				<!-- start: NAVBAR COLLAPSE -->
				<div class="navbar-collapse collapse">
					<ul class="nav navbar-right">



						<!-- start: USER OPTIONS DROPDOWN -->
						<li class="dropdown current-user"><a
							href
							class="dropdown-toggle"
							data-toggle="dropdown"
						> <img src="assets/images/avatar-1.jpg"> <span
								class="username"
							>Officer <i class="ti-angle-down"></i></span>
						</a>
							<ul class="dropdown-menu dropdown-dark">

								<li><a href="login_signin.html"> ออกจากระบบ </a></li>
							</ul></li>
						<!-- end: USER OPTIONS DROPDOWN -->
					</ul>

				</div>

				<!-- end: NAVBAR COLLAPSE -->
			</header>
			<!-- end: TOP NAVBAR -->
			<div class="main-content">
				<div
					class="wrap-content container"
					id="container"
				>
					<!-- start: DASHBOARD TITLE -->
					<section
						id="page-title"
						class="padding-top-15 padding-bottom-15"
					>
						<div class="row">
							<div class="col-sm-7">
								<h2 class="mainTitle">ฝ่ายทุนการศึกษา มหาวิทยาลัยแม่ฟ้าหลวง</h2>

								<hr>
							</div>
							<div class="col-sm-5"></div>
						</div>
					</section>
					<!-- end: DASHBOARD TITLE -->

					<!-- start: DYNAMIC TABLE -->
					<div class="container-fluid container-fullw bg-white">
						<div class="row">
							<div class="col-md-8">
								<h5 class="over-title margin-bottom-15">ประกาศผู้ทีสิทธิ์สอบสัมภาษณ์</h5>

								<hr>

								<table
									class="table table-striped table-bordered table-hover table-full-width"
									id="sample_1"
								>
									<thead>
										<tr>
											<th>#</th>
											<th class="hidden-xs">ชื่อโครงการ</th>
											<th class="hidden-xs">วันที่ประกาศ</th>



										</tr>
									</thead>

									<tbody>
										<c:forEach
											items="${schList}"
											var="sch"
										>
											<tr>
												<td>${sch.schrId}</td>
												<td class="hidden-xs"><a
													href="detailAncReceive.jsp?id=${sch.schrId}"
												>${sch.schrName} </a></td>
												<td>${sch.datePost}</td>



											</tr>
										</c:forEach>

									</tbody>
								</table>
							</div>
						</div>
					</div>
					<!-- end: DYNAMIC TABLE -->


				</div>
			</div>
		</div>
		<!-- start: FOOTER -->
		<footer>
			<div class="footer-inner">
				<div class="pull-left">
					&copy; <span class="current-year"></span><span
						class="text-bold text-uppercase"
					> DIVISION OF STUDENT DEVELOPMENT AFFAIRS</span>.
				</div>

			</div>
		</footer>
		<!-- end: FOOTER -->


	</div>
	<!-- start: MAIN JAVASCRIPTS -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
	<script src="vendor/modernizr/modernizr.js"></script>
	<script src="vendor/jquery-cookie/jquery.cookie.js"></script>
	<script src="vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
	<script src="vendor/switchery/switchery.min.js"></script>
	<!-- end: MAIN JAVASCRIPTS -->
	<!-- start: JAVASCRIPTS REQUIRED FOR THIS PAGE ONLY -->
	<script src="vendor/select2/select2.min.js"></script>
	<script src="vendor/DataTables/jquery.dataTables.min.js"></script>
	<!-- end: JAVASCRIPTS REQUIRED FOR THIS PAGE ONLY -->
	<!-- start: CLIP-TWO JAVASCRIPTS -->
	<script src="assets/js/main.js"></script>
	<!-- start: JavaScript Event Handlers for this page -->
	<script src="assets/js/table-data.js"></script>
	<script>
		jQuery(document).ready(function() {
			Main.init();
			TableData.init();
		});
	</script>
	<!-- end: JavaScript Event Handlers for this page -->
	<!-- end: CLIP-TWO JAVASCRIPTS -->
</body>
</html>
