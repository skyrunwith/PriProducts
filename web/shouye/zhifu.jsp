
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
    <div id="orderlist">
        <h1 class="title">订单详情</h1>
        <div class="a-list">
            <c:forEach items="${sessionScope.olist}" var="o">
            <br/>
            订单号： ${o.ordernumber}, &nbsp;&nbsp;&nbsp;商品名称: ${o.x_name},&nbsp;&nbsp;&nbsp;  下单时间：${o.createtime}, &nbsp;&nbsp;&nbsp; 小计： ${o.paynumber} 元
            <br/>
            </c:forEach>
        </div>
    </div>
    <br/>
    <div id="address">
        <h1 class="title">选择邮寄地址</h1>
        <div class="a-list">
            <br/>
                <c:if test="${address != null}">
                姓名： ${address.name },  电话：${address.phone},  地址：${address.province}${address.city}${address.county}${address.addr} &nbsp;&nbsp;&nbsp;&nbsp;<a href="add_address.jsp">更换</a>
                </c:if>
            <br/>
            <br/>
        </div>
        <div class="add icon i-add"><a href="add_address.jsp">添加邮寄地址</a></div>
    </div>
    <div id="o-detail">
        <h1 class="d-number"></h1>
        <div class="d-goodlist">
        </div>
        <div class="d-total">总价：<span class="d-s-price">${sessionScope.totalPrice}</span> 元</div>
    </div>
    <div id="gopay" >
        <input type="text" name="aid" hidden="" value="${address.id }">
<%--        <a class="btn btn-danger" href="${imgctx }/front/user/myOrder?ostatus=0">取消支付</a>--%>
        <button class="btn btn-danger" onclick="pay()">结账</button>
    </div>

</div>
<div>
    <%@include file="foot.jsp"%>
</div>
<script type="text/javascript">
    function pay() {
        window.location.href = '/shouye/confirm';
    }
</script>
<!-- 页尾 -->
</body>
</html>
