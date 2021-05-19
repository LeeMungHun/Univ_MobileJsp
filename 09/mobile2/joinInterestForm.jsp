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
		<form method=post action=joinInterest.jsp data-ajax="false">
			<fieldset data-role=" fieldcontain">
			<legend>ȸ������</legend>
			<ul class="tableForm">


					<label for="ID2"> ȸ��ID:</label>
					<input type="text" id ="ID2" name="ID" size=10 maxlength=10 required="required"/>

					<label for="name2"> ����:</label>
					<input type="text" id ="name2" name="name" size=10 maxlength=10 required="required"/>

					<fieldset data-role="controlgroup">
						<legend> ���ɺо�:</legend>
						<input type="checkbox" id ="interest-1" name="interest" value="�濵/����"/>
						<label for="interest-1">�濵/����</label>
						<input type="checkbox" id ="interest-2" name="interest" value="����/�̼�"/>
						<label for="interest-2">����/�̼�</label>
						<input type="checkbox" id ="interest-3" name="interest" value="�ڱⰳ��"/>
						<label for="interest-3">�ڱⰳ��</label>
						<input type="checkbox" id ="interest-4" name="interest" value="��ǻ��"/>
						<label for="interest-4">��ǻ��</label>
					</fieldset>

						
					
			</ul>
			<p align="center">
			<input type="submit" value="���">
			</p>
		</fieldset>
	</form>
	</section> 

	<!-- 3. Ǫ�� -->
	<footer data-role="footer" data-theme="a" data-position="fixed">
        <%@ include file="../../include/businessInfo.inc" %>
	</footer>

</section> 

</body>
</html>