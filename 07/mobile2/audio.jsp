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
	
		<%
		
			String[] title ={"학교종","스파르타","기린"};
			String[] artist={"김메리","김종국","이광수"};
			String[] file_name={"school.mp3","elephant.mp3","Cartoon - On _ On (feat. Daniel Levi) _NCS Release_ - 복사본 (2).mp3"};
			String[] time={"00:19","00:16","00:17"};
		
		%>
		
	    <!-- 목록 -->
		<ul data-role="listview" data-inset="true" data-theme="e"> 
			<%
				for(int i=0; i< title.length; i++){
			%>
			<li>
				<a href="#">
				<h3><%=title[i] %></h3>
				<p>
				<%=artist[i] %><br>
				<div style="display:none"><%=file_name[i] %></div>
				</p>
				<p class="ui-li-aside"><strong><%=time[i] %></strong>분</p>
				</a>
			</li>	
			<%}%>
					
			
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