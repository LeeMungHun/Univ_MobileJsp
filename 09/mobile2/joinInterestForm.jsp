<!DOCTYPE HTML>
<%@ page contentType="text/html;charset=euc-kr" pageEncoding="euc-kr" %>
<html>
<head>
<title>JSP World</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<%@ include file="../../include/jQuerymobile.inc"%>

</head>
<body>

<section data-role="page" id="page1">

	<!-- 1. 헤더 -->
	<header data-role="header" data-theme="b">
		<!-- 헤더 타이틀 -->
		<h1>회원등록</h1>
	</header> 

	<!-- 2. 본문 -->
	<section data-role="content"> 
	    <br>
		<form method=post action=joinInterest.jsp data-ajax="false">
			<fieldset data-role=" fieldcontain">
			<legend>회원정보</legend>
			<ul class="tableForm">


					<label for="ID2"> 회원ID:</label>
					<input type="text" id ="ID2" name="ID" size=10 maxlength=10 required="required"/>

					<label for="name2"> 성명:</label>
					<input type="text" id ="name2" name="name" size=10 maxlength=10 required="required"/>

					<fieldset data-role="controlgroup">
						<legend> 관심분야:</legend>
						<input type="checkbox" id ="interest-1" name="interest" value="경영/경제"/>
						<label for="interest-1">경영/경제</label>
						<input type="checkbox" id ="interest-2" name="interest" value="음악/미술"/>
						<label for="interest-2">음악/미술</label>
						<input type="checkbox" id ="interest-3" name="interest" value="자기개발"/>
						<label for="interest-3">자기개발</label>
						<input type="checkbox" id ="interest-4" name="interest" value="컴퓨터"/>
						<label for="interest-4">컴퓨터</label>
					</fieldset>

						
					
			</ul>
			<p align="center">
			<input type="submit" value="등록">
			</p>
		</fieldset>
	</form>
	</section> 

	<!-- 3. 푸터 -->
	<footer data-role="footer" data-theme="a" data-position="fixed">
        <%@ include file="../../include/businessInfo.inc" %>
	</footer>

</section> 

</body>
</html>