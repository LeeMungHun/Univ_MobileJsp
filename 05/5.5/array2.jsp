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
			int[][] arr = new int[2][3];
			arr[0][0]= 11;
			arr[0][1]= 12;	
			arr[0][2]= 13;
			arr[1][0]= 21;
			arr[1][1]= 22;			
			arr[1][2]= 23;			
		%>		
		배열의 1행 1열 값: <%=arr[0][0]%><br>
		배열의 1행 2열 값: <%=arr[0][1]%><br>		
		배열의 1행 3열 값: <%=arr[0][2]%><br>		
		배열의 2행 1열 값: <%=arr[1][0]%><br>		
		배열의 2행 2열 값: <%=arr[1][1]%><br>		
		배열의 2행 3열 값: <%=arr[1][2]%><br>		
	
		
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