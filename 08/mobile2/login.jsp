<%@ page contentType="text/html;charset=euc-kr" pageEncoding="euc-kr" %>
<%@ page import = "java.util.regex.Matcher" %> 
<%@ page import = "java.util.*" %> 

<%
request.setCharacterEncoding("euc-kr");
// ������ ����
String ID   = request.getParameter("ID");
String pswd = request.getParameter("pswd");
%>
<%
// ���� ����
session.setAttribute("ID",   ID);
session.setAttribute("name", "ȫ�浿");

// Ȩ�������� �̵�
if(ID.indexOf(" ")>=0){
	response.sendRedirect("loginForm.jsp");
}
else{
response.sendRedirect("index.jsp");
}
%>

