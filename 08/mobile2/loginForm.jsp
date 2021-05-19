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

	<!-- 1. 헤더 -->
	<header data-role="header" data-theme="b">
		<!-- 헤더 타이틀 -->
		<h1>홈</h1>
	</header> 

	<!-- 2. 본문 -->
<script type="text/javascript">
    // 입력을 제한 할 특수문자의 정규식
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

			    <!-- 고객ID -->
				<label for="ID2">회원ID:</label>
				<input type="text" id="ID2" name="ID" size=10 maxlength=10 required="required"/>

			    <!-- 비밀번호 -->
				<label for="pswd2">비밀번호:</label>
				<input type="password" id="pswd2" name="pswd" size=10 maxlength=10 required="required"/>

			</fieldset>
			
			<p align="center">
			<button type=submit data-role="button" data-inline="true">로그인</button>
			</p>
		</form>
			
	</section>

	<!-- 3. 푸터 -->
	<footer data-role="footer" data-theme="a" data-position="fixed">
        <%@ include file="../../include/businessInfo.inc" %>
	</footer>

</section>
</body>
</html>