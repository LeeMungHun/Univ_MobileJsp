<!DOCTYPE HTML>
<%@ page contentType="text/html;charset=euc-kr"%>
<%@ page import="java.sql.*" %>
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

		<!-- 전역변수 선언 및 입력 매개변수값 추출 -->
		<%
		// 입력정보 한글 처리
		request.setCharacterEncoding("euc-kr");
		// 회원 관련 입력정보 추출
		String ID       = request.getParameter("ID");
		String name     = request.getParameter("name");
		String[] interest     = request.getParameterValues("interest");
		%>
		
		<!-- 수정 부분: 시작 --> 		
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
					
				// 등록된 아이디가 아닌 경우          
				} else {
				
					// 회원으로 등록 
					//mssql은 getdata()
					sql = "insert into 회원(회원ID, 성명,등록일) values (?, ?, NOW())";
					pstmt = conn.prepareStatement(sql);
					pstmt.setString(1, ID);
					pstmt.setString(2, name);
					pstmt.executeUpdate();
					%>
					
					<!-- 회원정보 출력 -->
					<h1><%= name %>(<%= ID %>)</h1>
					<%for(int i =0; i<interest.length ;i++){
						sql = "insert into 회원관심분야(회원ID,관심분야명) values (?,?)";
						pstmt = conn.prepareStatement(sql);
						pstmt.setString(1, ID);
						pstmt.setString(2, interest[i]);
						pstmt.executeUpdate();
						
					%>
						<%= i %> , <%= interest[i]%> <br>
					<%
					}
					//autocommit 이라 생략
					%>
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