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
		$('div div div').click(function(){
			var imgSrc = $(this).find('img');

			imgSrc.toggle();			
		});
	});
	
	</script>
</head>

<body>
<section data-role="page" id="page1">
<%
	String[] type_grid = {"ui-block-a","ui-block-b","ui-block-c"};
	String[][] img_name={{"aa.png","apple.jpg","img.jpg"},{"aa.png","apple.jpg","img.jpg"}};
%>

	<header  data-role="header" data-theme="b">
		<h1> 웹화면 기초</h1>
	</header>
	<section data-role="content">
		<div class="ui-grid-b">
			
			<%
				for(int i =0 ; i<2; i++){
					for(int j =0 ; j<3; j++){
				
			%>
			<div class="<%=type_grid[j]%>">
				<div class ="ui-bar ui-bar-e" style="height:120px">
					<img src="../contents/image/<%=img_name[i][j]%>" width=100% height=100%>
				</div>
			</div>			
				<%	
					}
				}%>

		
		</div>


	</section>
	<footer data-role="footer" data-theme="a" data-position="fixed">
		<center><%@ include file = "businessInfo.inc"%></center>
<!--		<jsp:include page="businessInfo.inc" flush="true"/>-->
	</footer>
</section>

</body>
</html>