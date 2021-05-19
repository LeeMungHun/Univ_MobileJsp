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

	<!-- 1. ��� -->
	<header data-role="header" data-theme="b">
		<!-- ��� Ÿ��Ʋ -->
		<h1>ȸ�����</h1>
	</header> 

	<!-- 2. ���� -->
	<section data-role="content"> 

		<%
			String encoding    = "euc-kr";
			int sizeLimit = 10 * 1024 * 1024; 
			// Upload ������ ����Ǵ� ����(���� �����κ����� �����) 
			String relativeDirectory = "contents/member_uploaded";
			ServletContext context = getServletContext();
			// Upload ������ ����Ǵ� ������(����ηκ��� �ν�)
			String realDirectory = context.getRealPath(relativeDirectory);
			// �̹����� �ߺ� ��, ���� ��
			MultipartRequest multi = new MultipartRequest(request, realDirectory, sizeLimit, encoding);

			///// �������� ���޵� �Է����� ����
			// ID, name ����
			String ID              = multi.getParameter("ID");
			String name            = multi.getParameter("name");
			// ���ϸ� ����
			String my_image = multi.getOriginalFileName("my_image");			
		%>
		<%
		// DB ���� ��ü
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
				//[1] JDBC ����̹� �ε�
				Class.forName(driverName);     
				conn = DriverManager.getConnection(url,db_id,db_pwd);
				sql = "select * from ȸ�� where ȸ��ID   = ? ";
				  
			
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, ID);
				rs = pstmt.executeQuery();
				// ��ϵ� ���̵� �ִ� ���          
				if (rs.next()) {
				
					rst = "�ߺ����̵�";
					msg = "�̹� ��ϵ� ���̵��Դϴ�!";
					out.print(msg);
				// ��ϵ� ���̵� �ƴ� ���          
				} else {
				
					// ȸ������ ��� 
					//mssql�� getdata()
					sql = "insert into ȸ��(ȸ��ID, ����,ȸ��������,�����) values (?,?,?,NOW())";
					pstmt = conn.prepareStatement(sql);
					pstmt.setString(1, ID);
					pstmt.setString(2, name);
					pstmt.setString(3, my_image);					
					pstmt.executeUpdate();
					%>
					
					<!-- ȸ������ ��� -->
					<h1><%= name %>(<%= ID %>)</h1>
					<center>
					<img width ="10%" src ="../../contents/member_uploaded/<%=my_image%>">
				<%
				}
				%>

			
				<%
				} catch(SQLException e) {
					rst = "�ý��ۿ���";
					msg = e.getMessage();
					out.print("���: " + rst + "<br>");
					out.print("����: " + msg + "<br>");
				} finally {
					if(pstmt != null) 
					   pstmt.close();
					if(conn != null) 
						conn.close();
				}
				%> 	
		


		
	</section>

	<!-- 3. Ǫ�� -->
	<footer data-role="footer" data-theme="a" data-position="fixed">
		<%@ include file="../../include/businessInfo.inc" %>
	</footer>

</section>
</body>
</html>