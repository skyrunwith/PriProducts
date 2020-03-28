
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="author" content="order by dede58.com"/>
    <title>订单中心</title>
    <link rel="stylesheet" type="text/css" href="css/style2.css">
</head>
<body>
<!-- start header -->
<div class="scroll-head">
    <%@include file="xiaotaitou.jsp"%>
</div>
<!-- self_info -->
<div class="grzxbj">
    <div class="selfinfo center">
        <div class="lfnav fl">
            <div class="ddzx">订单中心</div>
            <div class="subddzx">
                <ul>
                    <li><a href="dingdanzhongxin.jsp" style="color:#ff6700;font-weight:bold;">我的订单</a></li>
                </ul>
            </div>
            <div class="ddzx">个人中心</div>
            <div class="subddzx">
                <ul>
                    <li><a href="self_info.jsp">我的个人中心</a></li>
                    <li><a href="add_address.jsp">收货地址</a></li>
                </ul>
            </div>
        </div>
        <div class="rtcont fr">
            <div class="ddzxbt">交易订单</div>
            <div class="ddxq">

                <div class="ddbh fl">订单号:1705205643098724</div>
                <div class="ztxx fr">
                    <ul>
                        <li>已发货</li>
                        <li>￥30.00</li>
                        <li>2017/05/20 13:30</li>

                        <div class="clear"></div>
                    </ul>
                </div>
                <div class="clear"></div>
            </div>
            <div class="ddxq">

                <div class="ddbh fl">订单号:170526435444865</div>
                <div class="ztxx fr">
                    <ul>
                        <li>已发货</li>
                        <li>￥30.00</li>
                        <li>2017/05/26 14:02</li>

                        <div class="clear"></div>
                    </ul>
                </div>
                <div class="clear"></div>
            </div>
        </div>
        <div class="clear"></div>
    </div>
</div>
<!-- self_info -->
<div>
    <%@include file="foot.jsp"%>
</body>
</html>
