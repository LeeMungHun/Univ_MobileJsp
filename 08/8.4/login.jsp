<%@ page contentType="text/html;charset=euc-kr" pageEncoding="euc-kr" %>

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
response.sendRedirect("index.jsp");
%>