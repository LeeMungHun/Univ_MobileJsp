<!DOCTYPE HTML>
<%@ page contentType="text/html;charset=euc-kr" pageEncoding="utf-8" %>
<%@ page import="java.util.*"%>
<html>
<head>
	<title>JSP World</title>
	
	<meta name="viewport" content="width = device-width, initial-scale=1">
	<link rel="stylesheet" src="style1.css"/>
	
	<%@include file="jQueryMobile.inc"%>
<link class="include" rel="stylesheet" type="text/css" href="../../jqplot/jquery.jqplot.min.css" />
<!-- 자바 스크립트 기본 라이브러리 -->
<script type="text/javascript" src="../jqplot/jquery.jqplot.min.js"></script>
<script type="text/javascript" src="../jqplot/examples/syntaxhighlighter/scripts/shCore.min.js"></script>
<script type="text/javascript" src="../jqplot/examples/syntaxhighlighter/scripts/shBrushJScript.min.js"></script>
<script type="text/javascript" src="../jqplot/examples/syntaxhighlighter/scripts/shBrushXml.min.js"></script>

<script type="text/javascript" src="../jqplot/plugins/jqplot.categoryAxisRenderer.min.js"></script>

<script type="text/javascript" src="../jqplot/plugins/jqplot.canvasTextRenderer.min.js"></script>
<script type="text/javascript" src="../jqplot/plugins/jqplot.canvasAxisLabelRenderer.min.js"></script>
<script type="text/javascript" src="../jqplot/plugins/jqplot.pointLabels.min.js"></script>

	<script type="text/javascript">
	
	$(document).ready(function(){
		var x=['5','6','7','8'];
		var s1=[200,600,700,1000];

		
		
		var plot1= $.jqplot('chart1',[s1],{
					
			seriesDefaults:{
				pointLabels:{
					show:true,
					location:'a'
				}
			},
			axes:{
				xaxis:{
					renderer: $.jqplot.CategoryAxisRenderer,
					ticks: x,
					label:'월'
				},
				yaxis:{
					label:'이익(천원)',
					labelRenderer: $.jqplot.CanvasAxisLabelRenderer
				}
			}
			
		});
	});
	
	</script>
</head>

<body>
<section data-role="page" id="page1">


	<header  data-role="header" data-theme="b">
		<h1> 웹화면 기초</h1>
	</header>
	<section data-role="content">
		<div id="chart1" style="width:100%; height:400px;"></div>


	</section>
	<footer data-role="footer" data-theme="a" data-position="fixed">
		<center><%@ include file = "businessInfo.inc"%></center>
<!--		<jsp:include page="businessInfo.inc" flush="true"/>-->
	</footer>
</section>

</body>
</html>