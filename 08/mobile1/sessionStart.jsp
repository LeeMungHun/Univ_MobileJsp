<%@ page contentType="text/html;charset=euc-kr" pageEncoding="euc-kr" %>
<%
// 세션 설정
session.setAttribute("ID",   "hong");
session.setAttribute("name", "홍길동");

//이동
response.sendRedirect("index.jsp");
%>

