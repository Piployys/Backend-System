<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.mfu.*"%>
<%@ page import="com.mfu.entity.*"%>
<%@ page import="javax.naming.*"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
</head>
<body>
	<%
		try {

			Hashtable jndiProp = new Hashtable();
			jndiProp.put(Context.URL_PKG_PREFIXES, "org.jboss.ejb.client.naming");
			Context context = new InitialContext(jndiProp);

			RegisterMemberService regMemservice = (RegisterMemberService) context
					.lookup("ejb:/HelloEJB/RegisterMemberServiceBean!com.mfu.RegisterMemberService");

			String stdEmail = request.getParameter("username");
			String stdPass = request.getParameter("password");

			List<RegisterMember> logList = regMemservice.getRegisterMembers();
			for (RegisterMember log : logList) {
				if (stdEmail.equalsIgnoreCase(log.getStudent_Email())
						&& stdPass.equalsIgnoreCase(log.getStudent_Password())) {

					session.setAttribute("id", log.getRegisterId());
	%>
	<jsp:forward page="Index-Student.jsp" />


	<%
		}
			}
		}

		catch (Exception e) {
	%><jsp:forward page="LoginStd.jsp" />
	<%
		}
	%>
	<jsp:forward page="LoginStd.jsp" />
</body>
</html>