<!DOCTYPE HTML>
<%@ page contentType="text/html;charset=euc-kr" pageEncoding="euc-kr" %>
<html>
<head>
<title>JSP World</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<%@ include file="../../include/jQuerymobile.inc"%>

</head>
<body>

<section data-role="page" id="page1">

	<!-- 1. ��� -->
	<header data-role="header" data-theme="b">
		<!-- ��� Ÿ��Ʋ -->
		<h1>ȸ�����</h1>
	</header> 

	<!-- 2. ���� -->
	<section data-role="content"> 
	    <br>
		<form method="post" action="joinImage.jsp" enctype="multipart/form-data" data-ajax="false">
			<fieldset data-role="fieldcontain">
			<legend>ȸ������</legend>
			<ul class="tableForm">


					<label for="ID2"> ȸ��ID:</label>
					<input type="text" id ="ID2" name="ID" size=10 maxlength=10 required="required"/>

					<label for="name2"> ����:</label>
					<input type="text" id ="name2" name="name" size=10 maxlength=10 required="required"/>

					<fieldset data-role="controlgroup">
					<legend for="my_image"> ����:</legend>
					<input type="file" id ="my_image" name="my_image"/>
					</fieldset>

				</fieldset>								
					
			</ul>
			<p align="center">
			<input type="submit" value="���">
			</p>

	</form>
	</form>
	</section> 

	<!-- 3. Ǫ�� -->
	<footer data-role="footer" data-theme="a" data-position="fixed">
        <%@ include file="../../include/businessInfo.inc" %>
	</footer>

</section> 

</body>
</html>