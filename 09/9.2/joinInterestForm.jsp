<!DOCTYPE HTML>
<%@ page contentType="text/html;charset=euc-kr" pageEncoding="euc-kr" %>
<html>
<head>
<title>JSP World</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="../../css/style2.css"/>
</head>
<body>

<section>

	<!-- 1. 헤더 -->
	<header class="header1">
		<!-- 헤더 타이틀 -->
		<h1>회원등록</h1>
	</header> 

	<!-- 2. 본문 -->
	<section> 
	    <br>
		<form method="post" action="joinInterest.jsp">
			<fieldset>
			<legend>회원정보</legend>
			<ul class="tableForm">

					<li>
					<label for="ID2"> 회원ID:</label>
					<input type="text" id ="ID2" name="ID" size=10 maxlength=10 required="required"/>
					</li>
					<li>
					<label for="name2"> 성명:</label>
					<input type="text" id ="name2" name="name" size=10 maxlength=10 required="required"/>
					</li>
	
					<li>
					<label for="interest2_1"> 관심분야:</label>
					<input type="checkbox" id ="interest2_1" name="interest" value="경영/경제"/>경영/경제</br>
					<input type="checkbox" id ="interest2_2" name="interest" value="음악/미술"/>음악/미술</br>
					<input type="checkbox" id ="interest2_3" name="interest" value="자기개발"/>자기개발</br>
					<input type="checkbox" id ="interest2_4" name="interest" value="컴퓨터"/>컴퓨터</br>					
					</li>	
										
					
			</ul>
			<p align="center">
			<input type="submit" value="등록">
			</p>
		</fieldset>
	</form>
	</section> 

	<!-- 3. 푸터 -->
	<footer class="footer1">
        <%@ include file="../../include/businessInfo.inc" %>
	</footer>

</section> 

</body>
</html>