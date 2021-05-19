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
//  한글 처리
request.setCharacterEncoding("euc-kr");
// 회원 관련 입력정보 추출
String ID       = request.getParameter("ID");
String name     = request.getParameter("name");
String [] interest = request.getParameterValues("interest");
%>

<section data-role="page" id="page1">

	<!-- 1. 헤더 -->
	<header data-role="header" data-theme="b">
		<!-- 헤더 타이틀 -->
		<h1>회원등록</h1>
	</header> 

	<!-- 2. 본문 -->
	<section data-role="content"> 
	    <br>
		<br>
		<!-- 회원정보 출력 --> 

		성명: <%= name %><br>
				<%
			for(int i=0; i<interest.length; i++){%>
				<%=i+"."+ interest[i]%><br>
			<%}
		%>
		<p align="center">
		<button onclick="javascript: history.go(-1);">이전</button>
		</p>
	</section>

	<!-- 3. 푸터 -->
	<footer data-role="footer" data-theme="a" data-position="fixed">
        <%@ include file="../../include/businessInfo.inc" %>
	</footer>

</section>

</body>
</html>