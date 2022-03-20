<%--
  Created by IntelliJ IDEA.
  User: 86137
  Date: 2022/3/18
  Time: 18:48
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
    <div class="container">
        <div class="row">
            <div class="col-sm-4">
                <h2>按日期查询</h2>
                <form action="${pageContext.request.contextPath}/total1Servlet" method="post">
                    <input type="text"  name="date">
                    <button type="submit" class="btn btn-primary" id="aa1">查询</button>
                </form>
                <h2>按月份查询</h2>
                <form action="${pageContext.request.contextPath}/total2Servlet" method="post">
                    <input type="text" name="month">
                    <button type="submit" class="btn btn-primary" id="aa2">查询</button>
                </form>

            </div>
            <div class="col-sm-4">
                <br/><br/>
                <h1 id="dateout">
                    <h3>总计账单为：</h3>
                    <c:set value="0" var="sum" />
                    <c:forEach items="${charges}"  var="item">
                        <c:set value="${sum + item.total}" var="sum" />
                    </c:forEach>

                    ${sum}
                </h1>

            </div>

        </div>

    </div>
    <table border="1" class="table table-bordered table-hover">
        <tr class="bg-success">
            <th hidden>id</th>
            <th>登录名称</th>
            <th>日期</th>
            <th>账号余额</th>
            <th>收入</th>
        </tr>
        <c:forEach items="${charges}" var="charge"  varStatus="s">
            <tr>
                <td hidden> ${charge.id}</td>
                <td> ${charge.username}</td>
                <td>${charge.date}</td>
                <td>${charge.total}</td>
                <td>${charge.recharge}</td>
            </tr>



        </c:forEach>




    </table>
    <div>
        <br/>
        <a class="btn btn-primary" href="index.jsp" >返回</a>
    </div>

</body>
</html>
