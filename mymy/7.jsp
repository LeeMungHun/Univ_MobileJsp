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
			var v_title = $(this).find('h3').text();
			var v_desc = $(this).find('p').text();
			var v_src = $(this).find('div').text();
			
		$('#p2_title').html(v_title);
		$('#p2_desc').html(v_desc);
		var video = $('#p2_video');
		video.attr('src',"../contents/video/"+v_src);
		video.get(0).play();
		});
		$('#page2').click(function(){
			$("#p2_video").get(0).pause();
			
		});
	});
	
	</script>
</head>

<body>
<section data-role="page" id="page1">
	<header  data-role="header" data-theme="b">
		<h1> 웹화면 기초</h1>
	</header>
	<section data-role="content">
		<ul data-role="listview" data-inset="true" data-theme="e">
			<li>
				<a href="#page2" data-rel="dialog" data-transition="pop">
					<img src="../contents/video/image/thumbnail.png" width=100% height=100%>
					<h3>물개</h3>
					<p>바다</p>
					<div style="display : none">Pexels.mp4</div>
				</a>
			</li>
			<li>
				<a href="#page2" data-rel="dialog" data-transition="pop">
					<img src="../contents/video/image/qwe.PNG" width=100% height=100%>
					<h3>sky</h3>
					<p>sky</p>
					<div style="display : none">sky.mp4</div>
				</a>
			</li>
			<li>
				<a href="#page2" data-rel="dialog" data-transition="pop">
					<img src="../contents/video/image/c2.PNG" width=100% height=100%>
					<h3>sun</h3>
					<p>sun</p>
					<div style="display : none">sun.mp4</div>
				</a>
			</li>
		</ul>
	</section>
	<footer data-role="footer" data-theme="a" data-position="fixed">
		<center><%@ include file = "businessInfo.inc"%></center>
<!--		<jsp:include page="businessInfo.inc" flush="true"/>-->
	</footer>
</section>
<section data-role="page" id="page2"> 
	<header data-role="header" data-theme="b">
		<h3 id="p2_title"></h3> 
	</header>
	
	<section data-role="content">
		<video id="p2_video" width="100%" preload="false" controls="controls"></video>
		<p id="p2_desc"></p>
		
	</section>
</section>
</body>
</html>