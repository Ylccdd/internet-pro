<%--
  Created by IntelliJ IDEA.
  User: DEll
  Date: 2022/3/9
  Time: 22:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false"%>
<html>
<head>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <script src="js/bootstrap.min.js" ></script>
    <script src="js/jquery.min.js" ></script>
    <link rel="stylesheet" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
    <title>Title</title>
</head>
<body>
     <div class="container">
         <h2 class="text-center">会员充值</h2>
         <form action="${pageContext.request.contextPath}/addUserServlet" method="post">
             <h4 class="text-danger">请完善会员信息：</h4>
             <div class="form-group">
                 <label for="username"><i class="fa fa-user-circle-o" aria-hidden="true"> 用户名:</i></label>
                 <input type="text" class="form-control input-sm" id="username" name="username" placeholder="请输入用户名"><br>
             </div>
            <div class="form-group">
                <label for="password" ><i class="fa fa-unlock-alt" aria-hidden="true"> 登录密码:</i></label>
                <input type="text" class="form-control input-sm" id="password" name="password" placeholder="请输入密码"><br>
            </div>
             <div class="form-group">
                 <label for="name"><i class="fa fa-user-o" aria-hidden="true"> 真实姓名:</i></label>
                 <input type="text" class="form-control input-sm" id="name" name="name" placeholder="请输入真实姓名"><br>
             </div>
             <div class="form-group">
                 <label for="idcard"><i class="fa fa-id-card" aria-hidden="true"> 身份证:</i></label>
                 <input type="text" class="form-control input-sm" id="idcard" name="idcard" placeholder="请输入身份证"><br>
             </div>
             <div class="form-group">
                 <label for="phone"><i class="fa fa-phone-square" aria-hidden="true"> 手机号:</i></label>
                 <input type="text" class="form-control input-sm" id="phone" name="phone" placeholder="请输入手机号码"><br>
             </div>
             <div class="form-group">
                 <label for="account"><i class="fa fa-money" aria-hidden="true"> 账户：</i></label>
                 <input type="text" id="account" class="form-control input-sm" name="account" placeholder="充值金额"><br>
             </div>
             <div>
                 <input type="submit" value="提 交" class="ml-5 btn-success btn-lg">
                 <input type="reset" value="重 置" class="ml-5 btn-warning btn-lg">
                 <a href="index.jsp"><input type="button" value="返 回" class="ml-5 btn-danger btn-lg"></a>
             </div>
         </form>
     </div>
</body>
</html>
