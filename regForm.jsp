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
						<a href="#" class="navbar-brand"> <img
							src="assets2/images/logo.png">
						</a>
						<!-- end: LOGO -->

					</div>
					<!-- start: NAVBAR -->
					<div class="navbar-collapse collapse">
						<ul class="nav navbar-nav navbar-right">
							<li><a href="index-student.html"> หน้าแรก </a></li>
							<li><a href="index-pj.html">ออกจากระบบ</a></li>

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
							<div class="col-md-12">
								<h3 data-appears-class="fadeInDown" data-appears-delay="300">แบบฟอร์มรับสมัครทุนการศึกษามหาวิทยาลัยแม่ฟ้าหลวง</h3>
								<hr>
			<%
										Hashtable jndiProp = new Hashtable();
										jndiProp.put(Context.URL_PKG_PREFIXES,
												"org.jboss.ejb.client.naming");
										Context context = new InitialContext(jndiProp);

										RegisterMemberService regServ = (RegisterMemberService) context
												.lookup("ejb:/HelloEJB/RegisterMemberServiceBean!com.mfu.RegisterMemberService");
										
										long id = Long.parseLong(request.getParameter("id"));
										RegisterMember sch = regServ.findRegisterMemberById(id);
									%>
								
								<div id="accordion" class="checkout">
									<div class="panel checkout-step">
										<div>
											<span class="checkout-step-number">1</span>
											<h4 class="checkout-step-title">
												<a role="button" data-toggle="collapse"
													data-parent="#accordion" href="#collapseOne">ข้อมูลส่วนตัว</a>
											</h4>
										</div>
										<div id="collapseOne" class="collapse in">
											<div class="checkout-step-body">
												<div class="row">
													<div class="col-md-12">
														<div class="checkout-login">
															<form>
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
																			class="form-control"  /></td>
																		<td>&nbsp;นามสกุล</td>
																		<td><input type="text" class="form-control" /></td>
																		<td>&nbsp;เชื้อชาติ</td>
																		<td align="left"><input type="text"
																			class="form-control" /></td>
																	</tr>
																	<tr>
																		<td height="36">สัญชาติ</td>
																		<td height="36"><input type="text"
																			class="form-control" /></td>
																		<td>&nbsp;วัน/เดือน/ปี เกิด</td>
																		<td><input type="text" /></td>
																		<td>&nbsp;รหัสนักศึกษา</td>
																		<td align="left"><input type="text"
																			maxlength="10" class="form-control" /></td>
																	</tr>
																	<tr>
																		<td height="36">สำนักวิชา</td>
																		<td height="36"><input type="text" class="form-control" /></td>
																		<td>สาขาวิชา</td>
																		<td><input type="text" class="form-control" /></td>
																		<td>&nbsp;ชั้นปี</td>
																		<td align="left"><select name="" size="1" id="">
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
																			class="form-control" /></td>
																		<td>&nbsp;อาจารย์ที่ปรึกษา</td>
																		<td><input type="text" class="form-control" /></td>
																		<td>&nbsp;</td>
																		<td align="right" valign="bottom">&nbsp;</td>
																	</tr>
																</table>
																<table width="962">
																	<tr>
																		<td height="36" colspan="3"><strong>ที่อยู่ตามทะเบียนบ้าน
																				(ภูมิลำเนาเดิม)</strong></td>
																		<td width="153">&nbsp;</td>
																		<td width="81">&nbsp;</td>
																		<td width="153" align="left">&nbsp;</td>
																		<td width="80">&nbsp;</td>
																		<td width="180"></td>

																	</tr>
																	<tr>
																		<td width="58" height="36">หมู่บ้าน</td>
																		<td width="152" height="36"><input type="text"
																			class="form-control" /></td>
																		<td width="69">&nbsp;เลขที่</td>
																		<td><input type="text" class="form-control" /></td>
																		<td>&nbsp;หมู่ที่</td>
																		<td align="left"><input type="text"
																			class="form-control" /></td>
																		<td>&nbsp;ถนน</td>
																		<td><input type="text" class="form-control" /></td>

																	</tr>
																	<tr>
																		<td height="36">ตำบล</td>
																		<td height="36"><input type="text"
																			class="form-control" /></td>
																		<td>&nbsp;อำเภอ</td>
																		<td><input type="text" class="form-control" /></td>
																		<td>&nbsp;จังหวัด</td>
																		<td align="left"><input type="text" /></td>
																		<td>&nbsp;รหัสไปรษณีย์</td>
																		<td><input type="text" class="form-control" /></td>

																	</tr>
																</table>
																<table width="599" height="36">
																	<tr>
																		<td width="103">โทรศัพท์บ้าน</td>
																		<td width="162"><input type="text"
																			class="form-control" /></td>

																		<td width="98">&nbsp;โทรศัพท์มือถือ</td>
																		<td width="216"><input type="text"
																			class="form-control" /></td>

																	</tr>
																</table>
																<table width="367">
																	<tr>
																		<td colspan="2" height="36"><strong>ที่อยู่ปัจจุบัน
																		</strong></td>
																		<td width="49">หอพัก</td>
																		<td width="221"><input type="text"
																			class="form-control" /></td>
																	</tr>
																</table>
																<table width="962">
																	<tr>
																		<td width="71" height="36">หมู่บ้าน</td>
																		<td width="154"><input type="text"
																			class="form-control" /></td>
																		<td width="60">&nbsp;เลขที่</td>
																		<td width="154"><input type="text"
																			class="form-control" /></td>
																		<td width="63">&nbsp;หมู่ที่</td>
																		<td width="154"><input type="text"
																			class="form-control" /></td>
																		<td width="126">&nbsp;ถนน</td>
																		<td width="188"><input type="text"
																			class="form-control" /></td>
																	</tr>
																	<tr>
																		<td>ตำบล</td>
																		<td><input type="text" class="form-control" /></td>
																		<td>&nbsp;อำเภอ</td>
																		<td><input type="text" class="form-control" /></td>
																		<td>&nbsp;จังหวัด</td>
																		<td><input type="text" class="form-control" /></td>
																		<td>&nbsp;รหัสไปรษณีย์</td>
																		<td><input type="text" class="form-control" /></td>
																	</tr>
																</table>
																<br>
																<div class="col-md-11" align="right">
																	<a class="btn btn-primary " role="button"
																		data-toggle="collapse" href="#otp-verifaction">ต่อไป</a>
																</div>
																<!-- add class disabled to inactive button -->
															</form>
														</div>
														<!-- /input-group -->
													</div>
													<!-- /.col-lg-6 -->
												</div>

											</div>
										</div>
									</div>
									<div class="panel checkout-step">
										<div role="tab" id="headingTwo">
											<span class="checkout-step-number">2</span>
											<h4 class="checkout-step-title">
												<a class="collapsed" role="button" data-toggle="collapse"
													data-parent="#accordion" href="#collapseTwo">ข้อมูลเกี่ยวกับครอบครัว</a>
											</h4>
										</div>
										<div id="collapseTwo" class="panel-collapse collapse">
											<div class="checkout-step-body">
												<div class="checout-address-step">
													<div class="row">
														<form class="">
															<!-- Multiple Radios (inline) -->
															<div class="form-group">
																<div class="col-md-12 ">
																	<table width="514" height="262" border="0">
																		<tr>
																			<td colspan="5"><strong>สถานภาพ/ข้อมูลทางครอบครัว</strong></td>
																		</tr>
																		<tr>
																			<td width="29">&nbsp;</td>
																			<td colspan="4">&nbsp;<strong>สถานภาพสมรสของบิดา
																					มารดา</strong></td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td width="38">&nbsp;</td>
																			<td height="36" colspan="3"><select name=""
																				size="1" id="">
																					<option value="" selected="selected">สถานภาพครอบครัว</option>
																					<option value="สถานภาพครอบครัว">สมรสและอยู่ด้วยกัน</option>
																					<option
																						value="สมรสและแยกกันอยู่เนื่องจากประกอบอาชีพ">สมรสและแยกกันอยู่เนื่องจากประกอบอาชีพ</option>
																			</select></td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td>&nbsp;</td>
																			<td width="23"><input type="checkbox"
																				name="CheckboxGroup1_" value="checkbox"
																				id="CheckboxGroup1_1"></td>
																			<td width="216">หย่าและแยกกันอยู่โดยท่าอาศัยอยู่กับ
																			</td>
																			<td width="186"><input type="text"
																				class="form-control" /></td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td>&nbsp;</td>
																			<td><input type="checkbox"
																				name="CheckboxGroup1_" value="checkbox"
																				id="CheckboxGroup1_1"></td>
																			<td width="216">บิดาถึงแก่กรรมเมื่อ พ.ศ.</td>
																			<td width="186"><input type="text"
																				class="form-control" /></td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td>&nbsp;</td>
																			<td><input type="checkbox"
																				name="CheckboxGroup1_" value="checkbox"
																				id="CheckboxGroup1_1"></td>
																			<td width="216">มารดาถึงแก่กรรมเมื่อ พ.ศ.</td>
																			<td width="186"><input type="text"
																				class="form-control" /></td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td>&nbsp;</td>
																			<td><input type="checkbox"
																				name="CheckboxGroup1_" value="checkbox"
																				id="CheckboxGroup1_1"></td>
																			<td width="216">อื่นๆ</td>
																			<td width="186"><input type="text"
																				class="form-control" /></td>
																		</tr>
																	</table>
																	<table width="606" border="0">
																		<tr>
																			<td width="36">&nbsp;</td>
																			<td><strong>ข้อมูลเกี่ยวกับบิดา</strong></td>
																		</tr>
																	</table>
																	<br>
																	<table width="1060" border="0">
																		<tr>
																			<td width="68">ชื่อ นาย</td>
																			<td width="155"><input type="text" /></td>
																			<td width="136" align="right">อายุ&nbsp;</td>
																			<td><input type="text" /></td>
																			<td width="45">&nbsp;ปี</td>
																			<td width="57">อาชีพ</td>
																			<td colspan="2"><input type="text" /></td>
																			<td width="163">&nbsp;</td>
																		</tr>
																		<tr>
																			<td height="28">ตำแหน่ง</td>
																			<td><input type="text" /></td>
																			<td align="right">รายได้เดือนละ&nbsp;</td>
																			<td width="144"><input type="text" /></td>
																			<td>บาท</td>
																			<td align="center">หรือ</td>
																			<td width="81">รายได้ปีละ</td>
																			<td width="173"><input type="text" /></td>
																			<td>&nbsp;บาท</td>
																		</tr>
																	</table>
																	<table width="953" border="0">
																		<tr>
																			<td width="139">เลขบัตรประชาชน</td>
																			<td width="183"><input type="text" /></td>
																			<td width="102">โทรศัพท์มือถือ</td>
																			<td width="168"><input type="text" /></td>
																			<td width="51">&nbsp;</td>
																			<td colspan="3">&nbsp;</td>
																		</tr>
																		<tr>
																			<td><strong>ที่อยู่</strong> หมู่บ้าน</td>
																			<td><input type="text" /></td>
																			<td>เลขที่</td>
																			<td><input type="text" /></td>
																			<td>&nbsp;หมู่ที่</td>
																			<td colspan="2"><input type="text" /></td>
																			<td width="74">&nbsp;</td>
																		</tr>
																		<tr>
																			<td>ถนน</td>
																			<td><input type="text" /></td>
																			<td>ตำบล</td>
																			<td><input type="text" /></td>
																			<td>&nbsp;อำเภอ</td>
																			<td colspan="2"><input type="text" /></td>
																			<td>&nbsp;</td>
																		</tr>
																		<tr>
																			<td>จังหวัด</td>
																			<td><input type="text" /></td>
																			<td>รหัสไปรษณีย์</td>
																			<td><input type="text" /></td>
																			<td colspan="2">&nbsp;</td>
																			<td width="203">&nbsp;</td>
																			<td>&nbsp;</td>
																		</tr>
																		<tr>
																			<td>โทรศัพท์บ้าน</td>
																			<td><input type="text" /></td>
																			<td>E-mail</td>
																			<td><input type="text" /></td>
																			<td>&nbsp;</td>
																			<td colspan="3">&nbsp;</td>
																		</tr>
																		<tr>
																			<td><strong>ที่ทำงาน</strong></td>
																			<td><input type="text" /></td>
																			<td>เลขที่</td>
																			<td><input type="text" /></td>
																			<td colspan="2">&nbsp;หมู่ที่</td>
																			<td><input type="text" /></td>
																			<td>&nbsp;</td>
																		</tr>
																		<tr>
																			<td>ถนน</td>
																			<td><input type="text" /></td>
																			<td>ตำบล</td>
																			<td><input type="text" /></td>
																			<td colspan="2">&nbsp;อำเภอ</td>
																			<td><input type="text" /></td>
																			<td>&nbsp;</td>
																		</tr>
																		<tr>
																			<td>จังหวัด</td>
																			<td><input type="text" /></td>
																			<td>รหัสไปรษณีย์</td>
																			<td><input type="text" /></td>
																			<td>&nbsp;</td>
																			<td colspan="3">&nbsp;</td>
																		</tr>
																		<tr>
																			<td>เบอร์โทรศัพท์</td>
																			<td><input type="text" /></td>
																			<td>โทรสาร</td>
																			<td><input type="text" /></td>
																			<td>&nbsp;</td>
																			<td colspan="3">&nbsp;</td>
																		</tr>
																	</table>
																	<br>
																	<table width="606" border="0">
																		<tr>
																			<td width="36">&nbsp;</td>

																			<td width="523"><strong>ข้อมูลเกี่ยวกับมารดา</strong></td>
																		</tr>
																	</table>

																	<br>
																	<table width="1060" border="0">
																		<tr>
																			<td width="68">ชื่อ นาง</td>
																			<td width="155"><input type="text" /></td>
																			<td width="136" align="right">อายุ&nbsp;</td>
																			<td><input type="text" /></td>
																			<td width="45">&nbsp;ปี</td>
																			<td width="57">อาชีพ</td>
																			<td colspan="2"><input type="text" /></td>
																			<td width="163">&nbsp;</td>
																		</tr>
																		<tr>
																			<td height="28">ตำแหน่ง</td>
																			<td><input type="text" /></td>
																			<td align="right">รายได้เดือนละ&nbsp;</td>
																			<td width="144"><input type="text" /></td>
																			<td>บาท</td>
																			<td align="center">หรือ</td>
																			<td width="81">รายได้ปีละ</td>
																			<td width="173"><input type="text" /></td>
																			<td>&nbsp;บาท</td>
																		</tr>
																	</table>
																	<table width="953" border="0">
																		<tr>
																			<td width="139">เลขบัตรประชาชน</td>
																			<td width="183"><input type="text" /></td>
																			<td width="102">โทรศัพท์มือถือ</td>
																			<td width="168"><input type="text" /></td>
																			<td width="51">&nbsp;</td>
																			<td colspan="3">&nbsp;</td>
																		</tr>
																		<tr>
																			<td><strong>ที่อยู่</strong> หมู่บ้าน</td>
																			<td><input type="text" /></td>
																			<td>เลขที่</td>
																			<td><input type="text" /></td>
																			<td>&nbsp;หมู่ที่</td>
																			<td colspan="2"><input type="text" /></td>
																			<td width="74">&nbsp;</td>
																		</tr>
																		<tr>
																			<td>ถนน</td>
																			<td><input type="text" /></td>
																			<td>ตำบล</td>
																			<td><input type="text" /></td>
																			<td>&nbsp;อำเภอ</td>
																			<td colspan="2"><input type="text" /></td>
																			<td>&nbsp;</td>
																		</tr>
																		<tr>
																			<td>จังหวัด</td>
																			<td><input type="text" /></td>
																			<td>รหัสไปรษณีย์</td>
																			<td><input type="text" /></td>
																			<td colspan="2">&nbsp;</td>
																			<td width="203">&nbsp;</td>
																			<td>&nbsp;</td>
																		</tr>
																		<tr>
																			<td>โทรศัพท์บ้าน</td>
																			<td><input type="text" /></td>
																			<td>E-mail</td>
																			<td><input type="text" /></td>
																			<td>&nbsp;</td>
																			<td colspan="3">&nbsp;</td>
																		</tr>
																		<tr>
																			<td><strong>ที่ทำงาน</strong></td>
																			<td><input type="text" /></td>
																			<td>เลขที่</td>
																			<td><input type="text" /></td>
																			<td colspan="2">&nbsp;หมู่ที่</td>
																			<td><input type="text" /></td>
																			<td>&nbsp;</td>
																		</tr>
																		<tr>
																			<td>ถนน</td>
																			<td><input type="text" /></td>
																			<td>ตำบล</td>
																			<td><input type="text" /></td>
																			<td colspan="2">&nbsp;อำเภอ</td>
																			<td><input type="text" /></td>
																			<td>&nbsp;</td>
																		</tr>
																		<tr>
																			<td>จังหวัด</td>
																			<td><input type="text" /></td>
																			<td>รหัสไปรษณีย์</td>
																			<td><input type="text" /></td>
																			<td>&nbsp;</td>
																			<td colspan="3">&nbsp;</td>
																		</tr>
																		<tr>
																			<td>เบอร์โทรศัพท์</td>
																			<td><input type="text" /></td>
																			<td>โทรสาร</td>
																			<td><input type="text" /></td>
																			<td>&nbsp;</td>
																			<td colspan="3">&nbsp;</td>
																		</tr>
																	</table>
																	<br>
																	<table width="606" border="0">
																		<tr>
																			<td width="36">&nbsp;</td>

																			<td width="523"><strong>ข้อมูลเกี่ยวกับพี่-น้อง
																					ร่วมบิดา-มารดา(รวมตัวนักศึกษา)</strong></td>
																		</tr>
																	</table>
																	<br>
																	<table width="727" border="1">
																		<tr>
																			<td height="42" align="center">ลำดับ</td>
																			<td align="center">ชื่อ-สกุล</td>
																			<td align="center">เกิด พ.ศ</td>
																			<td align="center">อายุ</td>
																			<td align="center">ระดับการศึกษา</td>
																			<td align="center">การประกอบอาชีพ</td>
																			<td align="center">รายได้เฉลี่ยเดือนละ</td>
																		</tr>
																		<tr>
																			<td align="center">1.</td>
																			<td><input type="text" /></td>
																			<td><input type="text" /></td>
																			<td><input type="text" /></td>
																			<td><input type="text" /></td>
																			<td><input type="text" /></td>
																			<td><input type="text" /></td>
																		</tr>
																		<tr>
																			<td align="center">2.</td>
																			<td><input type="text" /></td>
																			<td><input type="text" /></td>
																			<td><input type="text" /></td>
																			<td><input type="text" /></td>
																			<td><input type="text" /></td>
																			<td><input type="text" /></td>
																		</tr>
																		<tr>
																			<td align="center">3.</td>
																			<td><input type="text" /></td>
																			<td><input type="text" /></td>
																			<td><input type="text" /></td>
																			<td><input type="text" /></td>
																			<td><input type="text" /></td>
																			<td><input type="text" /></td>
																		</tr>
																		<tr>
																			<td align="center">4.</td>
																			<td><input type="text" /></td>
																			<td><input type="text" /></td>
																			<td><input type="text" /></td>
																			<td><input type="text" /></td>
																			<td><input type="text" /></td>
																			<td><input type="text" /></td>
																		</tr>
																		<tr>
																			<td align="center">5.</td>
																			<td><input type="text" /></td>
																			<td><input type="text" /></td>
																			<td><input type="text" /></td>
																			<td><input type="text" /></td>
																			<td><input type="text" /></td>
																			<td><input type="text" /></td>
																		</tr>
																	</table>

																</div>
															</div>


															<br>

															<!-- Button -->

														</form>
													</div>
												</div>
												<div class="col-md-11" align="right">
													<a class="btn btn-primary " role="button"
														data-parent="#accordion" href="#collapseThree">ต่อไป</a>
												</div>

											</div>
										</div>
									</div>
									<br>
									<div class="panel checkout-step">
										<div role="tab" id="headingThree">
											<span class="checkout-step-number">3</span>
											<h4 class="checkout-step-title">
												<a class="collapsed" role="button" data-toggle="collapse"
													data-parent="#accordion" href="#collapseThree">เกี่ยวกับทุนการศึกษา</a>
											</h4>
										</div>
										<div id="collapseThree" class="panel-collapse collapse">
											<div class="checkout-step-body">
												<div class="row">
													<div class="form-group">
														<div class="col-md-12">
															<table width="864" height="150">
																<tr>
																	<td colspan="5"><strong>ทุนการศึกษา
																			(ที่เคยได้รับ)</strong></td>
																	<td width="55">&nbsp;</td>
																	<td width="154">&nbsp;</td>
																	<td width="110">&nbsp;</td>
																</tr>
																<tr>
																	<td width="13">&nbsp;</td>
																	<td colspan="2"><strong>ระดับมัธยมศึกษา</strong></td>
																	<td colspan="2">&nbsp;</td>
																	<td>&nbsp;</td>
																	<td>&nbsp;</td>
																	<td>&nbsp;</td>
																</tr>
																<tr>
																	<td>1).</td>
																	<td width="40">ชื่อทุน</td>
																	<td width="154"><input type="text"
																		class="form-control" /></td>
																	<td width="147">&nbsp;ได้รับเมื่อปีการศึกษา</td>
																	<td width="155"><input type="text"
																		class="form-control" /></td>
																	<td align="right">จำนวน&nbsp;</td>
																	<td><input type="text" class="form-control" /></td>
																	<td>&nbsp;บาท</td>
																</tr>
																<tr>
																	<td>2).</td>
																	<td width="40">ชื่อทุน</td>
																	<td width="154"><input type="text"
																		class="form-control" /></td>
																	<td width="147">&nbsp;ได้รับเมื่อปีการศึกษา</td>
																	<td width="155"><input type="text"
																		class="form-control" /></td>
																	<td align="right">จำนวน&nbsp;</td>
																	<td><input type="text" class="form-control" /></td>
																	<td>&nbsp;บาท</td>
																</tr>
															</table>
															<table width="270" border="0">
																<tr></tr>
															</table>
															<table width="996" height="72" border="0">
																<tr>
																	<td colspan="4"><strong>การกู้ยืมเงินกองทุนให้ยืมเพื่อการศึกษา</strong></td>
																	<td width="86">&nbsp;</td>
																	<td width="164">&nbsp;</td>
																	<td width="169">&nbsp;</td>
																</tr>
																<tr>
																	<td width="40">&nbsp;</td>
																	<td colspan="2">กู้ยืมเงินกองทุนให้ยืมเพื่อการศึกษา
																		(กยศ.) ตั้งแต่ปีการศึกษา</td>
																	<td width="152"><input type="text"
																		class="form-control" /></td>
																	<td>&nbsp;จำนวนเงิน</td>
																	<td><input type="text" class="form-control" /></td>
																	<td>&nbsp;ดังนี้</td>
																</tr>
															</table>
															<table width="624" height="170">
																<tr>
																	<td width="51">&nbsp;</td>
																	<td width="76">ปีการศึกษา</td>
																	<td width="162"><input type="text"
																		class="form-control" /></td>
																	<td width="67">&nbsp;จำนวน</td>
																	<td width="162"><input type="text"
																		class="form-control" /></td>
																	<td width="66">บาท</td>
																</tr>
																<tr>
																	<td width="51">&nbsp;</td>
																	<td width="76">ปีการศึกษา</td>
																	<td width="162"><input type="text"
																		class="form-control" /></td>
																	<td width="67">&nbsp;จำนวน</td>
																	<td width="162"><input type="text"
																		class="form-control" /></td>
																	<td width="66">บาท</td>
																</tr>
																<tr>
																	<td width="51">&nbsp;</td>
																	<td width="76">ปีการศึกษา</td>
																	<td width="162"><input type="text"
																		class="form-control" /></td>
																	<td width="67">&nbsp;จำนวน</td>
																	<td width="162"><input type="text"
																		class="form-control" /></td>
																	<td width="66">บาท</td>
																</tr>
																<tr>
																	<td width="51">&nbsp;</td>
																	<td width="76">ปีการศึกษา</td>
																	<td width="162"><input type="text"
																		class="form-control" /></td>
																	<td width="67">&nbsp;จำนวน</td>
																	<td width="162"><input type="text"
																		class="form-control" /></td>
																	<td width="66">บาท</td>
																</tr>

															</table>
															<br>
															<table width="610" height="150" border="0">
																<tr>
																	<td colspan="3"><strong>ถ้าได้รับทุนการศึกษาให้วางแผนการใช้จ่ายทุนการศึกษา</strong></td>

																</tr>
																<tr>
																	<td width="266">&nbsp;</td>
																	<td colspan="2">&nbsp;</td>
																</tr>
																<tr>
																	<td colspan="3"><textarea rows="10" cols="60"></textarea></td>
																</tr>
															</table>
															<br>
															<p>
																<strong>ความจำเป็นในการขอรับทุนการศึกษา(ให้บรรยายสภาพความเป็นอยู่
																	เหตุผลและความจำเป็นในการขอรับทุนการศึกษา)</strong>
															</p>
															<table width="543" border="0">
																<tr>
																	<td colspan="2">ข้อมูลประกอบการพิจารณาทุนการศึกษา
																		ประจำปีการศึกษา</td>
																	<td width="203"><input type="text" /></td>
																</tr>
																<tr>
																	<td width="266">&nbsp;</td>
																	<td colspan="2">&nbsp;</td>
																</tr>
																<tr>
																	<td colspan="3"><textarea rows="10" cols="60"></textarea></td>
																</tr>
															</table>

														</div>
													</div>
												</div>
												<div class="col-md-11" align="right">
													<a class="collapsed btn btn-primary" role="button"
														data-toggle="collapse" data-parent="#accordion" href="#">
														ต่อไป </a>
												</div>
											</div>
										</div>
									</div>
									<br>
</form:form>

								</div>
							</div>
						</div>
				</section>

			</div>
			<br>
			<br>
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
