<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.mfu.*"%>
<%@ page import="com.mfu.entity.*"%>
<%@ page import="javax.naming.*"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>

<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<!-- start: HEAD -->
<head>
<title>Division of Student Development Affairs</title>
<link rel="shortcut icon" href="assets/images/mfumini.png"
	type="image/png">
<!-- start: META -->
<!--[if IE]><meta http-equiv='X-UA-Compatible' content="IE=edge,IE=9,IE=8,chrome=1" /><![endif]-->
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
<link rel="stylesheet" href="assets/css/lightbox.css" type="text/css"
	media="screen" />

<script src="assets/js/prototype.js" type="text/javascript"></script>
<script src="assets/js/scriptaculous.js?load=effects"
	type="text/javascript"></script>
<script src="assets/js/lightbox.js" type="text/javascript"></script>

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
										<i class="ti-pencil"></i>
									</div>
									<div class="item-inner">
										<span class="title"> บันทึกข้อมูลเกี่ยวกับทุนการศึกษา </span>
									</div>
								</div>
						</a></li>
						<li><a href="listAnnounce.html">
								<div class="item-content">
									<div class="item-media">
										<i class="ti-pencil-alt"></i>
									</div>
									<div class="item-inner">
										<span class="title"> บันทึกประกาศทุนการศึกษา</span>
									</div>
								</div>
						</a></li>
						</li>
						<li><a href="requireEnroll.html">
								<div class="item-content">
									<div class="item-media">
										<i class="ti-pencil-alt"></i>
									</div>
									<div class="item-inner">
										<span class="title"> คำร้องขอทุนการศึกษา</span>
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
										<span class="fa-stack"><i class="ti-blackboard"></i></span>
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
						src="assets/images/logo.png" width="240" />
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

					<!-- start: PANEL TOOLS -->
					<div class="container-fluid container-fullw">
						<div class="row">
							<div class="col-md-12">
								<h2 class="mainTitle">ฝ่ายทุนการศึกษา มหาวิทยาลัยแม่ฟ้าหลวง</h2>
								<h4>
									<span class="mainDescription">รายละเอียดเกี่ยวกับทุนการศึกษาที่ประกาศ</span>
								</h4>
								<hr>
								<%
									Hashtable jndiProp = new Hashtable();
									jndiProp.put(Context.URL_PKG_PREFIXES, "org.jboss.ejb.client.naming");
									Context context = new InitialContext(jndiProp);

									AnnounceScholarshipInfoService ancServ = (AnnounceScholarshipInfoService) context
											.lookup("ejb:/HelloEJB/AnnounceScholarshipInfoServiceBean!com.mfu.AnnounceScholarshipInfoService");

									long id = Long.parseLong(request.getParameter("id"));
									AnnounceScholarshipInfo anc = ancServ.findAnnounceScholarshipInfoById(id);
								%>
								<div align="right" class="col-md-10">
									<a
										href="editAnnounceSchInfo.do?id=<%=anc.getAnnounceSchInfo_Id()%>">
										<i class="fa fa-pencil"></i> แก้ไขประกาศทุนการศึกษา
									</a>
								</div>
								<br>
								<br>
								<div class="row">
									<div class="col-md-10">
										<div class="panel panel-white no-radius">
											<div class="panel-heading border-light">
												<h4 class="panel-title">ชื่อทุนการศึกษาที่ประกาศ</h4>
												<div class="panel-tools">
													<a data-original-title="Refresh" data-toggle="tooltip"
														data-placement="top"
														class="btn btn-transparent btn-sm panel-refresh" href="#"><i
														class="ti-reload"></i></a>
												</div>


											</div>
											<div class="panel-body">
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


												<div class="panel-body">

													<div class="row">
														<div class="col-xs-6 col-sm-4 col-md-4">

															<a class="thumbnail" href="assets/images/00001.jpg"
																rel="lightbox"><img src="assets/images/00001.jpg" /></a>



														</div>
														<div class="col-xs-6 col-sm-4 col-md-4">
															<a class="thumbnail" href="assets/images/00002.jpg"
																rel="lightbox"><img src="assets/images/00002.jpg" /></a>
														</div>

													</div>
												</div>
											</div>
										</div>
									</div>
								</div>

							</div>
						</div>
					</div>
					<!-- end: PANEL TOOLS -->

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
	<!-- start: CLIP-TWO JAVASCRIPTS -->
	<script src="assets/js/main.js"></script>

	<!-- start: JavaScript Event Handlers for this page -->
	<script>
		jQuery(document).ready(function() {
			Main.init();
		});
	</script>
	<!-- end: JavaScript Event Handlers for this page -->
	<!-- end: CLIP-TWO JAVASCRIPTS -->
</body>
</html>
