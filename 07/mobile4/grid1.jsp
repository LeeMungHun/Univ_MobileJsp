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
	$('div div div').click(function(){
		var img = $(this).find('img');
		var imageSrc  = $(this).find('img').attr('src');
		$("#p2_image").attr('src', imageSrc);	
		img.toggle();
	});


});
</script>

</head>
<body>

<!-- 첫 번째 페이지: 시작 -->
<section data-role="page">
	
	<!-- 1. 헤더 -->
	<header data-role="header" data-theme="b">
		<!-- 헤더 타이틀 -->
		<h1>사진 목록</h1>
	</header> 

	<!-- 2. 본문 -->
	<section data-role="content"> 
	
		<%
			String [][] image_name= {{"thumbnail.png","qwe.PNG","c2.PNG"},{"aa.png","img.jpg","img_simbol.gif"}};
		%>
		
		<div class ="ui-grid-b">
			<div class="ui-block-a">
			    <div class="ui-bar ui-bar-e" style="height:120px">
				    <img src="../../contents/video/image/<%=image_name[0][0]%>" width=100% height=100%>
			    </div>
			</div>
			<div class= "ui-block-b">
				<div class="ui-bar ui-bar-e" style="height:120px">
					<img src="../../contents/video/image/<%= image_name[0][1]%>" width=100% height=100%>
				</div>
			</div>
			<div class= "ui-block-c">
				<div class="ui-bar ui-bar-e" style="height:120px">
					<img src="../../contents/video/image/<%= image_name[0][2]%>" width=100% height=100%>
				</div>
			</div>

			<div class= "ui-block-a">
				<div class="ui-bar ui-bar-e" style="height:120px">
					<img src="../../contents/video/image/<%= image_name[1][0]%>" width=100% height=100%>
				</div>
			</div>
			<div class= "ui-block-b">
				<div class="ui-bar ui-bar-e" style="height:120px">
					<img src="../../contents/video/image/<%= image_name[1][1]%>" width=100% height=100%>
				</div>
			</div>
			<div class= "ui-block-c">
				<div class="ui-bar ui-bar-e" style="height:120px">
						<img src="../../contents/video/image/<%= image_name[1][2]%>" width=100% height=100%>
				</div>
			</div>
		</div>		
			</section> 
			
				<!-- 이미지 사라짐 + 팝업창 띄우기 -->
			
<!--
	$('div div div a').click(function(){
		var img = $(this).find('img');
		var imageSrc  = $(this).find('img').attr('src');
		$("#p2_image").attr('src', imageSrc);	

	});

			<div class= "ui-block-c">
				<div class="ui-bar ui-bar-e" style="height:120px">
				<a href="#page2" data-rel="dialog" data-transition="pop">
						<img src="../../contents/video/image/<%= image_name[1][2]%>" width=100% height=100%>
				</a>
				
				</div>
			</div>


	

<section data-role="page" id="page2">

	<section data-role="content"> 

		<img id="p2_image" width="100%">

	</section> 

</section> 
-->
	<footer data-role="footer" data-theme="a" data-position="fixed">
        <%@ include file="../../include/businessInfo.inc" %>
	</footer>

</section>	

</body>
</html>