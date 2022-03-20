<%--
  Created by IntelliJ IDEA.
  User: DEll
  Date: 2022/3/9
  Time: 0:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false"%>
<html>
<head>
    <title>所有会员信息</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <script src="js/bootstrap.min.js" ></script>
    <script src="js/jquery.min.js" ></script>
    <script type="text/javascript">
    </script>
    <script>
        function deleteUser(id){
            if (confirm("您确定要退费吗")){
                location.href="${pageContext.request.contextPath}/delUserServlet?id="+id;
            }
        }
    </script>
</head>
<body>
   <div class="container">
       <h2 class="text-center mt-4">会 员 信 息 列 表 </h2>
       <div class="row">
           <div class="col-sm-10">
               <!--post传参时注意传的是input组件中name属性对应的value值-->
           <form action="${pageContext.request.contextPath}/selectServlet" method="post">
               <div class="row">
               <div class="col-sm-4">
                   <label for="InputName">登录名称：</label>
                   <input type="text" class="form-control" id="InputName" name="username">
               </div>

               <div class="col-sm-4">
                   <label for="Inputidcard">身份证：</label>
                   <input type="" class="form-control" id="Inputidcard" name="idcard">
               </div>

               <div class="col-sm-4">
                   <br/>
                   <button type="submit" class="btn btn-primary ml-1">查 询</button>
               </div>
               </div>
           </form>

            </div>

           <div class="col-sm-2">
               <br/>
               <a class="btn btn-primary" href="main.html" >返 回</a>
           </div>
       </div>

       <table border="1" class="table table-bordered table-hover">
              <tr style="background-color:rgb(228, 224, 224)">
                    <th hidden>id</th>
                  <th>登录名称</th>
                  <th>登录密码</th>
                  <th>账户</th>
                  <th>退费请求</th>
                  <th>操作</th>
              </tr>
           <c:forEach items="${users}" var="user"  varStatus="s">
            <tr>
                <td hidden> ${user.id}</td>
                <td><a class="btn btn-sm btn-defalut" href="${pageContext.request.contextPath}/findUserServlet2?id=${user.id}">${user.username}</a></td>
                <td>${user.password}</td>
                <td>${user.account}</td>
                <td>${user.flag}</td>
                <td>
                    <a class="btn btn-warning btn-sm" href="${pageContext.request.contextPath}/findUserServlet?id=${user.id}">续费</a>
                    <a  class="btn btn-danger btn-sm" href="javascript:deleteUser(${user.id});" >退费</a>
                </td>

            </tr>
           </c:forEach>
       </table>
      <div>
          <nav aria-label="Page navigation">
              <ul class="pagination">
                  <li>
                      <a href="#" aria-label="Previous">
                          <span aria-hidden="true">&laquo;</span>
                      </a>
                  </li>
                  <li><a href="#">1</a></li>
                  <li><a href="#">2</a></li>
                  <li><a href="#">3</a></li>
                  <li><a href="#">4</a></li>
                  <li><a href="#">5</a></li>
                  <li>
                      <a href="#" aria-label="Next">
                          <span aria-hidden="true">&raquo;</span>
                      </a>
                  </li>
              </ul>
          </nav>
      </div>

   </div>
</body>
</html>
