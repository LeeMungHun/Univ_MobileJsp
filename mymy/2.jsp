<!DOCTYPE HTML>
<%@ page contentType="text/html;charset=euc-kr" pageEncoding="euc-kr" %>
<html>
<meta charset="utf-8">
<head>
	<title>JSP World</title>
	<meta name="viewport" content="width = device-width, initial-scale=1">

<link rel="stylesheet" href="http://code.jquery.com/mobile/1.0.1/jquery.mobile-1.0.1.min.css" />
<script src="http://code.jquery.com/jquery-1.6.4.min.js"></script>
<script src="http://code.jquery.com/mobile/1.0.1/jquery.mobile-1.0.1.min.js"></script>
</head>
<body>
<section data-role="page">
	<header data-role="header" data-theme="b">
		<h1> 테스트</h1>
	</header>
	<section data-role="content">
		<ul data-role="listview" data-inset="true" data-theme="e">
			<li>
				<h3>학교종</h3>
				김메리
				<p class="ui-li-aside">00:19</strong>분<p>
			</li>
		</ul>
		<center>
			<audio src="../contents/audio/school.mp3" controls="controls" autoplay="autoplay">
		</center>
	</section>

	<footer data-role="footer" data-theme="a" data-position="fixed">
		<h3>(주)JSP World 서울 강남구 삼성동 1234</h3>
	</footer>
</section>
</body>

</html>