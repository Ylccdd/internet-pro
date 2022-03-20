<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/menu.css">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <title>Document</title>
    <script type="text/javascript">
        $(document).ready(function()
        {
	        initfoodsize();
	        $('.fold-food').click(function()
            {
                $fold = $(this).parent();
                $('.fold-food').removeClass('selected');
                $('.fold-food a').removeClass('arrow-open').addClass('arrow-close');
                $('ul', $('.fold').not($fold)).hide();
                    if($('ul', $fold).css('display') == 'none')
                    {
                        $('ul', $fold).show();
                        $(this).addClass('selected');
                        $('a', this).removeClass('arrow-close').addClass('arrow-open');
                    }else{
                        $('ul', $fold).hide();
                    }
	        });
 
            $('.fold li a').click(function(){
            $('.fold li a.indexed').removeClass('indexed');
            $(this).addClass('indexed');
    
            // 这里做页面切换提交
            var id = $(this).attr('title');
	        });
        });
 
        $(window).resize(function(){
            initfoodsize();
        });
        
        function initfoodsize(){
            $("#container_left").height($(window).height());
        }
    </script>
</head>


<body style="background-color: cornsilk;">
    <div class="user-info">
        <img src="images/IndexImage/head2.jpg" class="head_image">
        <p class="p1">${user.name}</p>
        <p class="p2">VIP User</p>
        <hr>
    </div>

    <div class="menu">
        <div id="container_left">
            <!-- 这里生成树形菜单 -->

            <div class="fold">
                <dl class="fold-food"><a href="javascript:void(0);" class="arrow-close">关于个人</a></dl>
                <ul>
                    <li class="dotted"><a href="vip_update.jsp" target="main" title='2'>个人信息修改</a></li>
                </ul>
                <ul>
                    <li class="dotted"><a href="${pageContext.request.contextPath}/FindUserInfoByPageServlet" target="main" title='1'>账单查询</a></li>
                </ul>
            </div>
            <div class="fold">
                <dl class="fold-food"><a href="tuifei.jsp" target="main" class="arrow-close">退费申请</a></dl>
            </div>

        </div>
    </div>

    
</body>
</html>