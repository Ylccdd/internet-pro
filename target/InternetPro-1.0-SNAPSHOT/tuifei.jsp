<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/Register2.css">
    <link rel="stylesheet" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
    <script src="js/jquery.min.js"></script>
    <title>退费申请</title>
</head>
<body>
    <div class="container">
        <h2 style="text-align: center;" class="mt-4">退费申请</h2>
        <h3 class="text-danger ml-4">请核对个人信息</h3>
        <h4 class="ml-4">姓名：${user.name}</h4>
        <h4 class="ml-4">昵称：${user.username}</h4>
        <h4 class="ml-4">手机号：${user.phone}</h4>
        <h4 class="ml-4">身份证号码：${user.idcard}</h4>
        <h4 style="color:green;"  class="ml-4">余额：${user.account}</h4>
        <form action="/FindUserMoneyServlet" method="post">
            <input type="hidden" name="idcard" value="${user.idcard}">
            <button type="submit" class="btn btn-danger btn-lg mt-4 ml-5">申 请 退 费</button>
        </form>

    </div>
</body>
</html>