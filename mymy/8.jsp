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
			var imgSrc = $(this).find('img').attr('src');
			var imgTitle = $(this).find('h3').text();
			var imgDesc = $(this).find('p').text();
			
			$("#p2_image").attr('src',imgSrc);
			$("#p2_title").html(imgTitle);
			$("#p2_desc").html(imgDesc);			
		});
	});
	
	</script>
</head>

<body>
<section data-role="page" id="page1">
<%
	String[] title= {"후드라이언","애플","마스크라이언"};
	String[] desc = {"후드티","사과","마스크"};
	String[] img_name={"aa.png","apple.jpg","img.jpg"};
%>

	<header  data-role="header" data-theme="b">
		<h1> 웹화면 기초</h1>
	</header>
	<section data-role="content">
		<ul data-role="listview" data-inset="true" data-theme="e">
		
			<%
			for(int i=0; i<title.length;i++){
			%>
		
		
		
			<li>
				<a href="#page2" data-rel="dialog" data-transition="pop">
					<img src="../contents/image/<%=img_name[i]%>" width= 100% height=100%>
					<h3><%=title[i]%></h3>
					<p><%=desc[i]%></p>
				</a>
			</li>
			<%
			}
			%>			
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
		<img id="p2_image" width="100%">
		<p id="p2_desc"></p>
		
	</section>
</section>
</body>
</html>