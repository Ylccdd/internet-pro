<%--
  Created by IntelliJ IDEA.
  User: 86137
  Date: 2022/3/17
  Time: 9:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false"%>
<html>
<head>
    <title>Title</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <script src="js/bootstrap.min.js" ></script>
    <script src="js/jquery.min.js" ></script>
    <script type="text/javascript"></script>
</head>
<body>

<table border="1" class="table table-bordered table-hover">
    <tr class="bg-success">
        <th>id</th>
        <th>登录名称</th>
        <th>登录密码</th>
        <th>真实名称</th>
        <th>身份证号</th>
        <th>电话</th>
        <th>账户</th>
        <th>退费请求</th>
        <th>操作</th>
    </tr>
        <tr>
            <td> ${user.id}</td>
            <td><a class="btn btn-sm btn-defalut" href="${pageContext.request.contextPath}/findUserServlet2?id=${user.id}">${user.username}</a></td>
            <td>${user.password}</td>
            <td>${user.name}</td>
            <td>${user.idcard}</td>
            <td>${user.phone}</td>
            <td>${user.account}</td>
            <td>${user.flag}</td>
            <td>
                <a class="btn btn-default btn-sm" href="${pageContext.request.contextPath}/findUserServlet?id=${user.id}">续费</a>
                <a  class="btn btn-default btn-sm" href="javascript:deleteUser(${user.id});" >退费</a>
                <a  class="btn btn-default btn-sm" >开机</a>
                <a  class="btn btn-default btn-sm" >下机</a>
            </td>

        </tr>

</table>
<br/><br/><br/><br/>
<a href="${pageContext.request.contextPath}/userListServlet"><button>返回</button></a>

</body>
</html>
