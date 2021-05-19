<!DOCTYPE HTML>
<!-- [1] 지시문(page 디렉티비) --> 
<%@ page contentType="text/html;charset=euc-kr"%>

<html>
<head>
<title>JSP World</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="../../css/style1.css" />





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
			// 함수 정의
			int[] arr = new int[3];
			arr[0]= 10;
			arr[1]= 20;	
			arr[2]= 30;
			
		%>		
		배열의 첫번째 값: <%=arr[0]%><br>
		배열의 두번째 값: <%=arr[1]%>	<br>	
		배열의 세번째 값: <%=arr[2]%>		
		<!-- [4] 표현식을 이용한 출력 -->
		
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