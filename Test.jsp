<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.mfu.*"%>
<%@ page import="com.mfu.entity.*"%>
<%@ page import="javax.naming.*"%>
<%@ page import="java.util.*"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

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
							<%
								Hashtable jndiProp = new Hashtable();
								jndiProp.put(Context.URL_PKG_PREFIXES, "org.jboss.ejb.client.naming");
								Context context = new InitialContext(jndiProp);

								RegisterMemberService regServ = (RegisterMemberService) context
										.lookup("ejb:/HelloEJB/RegisterMemberServiceBean!com.mfu.RegisterMemberService");

								RegisterScholarshipService regSch = (RegisterScholarshipService) context
										.lookup("ejb:/HelloEJB/RegisterScholarshipServiceBean!com.mfu.RegisterScholarshipService");

								long StdId = Long.parseLong(request.getParameter("StdId"));
								RegisterMember sch = regServ.findRegisterMemberById(StdId);
							%>

							<div class="col-md-9 col-md-offset-1">
								<h3 data-appears-class="fadeInDown" data-appears-delay="300">แบบฟอร์มบันทึกคำร้องขอทุนการศึกษา</h3>
								<hr>
								<div class="panel panel-white min-height-200">

									<div class="panel-body">

										<form:form action="saveRegisterSch.do" method="post"
											commandName="regScholarship">
											<form:hidden path="registerSch_Id" />
											<table width="890" border="0">
												<tr>
													<td height="36" colspan="2"><strong>ข้อมูลเบื้องต้น</strong></td>
													<td width="126">&nbsp;</td>
													<td width="153">&nbsp;</td>
													<td width="103">&nbsp;</td>
													<td width="201" align="left">&nbsp;</td>
												</tr>
												<tr>
													<td width="113" height="36">ชื่อ</td>
													<td width="168" height="36"><input type="text"
														class="form-control" value="<%=sch.getStudent_Fname()%>"
														readonly /></td>
													<td>&nbsp;นามสกุล</td>
													<td><input type="text" class="form-control"
														value="<%=sch.getStudent_Lname()%>" readonly /></td>
													<td>&nbsp;เชื้อชาติ</td>
													<td align="left"><input type="text"
														class="form-control" name="student_Nationality" /></td>
												</tr>
												<tr>
													<td height="36">สัญชาติ</td>
													<td height="36"><input type="text"
														class="form-control" name="student_Nationality" /></td>
													<td>&nbsp;วัน/เดือน/ปี เกิด</td>
													<td><input type="text"
														value="<%=sch.getDate_Birth()%>/<%=sch.getMonth_Birth()%>/<%=sch.getYear_Birth()%>"
														readonly /></td>
													<td>&nbsp;รหัสนักศึกษา</td>
													<td align="left"><input type="text" maxlength="10"
														class="form-control" value="<%=sch.getStudent_Id()%>"
														readonly /></td>
												</tr>
												<tr>
													<td height="36">สำนักวิชา</td>
													<td height="36"><input type="text"
														class="form-control" value="<%=sch.getStudent_School()%>"
														readonly /></td>
													<td>สาขาวิชา</td>
													<td><input type="text" class="form-control"
														value="<%=sch.getStudent_Major()%>" readonly /></td>
													<td>&nbsp;ชั้นปี</td>
													<td align="left"><select name="student_Level" size="1">
															<option value="" selected="selected">ชั้นปี</option>
															<option value="1">1</option>
															<option value="2">2</option>
															<option value="3">3</option>
															<option value="4">4</option>
													</select></td>
												</tr>
												<tr>
													<td height="36">คะแนนเฉลี่ยรวม</td>
													<td height="36"><input type="text"
														class="form-control" name="student_Gpax" /></td>
													<td>&nbsp;อาจารย์ที่ปรึกษา</td>
													<td><input type="text" class="form-control"
														name="student_Advisor" /></td>
													<td>&nbsp;</td>
													<td align="right" valign="bottom">&nbsp;</td>
												</tr>
											</table>
											<table width="962">
												<tr>
													<td height="36" colspan="3"><strong>ที่อยู่ตามทะเบียนบ้าน
															(ภูมิลำเนาเดิม)</strong></td>
													<td width="153"><input type="hidden"
														name="student_AddressType" value="ที่อยู่ตามทะเบียนบ้าน"></td>
													<td width="81">&nbsp;</td>
													<td width="153" align="left">&nbsp;</td>
													<td width="80">&nbsp;</td>
													<td width="180"></td>

												</tr>
												<tr>
													<td width="58" height="36">หมู่บ้าน</td>
													<td width="152" height="36"><input type="text"
														class="form-control" name="" /></td>
													<td width="69">&nbsp;เลขที่</td>
													<td><input type="text" class="form-control"
														name="student_HouNo" /></td>
													<td>&nbsp;หมู่ที่</td>
													<td align="left"><input type="text"
														class="form-control" name="student_vilNo" /></td>
													<td>&nbsp;ถนน</td>
													<td><input type="text" class="form-control"
														name="student_Road" /></td>

												</tr>
												<tr>
													<td height="36">ตำบล</td>
													<td height="36"><input type="text"
														class="form-control" name="student_subDist" /></td>
													<td>&nbsp;อำเภอ</td>
													<td><input type="text" class="form-control"
														name="student_Dist" /></td>
													<td>&nbsp;จังหวัด</td>
													<td align="left"><input type="text"
														name="student_Province" /></td>
													<td>&nbsp;รหัสไปรษณีย์</td>
													<td><input type="text" class="form-control"
														name="student_Postcode" /></td>

												</tr>
											</table>
											<table width="599" height="36">
												<tr>
													<td width="103">โทรศัพท์บ้าน</td>
													<td width="162"><input type="text"
														class="form-control" name="student_TelephoneNo" /></td>

													<td width="98">&nbsp;โทรศัพท์มือถือ</td>
													<td width="216"><input type="text"
														class="form-control" name="student_MobileNo" /></td>

												</tr>
											</table>
											<table width="367">
												<tr>
													<td colspan="2" height="36"><strong>ที่อยู่ปัจจุบัน
													</strong><input type="hidden" name="student_AddressType"
														value="ที่อยู่ปัจจุบัน"></td>
													<td width="49">หอพัก</td>
													<td width="221"><input type="text"
														class="form-control" name="student_Dormitory" /></td>
												</tr>
											</table>
											<table width="962">
												<tr>
													<td width="71" height="36">หมู่บ้าน</td>
													<td width="154"><input type="text"
														class="form-control" name="" /></td>
													<td width="60">&nbsp;เลขที่</td>
													<td width="154"><input type="text"
														class="form-control" name="student_HouNo" /></td>
													<td width="63">&nbsp;หมู่ที่</td>
													<td width="154"><input type="text"
														class="form-control" name="student_vilNo" /></td>
													<td width="126">&nbsp;ถนน</td>
													<td width="188"><input type="text"
														class="form-control" name="student_Road" /></td>
												</tr>
												<tr>
													<td>ตำบล</td>
													<td><input type="text" class="form-control"
														name="student_subDist" /></td>
													<td>&nbsp;อำเภอ</td>
													<td><input type="text" class="form-control"
														name="student_Dist" /></td>
													<td>&nbsp;จังหวัด</td>
													<td><input type="text" class="form-control"
														name="student_Province" /></td>
													<td>&nbsp;รหัสไปรษณีย์</td>
													<td><input type="text" class="form-control"
														name="student_Postcode" /></td>
												</tr>
											</table>
											<p>
												<br> <br>
											</p>
											<table width="841">
												<tr>
													<td>&nbsp;</td>
													<td></td>

													<td colspan="4" align="center"><input type="submit"
														value="บันทึก" class="btn btn-wide btn-primary"></td>
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
