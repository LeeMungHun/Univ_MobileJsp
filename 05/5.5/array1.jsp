<!DOCTYPE HTML>
<!-- [1] ���ù�(page ��Ƽ��) --> 
<%@ page contentType="text/html;charset=euc-kr"%>

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
		<%
			// �Լ� ����
			int[] arr = new int[3];
			arr[0]= 10;
			arr[1]= 20;	
			arr[2]= 30;
			
		%>		
		�迭�� ù��° ��: <%=arr[0]%><br>
		�迭�� �ι�° ��: <%=arr[1]%>	<br>	
		�迭�� ����° ��: <%=arr[2]%>		
		<!-- [4] ǥ������ �̿��� ��� -->
		
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