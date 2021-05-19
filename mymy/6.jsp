<!DOCTYPE HTML>
<%@ page contentType="text/html;charset=euc-kr" pageEncoding="utf-8" %>
<%@ page import="java.util.*"%>
<html>
<head>
	<title>JSP World</title>
	
	<meta name="viewport" content="width = device-width, initial-scale=1">
	<link rel="stylesheet" src="style1.css"/>
	
	<%@include file="jQueryMobile.inc"%>
	
	<script type="text/javascript">
	
	$(function(){
		$('ul li a').click(function(){
			var videoTitle = $(this).find('div').text();
			
			var myAudio= $("#audio");
			myAudio.get(0).pause();
			myAudio.attr('src',"../contents/audio/"+videoTitle);
			myAudio.get(0).play();
		});
	});
	
	</script>
</head>

<body>
<section data-role="page">
	<header  data-role="header" data-theme="b">
		<h1> 웹화면 기초</h1>
	</header>
	<section data-role="content">
		<ul data-role="listview" data-inset="true" data-theme="e">
			<li>
				<a href="#">
					<h3>라이언</h3>
					<p class="ui-li-aside">후드티</p>
					<div style="display:none">school.mp3</div>
				</a>
			</li>
		</ul>
		<center>
			<audio id="audio" controls></audio>
		</center>
		
	</section>
	<footer data-role="footer" data-theme="a" data-position="fixed">
		<center><%@ include file = "businessInfo.inc"%></center>
<!--		<jsp:include page="businessInfo.inc" flush="true"/>-->
	</footer>
</section>

</body>
</html>