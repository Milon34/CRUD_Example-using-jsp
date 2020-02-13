<%--
  Created by IntelliJ IDEA.
  User: Asus
  Date: 11/21/2019
  Time: 7:26 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%@page import="com.milon.dao.UserDao"%>
<jsp:useBean id="u" class="com.milon.bean.User"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>
<%
    int i=UserDao.update(u);
    response.sendRedirect("viewusers.jsp");
%>
</body>
</html>
