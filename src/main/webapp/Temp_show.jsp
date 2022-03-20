<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <title>Document</title>
</head>
<body>
    <div class="container">
        <h2 class="text-center mt-5">临时用户充值列表</h2>
        <table class="table table-bordered table-hover mt-4">
            <tr class="text-center">
                <th>序号</th>
                <th>充值金额</th>
                <th>充值时间</th>
                <th>充值人联系方式</th>
                <th>充值方式</th>
              </tr>
            <c:forEach items="${temp}" var="temp" varStatus="s">
                <tr class="text-center">
                    <td>${s.count}</td>
                    <td>${temp.recharge_money}</td>
                    <td>${temp.recharge_date}</td>
                    <td>${temp.recharge_phone}</td>
                    <td>${temp.recharge_type}</td>
                </tr>
            </c:forEach>
        </table>
        <h2>合计收入：
            <c:set value="0" var="sum" />
            <c:forEach items="${temp}"  var="temp">
                <c:set value="${sum + temp.recharge_money}" var="sum" />
            </c:forEach>
            ${sum}
        </h2>
    </div>
</body>
</html>