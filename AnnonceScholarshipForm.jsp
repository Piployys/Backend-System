<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page import="com.mfu.*"%>
<%@ page import="com.mfu.entity.*"%>
<%@ page import="javax.naming.*"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>

<html lang="th">
<!--<![endif]-->
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
<!-- start: GOOGLE FONTS -->
<link
	href="http://fonts.googleapis.com/css?family=Lato:300,400,400italic,600,700|Raleway:300,400,500,600,700|Crete+Round:400italic"
	rel="stylesheet" type="text/css" />
<!-- end: GOOGLE FONTS -->
<!-- start: MAIN CSS -->
<link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="vendor/fontawesome/css/font-awesome.min.css">
<link rel="stylesheet" href="vendor/themify-icons/themify-icons.min.css">
<link href="vendor/animate.css/animate.min.css" rel="stylesheet"
	media="screen">
<link href="vendor/perfect-scrollbar/perfect-scrollbar.min.css"
	rel="stylesheet" media="screen">
<link href="vendor/switchery/switchery.min.css" rel="stylesheet"
	media="screen">
<!-- end: MAIN CSS -->
<!-- start: CLIP-TWO CSS -->
<link rel="stylesheet" href="assets/css/styles.css">
<link rel="stylesheet" href="assets/css/plugins.css">
<link rel="stylesheet" href="assets/css/themes/theme-1.css"
	id="skin_color" />
<!-- end: CLIP-TWO CSS -->
<!-- start: CSS REQUIRED FOR THIS PAGE ONLY -->
<link
	href="vendor/bootstrap-touchspin/jquery.bootstrap-touchspin.min.css"
	rel="stylesheet" media="screen">
<link href="vendor/select2/select2.min.css" rel="stylesheet"
	media="screen">
<link
	href="vendor/bootstrap-datepicker/bootstrap-datepicker3.standalone.min.css"
	rel="stylesheet" media="screen">
<link href="vendor/bootstrap-timepicker/bootstrap-timepicker.min.css"
	rel="stylesheet" media="screen">
<!-- end: CSS REQUIRED FOR THIS PAGE ONLY -->
</head>

<!-- end: HEAD -->
<body>
	<div id="app">
		<!-- sidebar -->
		<div class="sidebar app-aside" id="sidebar">
			<div class="sidebar-container perfect-scrollbar">
				<nav>
					<!-- start: MAIN NAVIGATION MENU -->

					<ul class="main-navigation-menu">
						<li><a href="index-admin.html">
								<div class="item-content">
									<div class="item-media">
										<i class="ti-home"></i>
									</div>
									<div class="item-inner">
										<span class="title"> หน้าแรก </span>
									</div>
								</div>
						</a></li>
						<li><a href="AddSchr.html">
								<div class="item-content">
									<div class="item-media">
										<i class="ti-receipt"></i>
									</div>
									<div class="item-inner">
										<span class="title"> บันทึกข้อมูลเกี่ยวกับทุนการศึกษา </span>
									</div>
								</div>
						</a></li>
						<li><a href="listAnnounce.html">
								<div class="item-content">
									<div class="item-media">
										<i class="ti-receipt"></i>
									</div>
									<div class="item-inner">
										<span class="title"> บันทึกประกาศทุนการศึกษา</span>
									</div>
								</div>
						</a></li>
						<li><a href="announceInterview.html">
								<div class="item-content">
									<div class="item-media">
										<i class="fa fa-print"></i>
									</div>
									<div class="item-inner">
										<span class="title"> พิมพ์รายชื่อผู้มีสิทธิ์สัมภาษณ์ </span>
									</div>
								</div>
						</a></li>
						<li><a href="announceReceive.html">
								<div class="item-content">
									<div class="item-media">
										<i class="fa fa-print"></i>
									</div>
									<div class="item-inner">
										<span class="title">
											พิมพ์รายชื่อผู้ที่ได้รับทุนการศึกษา </span>
									</div>
								</div>
						</a></li>

						<li><a href="table_summary.html">
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
					<a class="navbar-brand" href="#"> <img
						src="assets/images/logo.png" />
					</a>

				</div>
				<!-- end: NAVBAR HEADER -->
				<!-- start: NAVBAR COLLAPSE -->
				<div class="navbar-collapse collapse">
					<ul class="nav navbar-right">
						<!-- start: USER OPTIONS DROPDOWN -->
						<li class="dropdown current-user"><a href
							class="dropdown-toggle" data-toggle="dropdown"> <img
								src="assets/images/avatar-1.jpg"> <span class="username">เจ้าหน้าที่ส่วนทุนการศึกษา
									<i class="ti-angle-down"></i></i>
							</span>
						</a>
							<ul class="dropdown-menu dropdown-dark">

								<li><a href="login_signin.html">ออกจากระบบ</a></li>
							</ul></li>
						<!-- end: USER OPTIONS DROPDOWN -->
					</ul>

				</div>

				<!-- end: NAVBAR COLLAPSE -->
			</header>
			<!-- end: TOP NAVBAR -->
			<div class="main-content">
				<div class="wrap-content container" id="container">
					<!-- start: DASHBOARD TITLE -->
					<section id="page-title" class="padding-top-15 padding-bottom-15">
						<div class="row">
							<div class="col-sm-7">
								<h2 class="mainTitle">ฝ่ายทุนการศึกษา มหาวิทยาลัยแม่ฟ้าหลวง</h2>
								<hr>
							</div>
						</div>
					</section>
					<!-- end: DASHBOARD TITLE -->

					<!-- start: FOURTH SECTION -->
					<div class="container-fluid container-fullw bg-white">
						<div class="row">

							<div class="col-xs-8">
								<div class="panel panel-white no-radius">
									<div class="panel-heading border-bottom">
										<h4 class="panel-title">บันทึกประกาศทุนการศึกษา</h4>
									</div>
									<div class="panel-body">

										<form:form method="post" action="saveAnnounceSchInfo.do">
											<table width="596" height="132" border="0">
												<tr>
													<td colspan="2">ชื่อทุนการศึกษา<span
														class="symbol required"></span></td>
													<td width="11">:</td>
													<td colspan="3"><div class="form-group">

															<select class="cs-select cs-skin-elastic"
																name="announceSchInfo_Name">
																<option value="" disabled selected>เลือกทุนการศึกษา</option>
																<option value="ชื่อทุนการศึกษา 1">ชื่อทุนการศึกษา
																	1</option>
																<option value="ชื่อทุนการศึกษา2">ชื่อทุนการศึกษา
																	2</option>
																<option value="ชื่อทุนการศึกษา3">ชื่อทุนการศึกษา
																	3</option>
																<option value="ชื่อทุนการศึกษา4">ชื่อทุนการศึกษา
																	4</option>
															</select>
														</div></td>
													<td width="165">&nbsp;</td>
												</tr>
												<tr>
													<td colspan="2">ชื่อผู้ให้ทุน<span
														class="symbol required"></span></td>
													<td>:</td>
													<td colspan="3"><div class="form-group">

															<select class="cs-select cs-skin-elastic"
																name="announceSchInfo_Company">
																<option value="" disabled selected>เลือกชื่อผู้ให้ทุน</option>
																<option value="ชื่อผู้ให้ทุน 1">ชื่อผู้ให้ทุน 1</option>
																<option value="ชื่อผู้ให้ทุน 2">ชื่อผู้ให้ทุน 2</option>
																<option value="ชื่อผู้ให้ทุน 3">ชื่อผู้ให้ทุน 3</option>
																<option value="ชื่อผู้ให้ทุน 4">ชื่อผู้ให้ทุน 4</option>
															</select>
														</div></td>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td colspan="2">ประเภททุน<span class="symbol required"></span></td>
													<td>:</td>
													<td colspan="3"><div class="form-group">

															<select class="cs-select cs-skin-elastic"
																name="announceSchInfo_Type">
																<option value="" disabled selected>เลือกประเภททุน</option>
																<option value="ประเภททุน1">ประเภททุน 1</option>
																<option value="ประเภททุน2">ประเภททุน 2</option>
																<option value="ประเภททุน3">ประเภททุน 3</option>
																<option value="ประเภททุน4">ประเภททุน 4</option>
															</select>
														</div></td>
													<td>&nbsp;</td>
												</tr>
											</table>
											<table width="596" border="0">
												<tr>
													<td colspan="2" valign="bottom">ปีการศึกษา</td>
													<td width="10">:</td>
													<td width="168" colspan="1"><input type="text"
														class="form-control underline" name="announceSchInfo_Year"></td>
													<td width="90" align="center" valign="bottom">เทอม&nbsp;&nbsp;
														:</td>
													<td width="204"><input type="text"
														class="form-control underline"
														name="announceSchInfo_Semester"></td>
												</tr>
											</table>
											<table width="596" border="0">
												<tr>
													<td colspan="2" valign="bottom">จำนวนเงิน</td>
													<td>:</td>
													<td colspan="3"><input type="text"
														class="form-control underline"
														name="announceSchInfo_Amount"></td>
													<td valign="bottom">&nbsp;บาท</td>
												</tr>
												<tr>
													<td colspan="2">&nbsp;</td>
													<td>&nbsp;</td>
													<td colspan="4">&nbsp;</td>
												</tr>
												<tr>
													<td colspan="2"><strong>เงื่อนไขสำคัญ</strong></td>
													<td>&nbsp;</td>
													<td colspan="4">&nbsp;</td>
												</tr>
												<tr>
													<td width="21">&nbsp;</td>
													<td width="104">เกรดไม่ต่ำกว่า <span
														class="symbol required"></td>
													<td>:</td>
													<td colspan="3"><input type="text"
														class="form-control underline" name="announceSchInfo_Gpax"></td>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
													<td>&nbsp;</td>
													<td>&nbsp;</td>
													<td colspan="3">&nbsp;</td>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
													<td>สำนักวิชา</td>
													<td>:</td>
													<td colspan="3"><input type="text"
														class="form-control underline"
														name="announceSchInfo_Faculty"></td>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
													<td>สาขาวิชา</td>
													<td>:</td>
													<td colspan="3"><input type="text"
														class="form-control underline"
														name="announceSchInfo_Major"></td>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td colspan="2">&nbsp;</td>
													<td>&nbsp;</td>
													<td colspan="4">&nbsp;</td>
												</tr>
												<tr>
													<td colspan="2" valign="top">เงื่อนไขอื่น</td>
													<td valign="top">:</td>
													<td colspan="3"><textarea
															name="announceSchInfo_Condition" cols="40" rows="5"
															class="form-control"></textarea></td>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td colspan="2" valign="top">&nbsp;</td>
													<td valign="top">&nbsp;</td>
													<td colspan="3">&nbsp;</td>
													<td>&nbsp;</td>
												</tr>

												<td colspan="2">วันที่ประกาศ ตั้งแต่</td>
												<td>:</td>
												<td width="168"><input
													class="form-control underline datepicker" type="text"
													name="announceSchInfo_DatePost" /></td>
												<td width="52" align="center">ถึง</td>
												<td colspan="2"><input
													class="form-control underline datepicker" type="text"
													name="announceSchInfo_DatePostClose" /></td>
												</tr>
												<tr>
													<td colspan="2">วันที่เปิดรับสมัคร ตั้งแต่</td>
													<td>:</td>
													<td width="168"><input
														class="form-control underline datepicker" type="text"
														name="announceSchInfo_DateRegister"></td>
													<td width="52" align="center">ถึง</td>
													<td colspan="2"><input
														class="form-control underline datepicker" type="text"
														name="announceSchInfo_DateExpire"></td>
												</tr>
												<tr>
													<td colspan="2">&nbsp;</td>
													<td>&nbsp;</td>
													<td colspan="3">&nbsp;</td>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td colspan="2" valign="top">หมายเหตุ <span
														class="symbol required"></td>
													<td valign="top">:</td>

													<td colspan="3"><textarea name="announceSchInfo_Note"
															cols="40" rows="5" class="form-control"></textarea></td>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td colspan="2">&nbsp;</td>
													<td>&nbsp;</td>
													<td colspan="3">&nbsp;</td>
													<td>&nbsp;</td>
												</tr>

												<tr>
													<td colspan="3">&nbsp;</td>
													<td colspan="3" align="center">&nbsp;</td>
													<td></td>
												</tr>
												<tr>

													<td colspan="7" align="center"><button type="submit"
															class="btn btn-green">บันทึก</button></td>
												</tr>

											</table>
										</form:form>

									</div>
								</div>
							</div>

						</div>
					</div>
					<!-- end: FOURTH SECTION -->



				</div>
			</div>
		</div>
		<!-- start: FOOTER -->
		<footer>
			<div class="footer-inner">
				<div class="pull-left">
					&copy; <span class="current-year"></span><span
						class="text-bold text-uppercase"> DIVISION OF STUDENT
						DEVELOPMENT AFFAIRS</span>.
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
	<script src="vendor/maskedinput/jquery.maskedinput.min.js"></script>
	<script
		src="vendor/bootstrap-touchspin/jquery.bootstrap-touchspin.min.js"></script>
	<script src="vendor/autosize/autosize.min.js"></script>
	<script src="vendor/selectFx/classie.js"></script>
	<script src="vendor/selectFx/selectFx.js"></script>
	<script src="vendor/select2/select2.min.js"></script>
	<script src="vendor/bootstrap-datepicker/bootstrap-datepicker.min.js"></script>
	<script src="vendor/bootstrap-timepicker/bootstrap-timepicker.min.js"></script>
	<!-- end: JAVASCRIPTS REQUIRED FOR THIS PAGE ONLY -->
	<!-- start: CLIP-TWO JAVASCRIPTS -->
	<script src="assets/js/main.js"></script>
	<!-- start: JavaScript Event Handlers for this page -->
	<script src="assets/js/form-elements.js"></script>
	<script>
		jQuery(document).ready(function() {
			Main.init();
			FormElements.init();
		});
	</script>
	<!-- end: JavaScript Event Handlers for this page -->
	<!-- end: CLIP-TWO JAVASCRIPTS -->
</body>
</html>
