<!DOCTYPE HTML>
<!-- [1] 지시문(page 디렉티비) --> 
<%@ page contentType="text/html;charset=euc-kr"%>

<html>
<head>
<title>JSP World</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="../../css/style1.css" />

<%!
	// 함수 정의
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

	<!-- 1. 헤더 -->
	<header  class="header1">
		<h1>변수/연산자/클래스</h1>
	</header> 

	<!-- 2. 본문 -->
	<section> 
	    <br>
		<br>		
		
		<%
		    int res= add(10,20);
			
			double  d1,d2;
			d1= 12.7;
			d2= 23.5;
			
		%>
		
		
		<!-- [4] 표현식을 이용한 출력 -->
		10과 20의 합은 <%=res%> 입니다. <br>
		12.7 과 <%=d2%> 의 합은 <%=add(d1,d2)%>
		
		<br>
		<br>
		<br>
	</section> 

	<!-- 3. 푸터 -->
	<footer class="footer1">
	    <center>
        <!-- [1] 지시문(include 디렉티비) --> 
        <%@ include file="../../include/businessInfo.inc" %>
	    </center>
	</footer>

</section> 

</body>
</html>