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
					</a> <a class="pull-right menu-toggler visible-xs-block"
						id="menu-toggler" data-toggle="collapse" href=".navbar-collapse">
						<span class="sr-only">Toggle navigation</span> <i
						class="ti-view-grid"></i>
					</a>
				</div>
				<!-- end: NAVBAR HEADER -->
				<!-- start: NAVBAR COLLAPSE -->
				<div class="navbar-collapse collapse">
					<ul class="nav navbar-right">
						<!-- start: USER OPTIONS DROPDOWN -->
						<li class="dropdown current-user"><a href
							class="dropdown-toggle" data-toggle="dropdown"> <img
								src="assets/images/avatar-1.jpg"> <span class="username">Officer
									<i class="ti-angle-down"></i></i>
							</span>
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

					<!-- start: INVOICE -->
					<div class="container-fluid container-fullw bg-white">
						<div class="row">
							<div class="col-md-12">
								<div class="invoice">

									<div class="row">
										<div class="col-sm-10">

											<div class="well">
												<h3>รายละเอียดเกี่ยวกับทุนการศึกษา</h3>
												<%
													Hashtable jndiProp = new Hashtable();
													jndiProp.put(Context.URL_PKG_PREFIXES, "org.jboss.ejb.client.naming");
													Context context = new InitialContext(jndiProp);

													ScholarshipInformationService schServ = (ScholarshipInformationService) context
															.lookup("ejb:/HelloEJB/ScholarshipInformationServiceBean!com.mfu.ScholarshipInformationService");

													long id = Long.parseLong(request.getParameter("id"));
													ScholarshipInformation sch = schServ.findScholarshipById(id);
												%>
												<div align="right">
													<a href="editSch.do?id=<%=sch.getScholarshipInfo_Id()%>">
														<i class="fa fa-pencil"></i>
														แก้ไขข้อมูลเกี่ยวกับทุนการศึกษา
													</a>
												</div>
												<table width="514" height="384" border="0">
													<tr>
														<td width="149">ชื่อทุนการศึกษา</span></td>
														<td width="19">:</td>
														<td colspan="2"><%=sch.getScholarshipInfo_Name()%></td>
														<td width="60">&nbsp;</td>
													</tr>
													<tr>
														<td>ชื่อผู้ให้ทุน</td>
														<td>:</td>
														<td colspan="2"><%=sch.getScholarshipInfo_Company()%></td>
														<td>&nbsp;</td>
													</tr>
													<tr>
														<td>ประเภททุน</td>
														<td>:</td>
														<td colspan="2"><%=sch.getScholarshipInfo_Type()%></td>
														<td>&nbsp;</td>
													</tr>
													<tr>
														<td>วันที่แจ้งให้บันทึก</td>
														<td>:</td>
														<td colspan="2"><%=sch.getScholarshipInfo_DateRecord()%></td>
														<td>&nbsp;</td>
													</tr>
													<tr>
														<td><p>สถานะ</p></td>
														<td>:</td>
														<td colspan="3"><%=sch.getScholarshipInfo_Status()%>


														</td>
													</tr>
													<tr>
														<td colspan="2">หมายเหตุ(ที่ได้รับมา)</span></td>

														<td colspan="3"><%=sch.getScholarshipInfo_Note()%></td>
													</tr>
													<tr>
														<td>&nbsp;</td>
														<td>&nbsp;</td>
														<td width="73">&nbsp;</td>
														<td>&nbsp;</td>
														<td>&nbsp;</td>
													</tr>
												</table>




											</div>
										</div>

									</div>


								</div>
							</div>
						</div>
					</div>
					<!-- end: INVOICE -->



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
	<script src="vendor/Chart.js/Chart.min.js"></script>
	<script src="vendor/jquery.sparkline/jquery.sparkline.min.js"></script>
	<!-- end: JAVASCRIPTS REQUIRED FOR THIS PAGE ONLY -->
	<!-- start: CLIP-TWO JAVASCRIPTS -->
	<script src="assets/js/main.js"></script>
	<!-- start: JavaScript Event Handlers for this page -->
	<script src="assets/js/index.js"></script>
	<script>
		jQuery(document).ready(function() {
			Main.init();
			Index.init();
		});
	</script>
	<!-- end: JavaScript Event Handlers for this page -->
	<!-- end: CLIP-TWO JAVASCRIPTS -->
</body>
</html>
