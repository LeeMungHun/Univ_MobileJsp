<!DOCTYPE HTML>
<%@ page contentType="text/html;charset=euc-kr"%>
<%@ page import="java.sql.*" %>

<%@ page import = "com.oreilly.servlet.MultipartRequest" %>
<%@ page import = "com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%@ page import = "java.util.*" %>
<%@ page import = "java.io.*" %>
<html>
<head>
<title>JSP World</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<%@ include file="../../include/jQuerymobile.inc" %>

</head>
<body>

<section data-role="page">

	<!-- 1. 헤더 -->
	<header data-role="header" data-theme="b">
		<!-- 헤더 타이틀 -->
		<h1>회원등록</h1>
	</header> 

	<!-- 2. 본문 -->
	<section data-role="content"> 

		<%
			String encoding    = "euc-kr";
			int sizeLimit = 10 * 1024 * 1024; 
			// Upload 파일이 저장되는 폴더(현재 폴더로부터의 상대경로) 
			String relativeDirectory = "contents/member_uploaded";
			ServletContext context = getServletContext();
			// Upload 파일이 저장되는 절대경로(상대경로로부터 인식)
			String realDirectory = context.getRealPath(relativeDirectory);
			// 이미지명 중복 시, 덮어 씀
			MultipartRequest multi = new MultipartRequest(request, realDirectory, sizeLimit, encoding);

			///// 폼문에서 전달된 입력정보 추출
			// ID, name 추출
			String ID              = multi.getParameter("ID");
			String name            = multi.getParameter("name");
			// 파일명 추출
			String my_image = multi.getOriginalFileName("my_image");			
		%>
		<%
		// DB 관련 객체
		Connection        conn  = null; 
		PreparedStatement pstmt = null;
		ResultSet         rs    = null;
		String            sql   = "";
		String            rst   = "success";
		String            msg   = "";
		%>
		<%
			String driverName="com.mysql.jdbc.Driver";
			String url = "jdbc:mysql://localhost:3306/mydb";
			String db_id = "root";
			String db_pwd ="1234";

			try{
				//[1] JDBC 드라이버 로드
				Class.forName(driverName);     
				conn = DriverManager.getConnection(url,db_id,db_pwd);
				sql = "select * from 회원 where 회원ID   = ? ";
				  
			
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, ID);
				rs = pstmt.executeQuery();
				// 등록된 아이디가 있는 경우          
				if (rs.next()) {
				
					rst = "중복아이디";
					msg = "이미 등록된 아이디입니다!";
					out.print(msg);
				// 등록된 아이디가 아닌 경우          
				} else {
				
					// 회원으로 등록 
					//mssql은 getdata()
					sql = "insert into 회원(회원ID, 성명,회원사진명,등록일) values (?,?,?,NOW())";
					pstmt = conn.prepareStatement(sql);
					pstmt.setString(1, ID);
					pstmt.setString(2, name);
					pstmt.setString(3, my_image);					
					pstmt.executeUpdate();
					%>
					
					<!-- 회원정보 출력 -->
					<h1><%= name %>(<%= ID %>)</h1>
					<center>
					<img width ="10%" src ="../../contents/member_uploaded/<%=my_image%>">
				<%
				}
				%>

			
				<%
				} catch(SQLException e) {
					rst = "시스템에러";
					msg = e.getMessage();
					out.print("결과: " + rst + "<br>");
					out.print("내용: " + msg + "<br>");
				} finally {
					if(pstmt != null) 
					   pstmt.close();
					if(conn != null) 
						conn.close();
				}
				%> 	
		


		
	</section>

	<!-- 3. 푸터 -->
	<footer data-role="footer" data-theme="a" data-position="fixed">
		<%@ include file="../../include/businessInfo.inc" %>
	</footer>

</section>
</body>
</html>