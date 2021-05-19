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
		<form method=post action=join.jsp data-ajax="false">
			<fieldset data-role=" fieldcontain">
			<legend>회원정보</legend>
			<ul class="tableForm">


					<label for="ID2"> 회원ID:</label>
					<input type="text" id ="ID2" name="ID" size=10 maxlength=10 required="required"/>

					<label for="name2"> 성명:</label>
					<input type="text" id ="name2" name="name" size=10 maxlength=10 required="required"/>

					<label for="pswd2"> 비밀번호:</label>
					<input type="password" id ="pswd2" name="pswd" size=10 maxlength=10 required="required"/>
					<fieldset data-role="controlgroup" data-type="horizontal">
						<legend> 성별:</legend>
						<input type="radio" id ="gender2_1" name="gender" value="남"/>
						<label for="gender2_1">남</label>
						<input type="radio" id ="gender2_2" name="gender" value="여"/>
						<label for="gender2_2">여</label>
					</fieldset>

					<label for="birthday2"> 생일:</label>
					<input type="date" id ="birthday2" name="birthday"/>
						
					
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