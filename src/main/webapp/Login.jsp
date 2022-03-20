<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/Login.css">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
    <script src="js/jquery.min.js"></script>
    <title>Document</title>
    <script type="text/javascript">
        function refreshCode()
        {
            var  vcode = document.getElementById("vcode");
            vcode.src = "${pageContext.request.contextPath}/CheckCodeServlet?time="+new Date().getTime();
        }
    </script>
</head>
<body background="images\IndexImage\bg1.jpg">
    
    <div class="wrap">
        <div class="form">
            <div class="left">
                <video src="video/video3.mp4" muted loop autoplay></video>
            </div>
            <div style="width: 500px;height: 515px;background: rgba(255,255,255,0.9);display: flex;justify-content: center;align-items: center;">
                <div class="right-con">
                    
                    <h3>欢迎使用网吧管理系统</h3>
                    <a href="AdminLogin.html" style="text-decoration: none;">管理员登录</a>
                    <form action="${pageContext.request.contextPath}/LoginServlet" method="post">
                        <div class="form-input usernameInput">
                            <span><i class="fa fa-user"></i></span>
                            <input type="text" name="name" placeholder="用户名">
                        </div>
                        <div class="form-input passwordInput">
                            <span><i class="fa fa-lock"></i></span>
                            <input type="password" name="password" placeholder="密码">
                        </div>
                        <div class="form-input">
                            <span><i class="fa fa-check-square"></i></span>
                            <input type="text" name="verifycode" id="verifycode" placeholder="请输入验证码" />
                        </div>

                        <a href="javascript:refreshCode()">
                            <img src="${pageContext.request.contextPath}/CheckCodeServlet" title="看不清，点击刷新" id="vcode" style="margin-top: 10px; margin-left: -20px;">
                        </a>

                        <!--
                        <div class="form-inline">
                            <label for="vcode" class="check"><span><b>验证码：</b></span></label>
                            <a href="" class="checkimage"><img src="vcode" title="看不清点击刷新" id="vcode"/></a>
                        </div>
                        -->
                        <p class="agree"><input type="checkbox" required class="mx-2">我已阅读并同意<a href="#">《网吧管理服务条款》</a></p>
                        <button class="btn"><span>LOGIN</span></button>
                        
                    </form>

                    <div class="form-inline">
                        <form action="Register.jsp" method="post">
                            <input type="submit" name="register" value="注册" style="height: 33px;width: 108px;margin-top: 15px;
                            margin-left: 125px;margin-right: 29px;text-align: center;border-radius: 0.4rem;border: 2px solid darkred;">
                        </form>
                    </div>


                </div>
            </div>
        </div>
    </div>
    <div class="alert alert-warning alert-dismissible" role="alert">
        <button type="button" class="close" data-dismiss="alert" >
            <span>&times;</span></button>
        <strong>${login_msg}</strong>
    </div>
</body>
</html>