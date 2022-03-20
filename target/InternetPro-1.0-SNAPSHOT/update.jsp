<%--
  Created by IntelliJ IDEA.
  User: DEll
  Date: 2022/3/10
  Time: 11:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>

</head>
<body>
        <form action="${pageContext.request.contextPath}/updateUserServlet" method="post">
            <input type="hidden" name="id" value="${user.id}">

            <h1>登录名称：</h1>    <input type="text" id="username" name="username" value="${user.username}" ><br>
            <h1>登录密码：</h1>    <input type="text" id="password" name="password" value="${user.password}" ><br>
            <h1>姓名：</h1>    <input type="text" id="name" name="name" value="${user.name}" ><br>
            <h1>身份证：</h1>    <input type="text" id="idcard" name="idcard" value="${user.idcard}" ><br>
            <h1>电话号码：</h1>    <input type="text" id="phone" name="phone" value="${user.phone}" ><br><br>
            <input type="submit" value="修改信息">
            <a href="Userlist.jsp"><input type="button" value="返回"></a>
        </form>


</body>
</html>
