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
			int[][] arr = new int[2][3];
			arr[0][0]= 11;
			arr[0][1]= 12;	
			arr[0][2]= 13;
			arr[1][0]= 21;
			arr[1][1]= 22;			
			arr[1][2]= 23;			
		%>		
		�迭�� 1�� 1�� ��: <%=arr[0][0]%><br>
		�迭�� 1�� 2�� ��: <%=arr[0][1]%><br>		
		�迭�� 1�� 3�� ��: <%=arr[0][2]%><br>		
		�迭�� 2�� 1�� ��: <%=arr[1][0]%><br>		
		�迭�� 2�� 2�� ��: <%=arr[1][1]%><br>		
		�迭�� 2�� 3�� ��: <%=arr[1][2]%><br>		
	
		
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