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
		img.toggle();
	}) 
	

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
			String [] grid_type ={"ui-block-a","ui-block-b","ui-block-c"};
		%>
		<div class ="ui-grid-b">
		<%
			for(int i=0 ; i < 2;i++){
				for(int j=0 ; j < 3;j++){
		%>		

		
			<div class="<%=grid_type[j]%>">
			    <div class="ui-bar ui-bar-e" style="height:120px">
				    <img src="../../contents/video/image/<%=image_name[i][j]%>" width=100% height=100%>
			    </div>
			</div>

		<%
				}
			}
		%>
	

	</section> 
	
	

<!-- 두 번째 페이지: 끝 -->
	<footer data-role="footer" data-theme="a" data-position="fixed">
        <%@ include file="../../include/businessInfo.inc" %>
	</footer>

</section>	

</body>
</html>