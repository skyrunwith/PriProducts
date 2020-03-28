
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>支付中心</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="css/basic.css"/>
    <link rel="stylesheet" type="text/css" href="css/order.css"/>
    <link rel="stylesheet" type="text/css" href="css/style2.css">
    <style>
        .order-sel{
            width: 120px;
            height: 60px;
            text-align: center;
            line-height: 60px;
            margin-top: -40px;
            margin-right: -2px;
            float: left;
            border: 2px solid #666666;
            border-collapse: collapse;
            font-weight: bold;
        }
        .selected{
            background-color: #1E90FF;
        }
    </style>
</head>
<body >
<div class="scroll-head">
    <%@include file="xiaotaitou.jsp"%>
</div>

<div id="order-main">
    <div id="address">
        <h1 class="title">选择邮寄地址</h1>
        <div class="a-list">
        </div>
        <div class="add icon i-add"><a href="add_address.jsp">添加邮寄地址</a></div>
    </div>
    <div id="o-detail">
        <h1 class="d-number"></h1>
        <div class="d-goodlist">
        </div>
        <div class="d-total">总价：<span class="d-s-price"></span></div>
    </div>
    <div id="gopay" ><button class="btn btn-danger" onclick="window.location.href='/PriProducts_war_exploded/controller/pay/pay'">结账</button></div>

</div>
<div>
    <%@include file="foot.jsp"%>
</div>
<!-- 页尾 -->
<script src="js/jquery.min.js" ></script>
<script src="js/basic.js" ></script>

</body>
</html>
