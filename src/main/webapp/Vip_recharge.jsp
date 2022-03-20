<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
    <script src="js/jquery.min.js"></script>
    <title>Document</title>
</head>
<body>
    <div class="container">
        <h2 class="text-center mt-5">在 线 充 值</h2>
        <form action="${pageContext.request.contextPath}/Vip_chargeServle " method="post">

            <div class="form-group">
                <label for="exampleInputAmount" class="text-primary"><strong>充值金额</strong></label>
                <div class="input-group">
                  <div class="input-group-addon">￥</div>
                  <input type="text" class="form-control" name="exampleInputAmount" id="exampleInputAmount" placeholder="充值金额">
                  <div class="input-group-addon">.00</div>
                </div>
              </div>
            <div class="form-group">
              <label for="exampleInputidcard" class="text-primary"><strong>身份证号</strong></label>
              <input type="text" class="form-control" name="exampleInputidcard" id="exampleInputidcard" placeholder="请输入身份证">
            </div>
            <div class="form-group">
                <label class="text-primary"><strong>充值方式</strong></label>
            </div>
            
            <label class="radio-inline">
                <input type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1">
                <i class="fa fa-money" aria-hidden="true"> 现金</i> 
              </label>
              <label class="radio-inline">
                <input type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2">
                <i class="fa fa-weixin" aria-hidden="true"> 微信</i> 
              </label>
              <label class="radio-inline">
                <input type="radio" name="inlineRadioOptions" id="inlineRadio3" value="option3">
                <i class="fa fa-buysellads" aria-hidden="true"> 支付宝</i>
              </label>
            <div class="form-group">
                <button type="submit" class="btn btn-primary">提交</button>
            </div>
            
          </form>
    </div>
</body>
</html>