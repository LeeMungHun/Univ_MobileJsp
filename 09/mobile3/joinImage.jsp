<!DOCTYPE HTML>
<%@ page contentType="text/html;charset=euc-kr"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="java.util.*"%>
<%@page import="java.io.*"%>
<%@ page import = "com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>JSP World</title>
<%@ include file="../../include/jQuerymobile.inc"%>
</head>
</head>
<body>

<section data-role="page" id="page1">

	<!-- 1. 헤더 -->
	<header data-role="header" data-theme="b">
		<!-- 헤더 타이틀 -->
		<h1>회원등록</h1>
	</header> 

	<!-- 2. 본문 -->
	<section data-role="content"> 

		<%try{
			%>
			
			<%
			String encoding    = "euc-kr";
			int sizeLimit = 10 * 1024 * 1024; 
			String relativeDirectory = "contents/image";
			ServletContext context = getServletContext();
			String realDirectory = context.getRealPath(relativeDirectory);
			//MultipartRequest multi = new MultipartRequest(request, realDirectory, sizeLimit, encoding);
			MultipartRequest multi = new MultipartRequest(request, realDirectory, sizeLimit, encoding, new DefaultFileRenamePolicy());

			String ID              = multi.getParameter("ID");
			String name            = multi.getParameter("name");
			String my_image = multi.getOriginalFileName("my_image");			
			%>
	    <br>
		<br>
		<!-- 회원정보 출력 --> 
		ID: <%= ID %><br>
		성명: <%= name %><br>
		<img width="30%" src="../../contents/image/<%=my_image%>">
		

		
		<p align="center">
		<button onclick="javascript: history.go(-1);">이전</button>
		</p>
		
		<%}
		catch(IOException ioe){
			out.println(ioe);
		}
		catch(Exception exp){
			out.println(exp);
		}%>
	</section>

	<!-- 3. 푸터 -->
	<footer data-role="footer" data-theme="a" data-position="fixed">
        <%@ include file="../../include/businessInfo.inc" %>
	</footer>

</section>

</body>
</html>