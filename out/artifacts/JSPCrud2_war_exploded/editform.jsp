<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Edit Form</title>

</head>
<body style="background-color: khaki">
<%@page import="com.milon.dao.UserDao,com.milon.bean.User"%>

<%
    String id=request.getParameter("id");
    User u=UserDao.getRecordById(Integer.parseInt(id));
%>
<center>
<h1 style="border: solid 2px rebeccapurple;width: 200px;color: crimson">Edit Form</h1>
<form action="edituser.jsp" method="post">
    <input type="hidden" name="id" value="<%=u.getId() %>"/>
    <table border="2" width="100px;">
        <tr><td>Name:</td><td>
            <input type="text" name="name" value="<%= u.getName()%>"/></td></tr>
        <tr><td>Password:</td><td>
            <input type="password" name="password" value="<%= u.getPassword()%>"/></td></tr>
        <tr><td>Email:</td><td>
            <input type="email" name="email" value="<%= u.getEmail()%>"/></td></tr>
        <tr><td>Sex:</td><td>
            <input type="radio" name="sex" value="male"/>Male
            <input type="radio" name="sex" value="female"/>Female </td></tr>
        <tr><td>Country:</td><td>
            <select name="country">
                <option>Bangladesh</option>
                <option>America</option>
                <option>Afghanistan</option>
                <option>England</option>
                <option>Other</option>
            </select>
        </td></tr>
        <tr><td colspan="2"><input type="submit" value="Edit User"/></td></tr>
    </table>
</form>
</center>
</body>
</html>