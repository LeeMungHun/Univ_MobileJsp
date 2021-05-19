<!DOCTYPE HTML>
<!-- [1] 지시문(page 디렉티비) --> 
<%@ page contentType="text/html;charset=euc-kr"%>
<!-- [1] 지시문(page 디렉티비): Calendar 클래스가 정의된 패키지 -->

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
		<!-- [3] 스크립트릿: 시작 --> 
		<%
		    String s;
			s="이명훈";
			
		%>
		<!-- [3] 스크립트릿: 끝 --> 
		
		<!-- [4] 표현식을 이용한 출력 -->
		이름: '<%= s %>'입니다.<br>
		이름의 길이: <%= s.length() %>입니다.<br>
		'명'은 <%= s.indexOf("명") +1%> 번째 위치에 있습니다.<br>
		
		성을 제외한 이름은 '<%= s.substring(1,3) %>'입니다.<br>
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