<%@ page
	language="java"
	contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
%>
<%@taglib
	uri="http://www.springframework.org/tags/form"
	prefix="form"
%>
<%@taglib
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
							<li class="active"><a href="index-pj.html"> หน้าแรก </a></li>
							<li><a href="login.html">เข้าสู่ระบบ</a></li>



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
							<div class="col-md-12">

								<div class="post-content">
									<h2 class="text-dark">สมัครเพื่อเข้าใช้งาน</h2>
								</div>
								<hr>
								<form:form
									method="post"
									action="saveStd.do"
									commandName="student"
								>
									<form:hidden path="id" />
									<table
										width="1027"
										border="0"
									>
										<tr>
											<td
												width="38"
												height="36"
											>&nbsp;</td>
											<td
												width="99"
												height="36"
											>ชื่อ</td>
											<td width="157"><form:input
													path="stdFname"
													class="form-control"
												/></td>
											<td width="64">นามสกุล</td>
											<td width="155"><form:input
													path="stdLname"
													class="form-control"
												/></td>
											<td
												width="82"
												align="left"
											>วัน/เดือน/ปี เกิด</td>
											<td width="155"><form:input
													path="dateBirth"
													class="form-control"
												/></td>
											<td></td>
											<td></td>
										</tr>
										<tr>
											<td>&nbsp;</td>
											<td>เชื้อชาติ</td>
											<td><input
												type="text"
												class="form-control"
											/></td>
											<td>สัญชาติ</td>
											<td><input
												type="text"
												class="form-control"
											/></td>
											<td>สำนักวิชา</td>
											<td><form:input
													path="stdSchool"
													class="form-control"
												/></td>
											<td width="87">สาขาวิชา</td>
											<td width="152"><form:input
													path="stdMajor"
													class="form-control"
												/></td>
										</tr>
										<tr>
											<td>&nbsp;</td>
											<td>รหัสนักศึกษา</td>
											<td><form:input
													path="StudentId"
													maxlength="10"
													class="form-control"
												/></td>
											<td>ชั้นปี</td>
											<td><input
												type="text"
												class="form-control"
											/></td>
											<td>Email</td>
											<td><form:input
													path="stdEmail"
													type="email"
													class="form-control"
												/></td>
											<td>รหัสผ่านผู้ใช้</td>
											<td><form:input
													path="stdPass"
													type="password"
													class="form-control"
												/></td>
										</tr>
										<tr>
											<td>&nbsp;</td>
											<td>&nbsp;</td>
											<td></td>
											<td>&nbsp;</td>
											<td></td>
											<td>&nbsp;</td>
											<td>&nbsp;</td>
											<td>&nbsp;</td>
											<td>&nbsp;</td>
										</tr>
										<tr>
											<td>&nbsp;</td>
											<td>โทรศัพท์บ้าน</td>
											<td><input
												type="text"
												class="form-control"
											/></td>
											<td>โทรศัพท์มือถือ</td>
											<td><form:input
													path="stdTel"
													class="form-control"
												/></td>
											<td>&nbsp;</td>
											<td>&nbsp;</td>
											<td>&nbsp;</td>
											<td>&nbsp;</td>
										</tr>
										<tr>
											<td>&nbsp;</td>
											<td>&nbsp;</td>
											<td>&nbsp;</td>
											<td>&nbsp;</td>
											<td>&nbsp;</td>
											<td>&nbsp;</td>
											<td>&nbsp;</td>
											<td>&nbsp;</td>
											<td>&nbsp;</td>
										</tr>
										<tr>
											<td>&nbsp;</td>
											<td><h4>ที่อยู่</h4></td>
											<td>&nbsp;</td>
											<td>&nbsp;</td>
											<td>&nbsp;</td>
											<td>&nbsp;</td>
											<td>&nbsp;</td>
											<td>&nbsp;</td>
											<td>&nbsp;</td>
										</tr>
										<tr>
											<td>&nbsp;</td>
											<td>หมู่บ้าน</td>
											<td><input
												type="text"
												class="form-control"
											/></td>
											<td>เลขที่</td>
											<td><form:input
													path="stdHouNo"
													class="form-control"
												/></td>
											<td>หมู่ที่</td>
											<td><form:input
													path="stdVilNo"
													class="form-control"
												/></td>
											<td>ถนน</td>
											<td><form:input
													path="stdRoad"
													class="form-control"
												/></td>
										</tr>
										<tr>
											<td>&nbsp;</td>
											<td>ตำบล</td>
											<td><form:input
													path="stdSubDist"
													class="form-control"
												/></td>
											<td>อำเภอ</td>
											<td><form:input
													path="stdDist"
													class="form-control"
												/></td>
											<td>จังหวัด</td>
											<td><form:input
													path="stdProvince"
													class="form-control"
												/></td>
											<td>รหัสไปรษณีย์</td>
											<td><form:input
													path="stdPostcode"
													class="form-control"
												/></td>
										</tr>
										<tr>
											<td>&nbsp;</td>
											<td>&nbsp;</td>
											<td colspan="2">&nbsp;</td>
											<td>&nbsp;</td>
											<td></td>
											<td></td>
											<td>&nbsp;</td>

											<td>&nbsp;</td>
										</tr>



									</table>
									<table
										width="270"
										border="0"
									>
										<tr></tr>
									</table>
									<p>
										<br> <br>
									</p>
									<table width="1016">
										<tr>
											<td>&nbsp;</td>
											<td></td>
											<td
												colspan="2"
												align="right"
											><input
												type="reset"
												value="ยกเลิก"
												class="btn btn-wide btn-primary"
											>&nbsp;&nbsp;</td>
											<td
												colspan="2"
												align="left"
											><input
												type="submit"
												value="สมัครใช้งาน"
												class="btn btn-wide btn-primary"
											></td>
											<td>&nbsp;</td>
											<td>&nbsp;</td>
										</tr>
									</table>



								</form:form>
								<hr>
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
