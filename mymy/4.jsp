<!DOCTYPE HTML>
<%@ page contentType="text/html;charset=euc-kr" pageEncoding="utf-8" %>
<%@ page import="java.util.*"%>
<html>
<head>
	<title>JSP World</title>
	
	<meta name="viewport" content="width = device-width, initial-scale=1">
	<link rel="stylesheet" src="style1.css"/>
</head>

<body>
<section>
	<header  class="header1">
	<center>
		<h1> 웹화면 기초</h1>
	</center>
	</header>
	<section>
	<br><br><br><br>
	<%
		Date today = new Date();
	%>
	현재 날짜는  <%=today%> 입니다.
	</section>
	<footer class="footer1">
		<center><%@ include file = "businessInfo.inc"%></center>
<!--		<jsp:include page="businessInfo.inc" flush="true"/>-->
	</footer>
</section>
</body>
</html>