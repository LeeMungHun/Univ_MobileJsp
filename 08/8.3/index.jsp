<!DOCTYPE HTML>
<%@ page contentType="text/html;charset=euc-kr" pageEncoding="euc-kr" %>
<html>

<head>
<title>JSP World</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="../../css/style1.css" />
</head>
<body>

<!-- �������� ���� -->
<%
String ID   = (String)session.getAttribute("ID");
String name = (String)session.getAttribute("name");

session.setMaxInactiveInterval(30*60);
%>

<section>

	<!-- 1. ��� -->
	<header class="header1">
		<h1>JSP ���尴ü</h1>
		
		<!-- Ȩ -->
		<a href="index.jsp"><font color="yellow">Home</font></a>
		&nbsp&nbsp  
        
		<%
		// ���� x 
		if (ID == null) {
		%>	
			<a href="sessionStart.jsp"><font color="yellow">Login</font></a>	
		<%
		// ���� o
		} else { 
		%>
			<a href="sessionStop.jsp"><font color="yellow"><%= ID %>��, Logout</font></a>	
		<%
		}
		%>		
	</header> 

	<!-- 2. ���� -->
	<section> 
	    <br>
		<br>
		<%

		if (ID == null) {
		%>	
            ���� ����
		<%

		} else { 
		%>

		<br>
		<%=name%> �� �ȳ��ϼ���
		<%
		} // if
		%>				
		<br>
		<br>
		<br>
	</section> 

	<!-- 3. Ǫ�� -->
	<footer class="footer1">
	    <center>
        <%@ include file="../../include/businessInfo.inc" %>
	    </center>
	</footer>

</section> 

</body>
</html>