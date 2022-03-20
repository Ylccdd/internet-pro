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
    <!--临时卡: 无会员信息,只有充值信息.包括但不限于: 充值金额,充值方式(现金/支付宝/微信...),充值时间-->
    <div class="container">
        <h2 class="text-center mt-5">临时卡充值</h2>
        <form action="${pageContext.request.contextPath}/Temp_RechargeServlet" method="post">
            <div class="form-group">
                <label for="recharge_money" class="text-primary"><strong>充值金额</strong></label>
                <div class="input-group">
                  <div class="input-group-addon">￥</div>
                  <input type="text" class="form-control" id="recharge_money" name="recharge_money" placeholder="充值金额">
                  <div class="input-group-addon">.00</div>
                </div>
              </div>

            <div class="form-group">
              <label for="recharge_date" class="text-primary"><strong>充值时间</strong></label>
              <input type="date" class="form-control" id="recharge_date" name="recharge_date" placeholder="日期（YY-MM-DD）">
            </div>
            <div class="form-group">
              <label for="recharge_phone" class="text-primary"><strong>联系方式</strong></label>
              <input type="text" class="form-control" id="recharge_phone" name="recharge_phone" placeholder="11位手机号">
            </div>
            <div class="form-group">
                <label class="text-primary"><strong>充值方式</strong></label>
            </div>
            
            <label class="radio-inline">
                <input type="radio" name="recharge_type" id="recharge_type1" value="现金">
                <i class="fa fa-money" aria-hidden="true"> 现金</i> 
              </label>
              <label class="radio-inline">
                <input type="radio" name="recharge_type" id="recharge_type2" value="微信">
                <i class="fa fa-weixin" aria-hidden="true"> 微信</i> 
              </label>
              <label class="radio-inline">
                <input type="radio" name="recharge_type" id="recharge_type3" value="支付宝">
                <i class="fa fa-buysellads" aria-hidden="true"> 支付宝</i>
              </label>
            <div class="form-group">
                <button type="submit" class="btn btn-primary mt-4">提   交</button>
            </div>
            
          </form>
    </div>
</body>
</html>