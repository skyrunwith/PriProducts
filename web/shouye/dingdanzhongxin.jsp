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
    <%@include file="xiaotaitou.jsp" %>
</div>
<!-- self_info -->
<div class="grzxbj">
    <div class="selfinfo center">
        <div class="lfnav fl">
            <div class="ddzx">订单中心</div>
            <div class="subddzx">
                <ul>
                    <li><a href="/shouye/dingdanzhongxin" style="color:#ff6700;font-weight:bold;">我的订单</a></li>
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
            <c:forEach items="${order_list}" var="order">
                <div class="ddxq">
                    <div class="ddbh fl">订单号:${order.ordernumber}</div>
                    <div class="ztxx fr">
                        <ul>
                                <%--                        0 未支付、1 已支付、2 已发货、3 已收货、4  已取消、5、退款中、6 已退款--%>
                            <c:if test="${order.state==0}"><li>未支付</li></c:if>
                            <c:if test="${order.state==1}"><li>已支付</li></c:if>
                            <c:if test="${order.state==2}"><li>已发货</li></c:if>
                            <c:if test="${order.state==3}"><li>已收货</li></c:if>
                            <c:if test="${order.state==4}"><li>已取消</li></c:if>
                            <c:if test="${order.state==5}"><li>退款中</li></c:if>
                            <c:if test="${order.state==6}"><li>已退款</li></c:if>
                            <li>￥${order.paynumber}</li>
                            <li>${order.createtime}</li>

                            <div class="clear"></div>
                        </ul>
                    </div>
                    <div class="clear"></div>
                </div>
            </c:forEach>
        </div>
        <div class="clear"></div>
    </div>
</div>
<!-- self_info -->
<div>
    <%@include file="foot.jsp" %>
</body>
</html>
