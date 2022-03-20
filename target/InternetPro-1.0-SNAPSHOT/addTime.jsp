<%--
  Created by IntelliJ IDEA.
  User: DEll
  Date: 2022/3/10
  Time: 10:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
     <h1>会员续费</h1>
     <h3>优惠：</h3>
     <p> 充100送200!</p>
     <p> 充200送300!</p>
     <p> 充300送500!</p>

<form action="${pageContext.request.contextPath}/addUserTimeServlet" method="post">
    <input type="hidden" name="id" value="${user.id}">
    <input type="hidden" name="username" value="${user.username}">
    <h1>账户</h1><input type="text" id="account" name="account" value="${user.account}" >


    <input type="submit" value="充值">
</form>

</body>
</html>
