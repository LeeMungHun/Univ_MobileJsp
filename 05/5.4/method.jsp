<!DOCTYPE HTML>
<!-- [1] ���ù�(page ��Ƽ��) --> 
<%@ page contentType="text/html;charset=euc-kr"%>

<html>
<head>
<title>JSP World</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="../../css/style1.css" />

<%!
	// �Լ� ����
	public int add(int a, int b){
		int c;
		c= a+b;
		return(c);
	}
	
	public double add(double a, double b){
		double c;
		c= a+b;
		return(c);
	}

%>



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
		    int res= add(10,20);
			
			double  d1,d2;
			d1= 12.7;
			d2= 23.5;
			
		%>
		
		
		<!-- [4] ǥ������ �̿��� ��� -->
		10�� 20�� ���� <%=res%> �Դϴ�. <br>
		12.7 �� <%=d2%> �� ���� <%=add(d1,d2)%>
		
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