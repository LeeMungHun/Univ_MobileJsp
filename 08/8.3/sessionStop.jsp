<%@ page contentType="text/html;charset=euc-kr" pageEncoding="euc-kr" %>

<%
session.invalidate();
//sessoin.removeAttribute("ID");
//sessoin.removeAttribute("name");
// Ȩ�������� �̵� 
response.sendRedirect("index.jsp");
%>