<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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
<link href="bower_components/magnific-popup/dist/magnific-popup.css"
	rel="stylesheet" media="screen" />
<link href="assets2/css/styles.css" rel="stylesheet" media="screen">
<link href="assets2/css/plugins.css" rel="stylesheet" media="screen">
<!-- end: MAIN CSS -->

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
						<a href="Home.html" class="navbar-brand"> <img
							src="assets2/images/logo.png">
						</a>
						<!-- end: LOGO -->
					</div>
					<!-- start: NAVBAR -->
					<div class="navbar-collapse collapse">
						<ul class="nav navbar-nav navbar-right">
							<li><a href="listRegisterMember.do">หน้าแรก</a></li>
							<li class="active"><a href="#">สมัครสมาชิก</a></li>
							<li><a href="LoginStd.jsp">เข้าสู่ระบบ</a></li>

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

							<div class="col-md-9 col-md-offset-1">
								<h3 data-appears-class="fadeInDown" data-appears-delay="300">แบบฟอร์มสมัครทุนการศึกษา</h3>
								<hr>
								<div class="panel panel-white min-height-200">

									<div class="panel-body">
										<script language="javascript">
											function fncSubmit() {

												if (document.form.Student_Password.value != document.form.Student_ConfirmPass.value) {
													alert('รหัสผ่านไม่ตรงกัน กรุณากรอกใหม่อีกครั้ง');
													document.form.Student_ConfirmPass
															.focus();
													return false;
												}
												document.form.submit();
											}
										</script>
										<form:form name="form" method="post"
											action="saveRegisterMember.do" commandName="register"
											OnSubmit="return fncSubmit();">
											<form:hidden path="RegisterId" />
											<table width="841" border="0">
												<tr>
													<td width="33" height="36">ชื่อ</td>
													<td width="103" height="36">
														<div class="form-group">
															<select name="Student_Title" size="1" id="Student_Title">
																<option value="" selected="selected">คำนำหน้าชื่อ</option>
																<option value="นาย">นาย</option>
																<option value="นางสาว">นางสาว</option>
															</select>
														</div>
													</td>
													<td width="170"><input type="text"
														name="Student_Fname" required></td>
													<td width="116">นามสกุล</td>
													<td width="167"><input type="text"
														name="Student_Lname" required></td>
													<td width="86" align="left">&nbsp;</td>
													<td width="136">&nbsp;</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
													<td>รหัสบัตรประชาชน</td>
													<td><input name="Citizen_Id" required></td>
													<td>วัน/เดือน/ปี เกิด</td>
													<td colspan="2"><select name="date_Birth" size="1"
														id="date_Birth" required>
															<option value="" selected="selected">วัน</option>
															<option value="1">1</option>
															<option value="2">2</option>
															<option value="3">3</option>
															<option value="4">4</option>
															<option value="5">5</option>
															<option value="6">6</option>
															<option value="7">7</option>
															<option value="8">8</option>
															<option value="9">9</option>
															<option value="10">10</option>
															<option value="11">11</option>
															<option value="12">12</option>
															<option value="13">13</option>
															<option value="14">14</option>
															<option value="15">15</option>
															<option value="16">16</option>
															<option value="17">17</option>
															<option value="18">18</option>
															<option value="19">19</option>
															<option value="20">20</option>
															<option value="21">21</option>
															<option value="22">22</option>
															<option value="23">23</option>
															<option value="24">24</option>
															<option value="25">25</option>
															<option value="26">26</option>
															<option value="27">27</option>
															<option value="28">28</option>
															<option value="29">29</option>
															<option value="30">30</option>
															<option value="31">31</option>
													</select> <select name="month_Birth" size="1" id="month_Birth"
														required>
															<option value="" selected="selected">เดือน</option>
															<option value="มกราคม">มกราคม</option>
															<option value="กุมภาพันธ์">กุมภาพันธ์</option>
															<option value="มีนาคม">มีนาคม</option>
															<option value="เมษายน">เมษายน</option>
															<option value="พฤษภาคม">พฤษภาคม</option>
															<option value="มิถุนายน">มิถุนายน</option>
															<option value="กรกฎาคม">กรกฎาคม</option>
															<option value="สิงหาคม">สิงหาคม</option>
															<option value="กันยายน">กันยายน</option>
															<option value="ตุลาคม">ตุลาคม</option>
															<option value="พฤศจิกายน">พฤศจิกายน</option>
															<option value="ธันวาคม">ธันวาคม</option>
													</select> <select name="year_Birth" size="1" id="year_Birth"
														required>
															<option value="" selected="selected">ปีเกิด</option>
															<option value="2530">2530</option>
															<option value="2531">2531</option>
															<option value="2532">2532</option>
															<option value="2533">2533</option>
															<option value="2534">2534</option>
															<option value="2535">2535</option>
															<option value="2536">2536</option>
															<option value="2537">2537</option>
															<option value="2538">2538</option>
															<option value="2539">2539</option>
															<option value="2540">2540</option>
															<option value="2541">2541</option>
															<option value="2542">2542</option>
															<option value="2543">2543</option>
															<option value="2544">2544</option>
															<option value="2545">2545</option>
															<option value="2546">2546</option>
															<option value="2547">2547</option>
															<option value="2548">2548</option>
															<option value="2549">2549</option>
															<option value="2550">2550</option>
															<option value="2551">2551</option>
															<option value="2552">2552</option>
															<option value="2553">2553</option>
															<option value="2554">2554</option>
															<option value="2555">2555</option>
															<option value="2556">2556</option>
															<option value="2557">2557</option>
															<option value="2558">2558</option>
															<option value="2559">2559</option>
															<option value="2560">2560</option>
													</select></td>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
													<td>รหัสนักศึกษา</td>
													<td><input name="Student_Id" required></td>
													<td>สำนักวิชา</td>
													<td><input name="Student_School" required></td>
													<td>สาขาวิชา</td>
													<td><input name="Student_Major" required></td>
												</tr>
												<tr>
													<td>&nbsp;</td>
													<td>อีเมล</td>
													<td><input type="email" name="Student_Email" required></td>
													<td>&nbsp;</td>
													<td>&nbsp;</td>
													<td>&nbsp;</td>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
													<td>รหัสผ่านผู้ใช้</td>
													<td><input type="password" name="Student_Password"
														required></td>
													<td>ยืนยันรหัสผ่าน</td>
													<td><input type="password" name="Student_ConfirmPass"
														required></td>
													<td>&nbsp;</td>
													<td>&nbsp;</td>
												</tr>
											</table>
											<p>
												<br> <br>
											</p>
											<table width="841">
												<tr>
													<td>&nbsp;</td>
													<td></td>
													<td colspan="2" align="right"><a
														href="listRegisterMember.do"><input type="button"
															value="ยกเลิก" class="btn btn-wide btn-primary"></a>&nbsp;&nbsp;</td>
													<td colspan="2" align="left"><input type="submit"
														value="สมัครใช้งาน" class="btn btn-wide btn-primary"></td>
													<td>&nbsp;</td>
													<td>&nbsp;</td>
												</tr>
											</table>

										</form:form>
									</div>
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

</body>
</html>
