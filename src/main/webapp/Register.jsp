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
    <script src="js/login.js"></script>
    <title>Document</title>

    <script>

        //校验用户名
        //单词字符，长度8到20位
        function checkName() {
            //1.获取用户名值
            var name = $("#name").val();
            //2.定义正则
            var reg_name = /^\w{3,20}$/;

            //3.判断，给出提示信息
            var flag = reg_name.test(name);
            if(flag){
                //用户名合法
                $("#name").css("border","");
            }else{
                //用户名非法,加一个红色边框
                $("#name").css("border","1px solid red");
            }
            return flag;
        }

        //校验密码
        function checkPassword() {
            //1.获取密码值
            var password = $("#password").val();
            //2.定义正则
            var reg_password = /^\w{6,20}$/;

            //3.判断，给出提示信息
            var flag = reg_password.test(password);
            if(flag){
                //密码合法
                $("#password").css("border","");
            }else{
                //密码非法,加一个红色边框
                $("#password").css("border","1px solid red");
            }

            return flag;
        }

        //校验邮箱
        function checkUsername(){
            //1.获取邮箱
            var username = $("#username").val();
            //2.定义正则		itcast@163.com
            var reg_username = /^\w{3,20}$/;

            //3.判断
            var flag = reg_username.test(username);
            if(flag){
                $("#username").css("border","");
            }else{
                $("#username").css("border","1px solid red");
            }
            return flag;
        }

        //校验身份證
        function checkIdcard(){
            //1.获取身份證
            var idcard = $("#idcard").val();
            //2.定义正则		itcast@163.com
            var reg_idcard = /^\w{18}$/;

            //3.判断
            var flag = reg_idcard.test(idcard);
            if(flag){
                $("#idcard").css("border","");
            }else{
                $("#idcard").css("border","1px solid red");
            }
            return flag;
        }

        //校验手机号
        function checkPhone(){
            //1.获取身份證
            var phone = $("#phone").val();
            //2.定义正则		itcast@163.com
            var reg_phone = /^\w{11}$/;

            //3.判断
            var flag = reg_phone.test(phone);
            if(flag){
                $("#phone").css("border","");
            }else{
                $("#phone").css("border","1px solid red");
            }
            return flag;
        }

        $(function () {
            //当表单提交时，调用所有的校验方法
            $("#registerform").submit(function(){
                //1.发送数据到服务器
                if(checkName() &&checkUsername() && checkPassword() && checkIdcard() && checkPhone()){
                    //校验通过,发送ajax请求，提交表单的数据   username=zhangsan&password=123

                    $.post("RegisterServlet",$(this).serialize(),function(data){
                        //处理服务器响应的数据  data  {flag:true,errorMsg:"注册失败"}

                        if(data.flag){
                            //注册成功，跳转成功页面
                            location.href="Login.jsp";
                        }else{
                            //注册失败,给errorMsg添加提示信息
                            $("#errorMsg").html(data.errorMsg);

                        }
                    });

                }
                //2.不让页面跳转
                return false;
                //如果这个方法没有返回值，或者返回为true，则表单提交，如果返回为false，则表单不提交
            });
        });

        $(document).ready(function () {
            //当某一个组件失去焦点是，调用对应的校验方法
            $("#username").blur(checkUsername);
            $("#name").blur(checkName);
            $("#password").blur(checkPassword);
            $("#idcard").blur(checkIdcard);
            $("#phone").blur(checkPhone());
        })


    </script>
</head>
<body background="images\IndexImage\bg1.jpg">
    <div class="bk">
        <div id="errorMsg" style="color:red;text-align: center"></div>
        <h2>会 员 注 册</h2>
        <form action="${pageContext.request.contextPath}/RegisterServlet" method="post" id="registerform" class="form-inline" role="form">
            <div class="left">
                <div class="form-cell">
                    <span><i class="fa fa-user"></i>用户名</span>
                    <input type="text" id="name" name="name" placeholder="请填写真实姓名" required>
                </div>
                <div class="form-cell">
                    <span><i class="fa fa-user-circle-o"> 昵称：</i></span>
                    <input type="text" id="username" name="username" placeholder="支持中文、英文、数字、下划线等" required>
                </div>
                <div class="form-cell">
                    <span><i class="fa fa-qq"></i> 身份证：</span>
                    <input type="text" id="idcard" name="idcard" placeholder="IDcard" required>
                </div>
                <button type="submit" class="button1">提交</button>
            </div>
            <div class="right">
                <div class="form-cell">
                    <span><i class="fa fa-unlock-alt"></i> 密码：</span>
                    <input type="password" id="password" name="password" placeholder="请设置密码" required>
                </div>
                <div class="form-cell">
                    <span><i class="fa fa-phone"> 电话：</i></span>
                    <input type="text" id="phone" name="phone" placeholder="Phone-number" required>
                </div>
                <a href="Login.jsp" class="btn btn-primary active" style="margin-left: 43px; margin-top: 140px;" role="button">返回</a>
            </div>

        </form>


    </div>
</body>
</html>