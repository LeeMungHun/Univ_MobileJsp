<!DOCTYPE HTML>
<%@ page contentType="text/html;charset=euc-kr"%>
<%@ page import = "java.util.*" %> 


<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>JSP World</title>
<%@ include file="../../include/jQuerymobile.inc" %>

</head>
</head>
<body>

<section data-role="page" id="page1">
<%!String ID;%>

	<!-- 1. ��� -->
	<header data-role="header" data-theme="b">
		<!-- ��� Ÿ��Ʋ -->
		<h1>Ȩ</h1>
	</header> 

	<!-- 2. ���� -->
<script type="text/javascript">
    // �Է��� ���� �� Ư�������� ���Խ�
    var replaceId  =  /[\{\}\[\]\/?.,;:|\)*~`!^\-_+<>@\#$%&\\\=\(\'\"]/gi;
    
    $(document).ready(function(){
        
        var a = document.getElementById('ID2');
		if (a.match(replaceId)){
			 element.setAttribute('ID2','');
		}
		
	});
 




   </script>
		<form method=post action=login.jsp data-ajax="false" onsubmit="return sendIt();">
		
			<fieldset data-role="fieldcontain">

			    <!-- ��ID -->
				<label for="ID2">ȸ��ID:</label>
				<input type="text" id="ID2" name="ID" size=10 maxlength=10 required="required"/>

			    <!-- ��й�ȣ -->
				<label for="pswd2">��й�ȣ:</label>
				<input type="password" id="pswd2" name="pswd" size=10 maxlength=10 required="required"/>

			</fieldset>
			
			<p align="center">
			<button type=submit data-role="button" data-inline="true">�α���</button>
			</p>
		</form>
			
	</section>

	<!-- 3. Ǫ�� -->
	<footer data-role="footer" data-theme="a" data-position="fixed">
        <%@ include file="../../include/businessInfo.inc" %>
	</footer>

</section>
</body>
</html>