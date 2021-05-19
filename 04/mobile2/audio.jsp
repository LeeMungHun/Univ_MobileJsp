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
		var videoTitle= $(this).find('div').text();
		var myaudio=$("#audio");
		myaudio.get(0).pause();
		
		myaudio.attr('src',"../../contents/audio/"+videoTitle);
		myaudio.get(0).play();
		
	});

 
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
				<a href="#">
				<h3>학교종</h3>
				<p>
				김메리<br>
				<div style="display:none">school.mp3</div>
				</p>
				<p class="ui-li-aside"><strong>00:19</strong>분</p>
				</a>
			</li>				
			
			<!-- 목록 아이템 1 -->
			<li>
				<a href="#">
				<h3>코끼리</h3>
				<p>
				꼬  꼬  리<br>
				<div style="display:none">elephant.mp3</div>
				</p>
				<p class= "ui-li-aside"><strong>00:19</strong>분</p>
				</a>
			</li>	
			<!-- 목록 아이템 1 -->
			<li>
				<a href="#">
				<h3>내꺼</h3>
				<p>
				아무거나<br>
				<div style="display:none">Cartoon - On _ On (feat. Daniel Levi) _NCS Release_ - 복사본 (2).mp3</div>
				</p>
				<p class= "ui-li-aside"><strong>00:19</strong>분</p>

				</a>
			</li>				
			
		</ul>	

		<center>
		<audio id="audio" controls></audio>
		</center>

	</section> 

	<!-- 3. 푸터 -->
	<footer data-role="footer" data-theme="a" data-position="fixed">
        <%@ include file="../../include/businessInfo.inc" %>
	</footer>

</section>


</body>
</html>