<!DOCTYPE html>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>View Users</title>
</head>
<body style="background-color: khaki">

<%@page import="com.milon.dao.UserDao,com.milon.bean.*,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<center>
<h1 style="color: crimson;border: solid 3px;width: 200px;">Users List</h1>
</center>
<%
    List<User> list=UserDao.getAllRecords();
    request.setAttribute("list",list);
%>
<center>
<table border="1" width="90%">
    <tr><th>Id</th><th>Name</th><th>Password</th><th>Email</th>
        <th>Sex</th><th>Country</th><th>Edit</th><th>Delete</th></tr>
    <c:forEach items="${list}" var="u">
        <tr><td>${u.getId()}</td><td>${u.getName()}</td><td>${u.getPassword()}</td>
            <td>${u.getEmail()}</td><td>${u.getSex()}</td><td>${u.getCountry()}</td>
            <td><a href="editform.jsp?id=${u.getId()}">Edit</a></td>
            <td><a href="deleteuser.jsp?id=${u.getId()}">Delete</a></td></tr>
    </c:forEach>
</table>

    <br/><a href="adduserform.jsp"><h3 style="color: crimson">Add New User</h3></a>
</center>
</body>
</html>