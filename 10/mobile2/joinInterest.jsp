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

	<!-- 1. ��� -->
	<header data-role="header" data-theme="b">
		<!-- ��� Ÿ��Ʋ -->
		<h1>ȸ�����</h1>
	</header> 

	<!-- 2. ���� -->
	<section data-role="content"> 

		<!-- �������� ���� �� �Է� �Ű������� ���� -->
		<%
		// �Է����� �ѱ� ó��
		request.setCharacterEncoding("euc-kr");
		// ȸ�� ���� �Է����� ����
		String ID       = request.getParameter("ID");
		String name     = request.getParameter("name");
		String[] interest     = request.getParameterValues("interest");
		%>
		
		<!-- ���� �κ�: ���� --> 		
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
					
				// ��ϵ� ���̵� �ƴ� ���          
				} else {
				
					// ȸ������ ��� 
					//mssql�� getdata()
					sql = "insert into ȸ��(ȸ��ID, ����,�����) values (?, ?, NOW())";
					pstmt = conn.prepareStatement(sql);
					pstmt.setString(1, ID);
					pstmt.setString(2, name);
					pstmt.executeUpdate();
					%>
					
					<!-- ȸ������ ��� -->
					<h1><%= name %>(<%= ID %>)</h1>
					<%for(int i =0; i<interest.length ;i++){
						sql = "insert into ȸ�����ɺо�(ȸ��ID,���ɺо߸�) values (?,?)";
						pstmt = conn.prepareStatement(sql);
						pstmt.setString(1, ID);
						pstmt.setString(2, interest[i]);
						pstmt.executeUpdate();
						
					%>
						<%= i %> , <%= interest[i]%> <br>
					<%
					}
					//autocommit �̶� ����
					%>
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