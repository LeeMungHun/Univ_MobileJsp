
<%@ page contentType="text/html;charset=euc-kr" pageEncoding="euc-kr" %>
<%

session.invalidate();
// 홈페이지로 이동 
response.sendRedirect("index.jsp");
%>