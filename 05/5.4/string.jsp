<!DOCTYPE HTML>
<!-- [1] ���ù�(page ��Ƽ��) --> 
<%@ page contentType="text/html;charset=euc-kr"%>
<!-- [1] ���ù�(page ��Ƽ��): Calendar Ŭ������ ���ǵ� ��Ű�� -->

<html>
<head>
<title>JSP World</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="../../css/style1.css" />
</head>
<body>

<section>

	<!-- 1. ��� -->
	<header  class="header1">
		<h1>����/������/Ŭ����</h1>
	</header> 

	<!-- 2. ���� -->
	<section> 
	    <br>
		<br>		
		<!-- [3] ��ũ��Ʈ��: ���� --> 
		<%
		    String s;
			s="�̸���";
			
		%>
		<!-- [3] ��ũ��Ʈ��: �� --> 
		
		<!-- [4] ǥ������ �̿��� ��� -->
		�̸�: '<%= s %>'�Դϴ�.<br>
		�̸��� ����: <%= s.length() %>�Դϴ�.<br>
		'��'�� <%= s.indexOf("��") +1%> ��° ��ġ�� �ֽ��ϴ�.<br>
		
		���� ������ �̸��� '<%= s.substring(1,3) %>'�Դϴ�.<br>
		<br>
		<br>
		<br>
	</section> 

	<!-- 3. Ǫ�� -->
	<footer class="footer1">
	    <center>
        <!-- [1] ���ù�(include ��Ƽ��) --> 
        <%@ include file="../../include/businessInfo.inc" %>
	    </center>
	</footer>

</section> 

</body>
</html>