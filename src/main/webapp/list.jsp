
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>用户信息管理系统</title>

    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.min.js"></script>

    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/bootstrap.js" rel="stylesheet">
    <script src="js/jquery-2.1.0.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <style type="text/css">
        td, th {
            text-align: center;
        }
    </style>
</head>
<body>
<div class="container">
    <h3 style="text-align: center; margin-top: 25px;">使用信息列表</h3>
    <div class="mt-4">
        <form class="form-inline" action="${pageContext.request.contextPath}/FindUserInfoByPageServlet" method="post">
            <div class="form-group">
                <label for="exampleInputName2" class="ml-3">使用时间</label>
                <input type="text" name="usedate" value="" class="form-control ml-3" id="exampleInputName2">
            </div>
            <div class="form-group">
                <label for="exampleInputName2" class="ml-3">使用方式</label>
                <input type="text" name="type" value="" class="form-control ml-3" id="exampleInputAddress">
            </div>
            <button type="submit" class="btn btn-primary" class="ml-4">查询</button>
        </form>
    </div>
    <table border="1" class="table table-bordered table-hover mt-4">
        <tr class="success">
            <th>编号</th>
            <th>使用时间</th>
            <th>使用时长</th>
            <th>使用类型</th>
        </tr>

        <!--var的每一个都是一个UserInfo对象-->
        <%--
        <c:forEach items="${pb.list}" var="UserInfo" varStatus="s">
        --%>
        <c:forEach items="${pb.list}" var="UserInfo" varStatus="s">


        <tr>
            <td>${s.count}</td>
            <td>${UserInfo.usedate}</td>
            <td>${UserInfo.usetime}</td>
            <td>${UserInfo.type}</td>
        </tr>
        </c:forEach>
    </table>

    <nav aria-label="Page navigation">
        <ul class="pagination pagination-lg">
            <c:if test="${pb.currentPage==1}">
                <li class="disabled">
            </c:if>
            <c:if test="${pb.currentPage!=1}">
                <li>
            </c:if>

                <a href="${pageContext.request.contextPath}/FindUserInfoByPageServlet?currentPage=${pb.currentPage - 1}&rows=5" aria-label="Previous">
                    <span aria-hidden="true">&laquo;</span>
                </a>
             </li>

            <c:forEach begin="1" end="${pb.totalPage}" var="i">
                <c:if test="${pb.currentPage==i}">
                    <li class="active"><a href="${pageContext.request.contextPath}/FindUserInfoByPageServlet?currentPage=${i}&rows=5">${i}</a></li>
                </c:if>
                <c:if test="${pb.currentPage!=i}">
                    <li><a href="${pageContext.request.contextPath}/FindUserInfoByPageServlet?currentPage=${i}&rows=5">${i}</a></li>
                </c:if>
            </c:forEach>

                <c:if test="${pb.currentPage == pb.totalPage}">
                    <li class="disabled">
                        <a href="${pageContext.request.contextPath}/FindUserInfoByPageServlet?currentPage=${pb.currentPage}&rows=5" aria-label="Next">
                            <span aria-hidden="true">&raquo;</span>
                        </a>
                    </li>
                </c:if>
                <c:if test="${pb.currentPage != pb.totalPage}">
                    <li>

                        <a href="${pageContext.request.contextPath}/FindUserInfoByPageServlet?currentPage=${pb.currentPage+1}&rows=5" aria-label="Next">
                            <span aria-hidden="true">&raquo;</span>
                        </a>
                    </li>
                </c:if>
            <span style="font-size: 25px;margin-left: 5px">
                共${pb.totalCount}条记录，共${pb.totalPage}页
            </span>
        </ul>
    </nav>
</div>
</body>
</html>
