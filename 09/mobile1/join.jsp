<!DOCTYPE HTML>
<%@ page contentType="text/html;charset=euc-kr"%>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>JSP World</title>
<%@ include file="../../include/jQuerymobile.inc"%>
</head>
</head>
<body>


<%
//  �ѱ� ó��
request.setCharacterEncoding("euc-kr");
// ȸ�� ���� �Է����� ����
String ID       = request.getParameter("ID");
String name     = request.getParameter("name");
String pswd     = request.getParameter("pswd");
String gender   = request.getParameter("gender");
String birthday = request.getParameter("birthday");
%>

<section data-role="page" id="page1">

	<!-- 1. ��� -->
	<header data-role="header" data-theme="b">
		<!-- ��� Ÿ��Ʋ -->
		<h1>ȸ�����</h1>
	</header> 

	<!-- 2. ���� -->
	<section data-role="content"> 
	    <br>
		<br>
		<!-- ȸ������ ��� --> 
		ID: <%= ID %><br>
		����: <%= name %><br>
		��й�ȣ: <%= pswd %><br>
		����: <%= gender %><br>
		����: <%= birthday %><br>
		
		<p align="center">
		<button onclick="javascript: history.go(-1);">����</button>
		</p>
	</section>

	<!-- 3. Ǫ�� -->
	<footer data-role="footer" data-theme="a" data-position="fixed">
        <%@ include file="../../include/businessInfo.inc" %>
	</footer>

</section>

</body>
</html>