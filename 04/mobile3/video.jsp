<!DOCTYPE HTML>
<%@ page contentType="text/html;charset=euc-kr" pageEncoding="utf-8" %>
<html>
<meta charset="utf-8">
<head>
<title>JSP World</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

<%@ include file="../../include/jQuerymobile.inc" %>

<script type="text/javascript">
// 웹문서 로딩이 완료된 후에 실행할 함수 정의 
$(function() {
	$('ul li a').click(function(){
		var videoTitle =$(this).find('h3').text();
		var videoSrc =$(this).find('div').text();
		var videoDesc =$(this).find('p.description').text();
		
		$("#p2_title").html(videoTitle);
		$("#p2_desc").html(videoDesc);
		
		var video = $("#p2_video");
		video.attr('src',"../../contents/video/"+videoSrc);
		video.get(0).play();
		
	});
	$("page2").click(function(){
		$("#p2_video").get(0).pause();
	})

 
});
</script>

</head>
<body>

<!-- 첫 번째 페이지: 시작 -->
<section data-role="page" id="page1">

	<!-- 1. 헤더 -->
	<header data-role="header" data-theme="b">
		<!-- 헤더 타이틀 -->
		<h1>오디오 목록</h1>
	</header> 

	<!-- 2. 본문 -->
	<section data-role="content"> 
	
	    <!-- 목록 -->
		<ul data-role="listview" data-inset="true" data-theme="e"> 

			<!-- 목록 아이템 1 -->
			<li>
				<a href="#page2" data-rel="dialog" data-transition="pop">
			<img src="../../contents/video/image/thumbnail.png"  width="100%" height="100%">
			<h3>물개</h3>
			<p class="description">귀요미</p>
			<div style="display:none">Pexels.mp4</div>
			<p class ="ui-li-aside"><strong>00:00:10</strong></p>
				</a>
			</li>				

			<!-- 목록 아이템 1 -->
			<li>
				<a href="#page2" data-rel="dialog" data-transition="pop">
			<img src="../../contents/video/image/c1.PNG"  width="100%" height="100%">
			<h3>하늘</h3>
			<p class="description">멋지다</p>
			<div style="display:none">sky.mp4</div>
			<p class ="ui-li-aside"><strong>00:00:10</strong></p>
				</a>
			</li>				
	
			
			<!-- 목록 아이템 1 -->
			<li>
				<a href="#page2" data-rel="dialog" data-transition="pop">
			<img src="../../contents/video/image/c2.PNG"  width="100%" height="100%">
			<h3>석양</h3>
			<p class="description">맥크리</p>
			<div style="display:none">sun.mp4</div>
			<p class ="ui-li-aside"><strong>00:00:10</strong></p>
				</a>
			</li>				

		</ul>	


	</section> 
	<footer data-role="footer" data-theme="a" data-position="fixed">
        <%@ include file="../../include/businessInfo.inc" %>
	</footer>

</section>	
	
	
	
	
	
<section data-role="page" id="page2">

	<header data-role="header" data-theme="b">
		<h1 id="p2_title"><h1>
	</header>

	<section data-role="content">
		<video id = "p2_video" width="100%" preload="false" controls="controls"></video>
		<p id="p2_desc"></p>
	</section>
	<!-- 3. 푸터 -->
	<footer data-role="footer" data-theme="a" data-position="fixed">
        <%@ include file="../../include/businessInfo.inc" %>
	</footer>

</section>

	

</body>
</html>