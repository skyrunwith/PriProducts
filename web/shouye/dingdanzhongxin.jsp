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
            <div class="ddzx">个人中心</div>
            <div class="subddzx">
                <ul>
                    <li><a href="self_info.jsp">我的个人中心</a></li>
                    <li><a href="add_address.jsp">收货地址</a></li>
                </ul>
            </div>
            <div class="ddzx">订单中心</div>
            <div class="subddzx">
                <ul>
                    <li>
                        <a href="/shouye/dingdanzhongxin" >我的订单</a>
                        <ul>
                            <li><a href="/shouye/dingdanzhongxin?state=0" >待付款</a></li>
                            <li><a href="/shouye/dingdanzhongxin?state=1" >待发货</a></li>
                            <li><a href="/shouye/dingdanzhongxin?state=2" >待收货</a></li>
                            <li><a href="/shouye/dingdanzhongxin?state=3" >已收货</a></li>
                            <li><a href="/shouye/dingdanzhongxin?state=5" >退款中</a></li>
                            <li><a href="/shouye/dingdanzhongxin?state=6" >退款/售后</a></li>
                        </ul>
                    </li>
                </ul>
            </div>

        </div>
        <div class="rtcont fr">
            <div class="ddzxbt">交易订单</div>
            <c:forEach items="${order_list}" var="order">
                <div class="ddxq">
                    <div class="ddbh fl">订单号:${order.ordernumber}</div>
                    <div class="ztxx" style="margin-left: 200px">
                        <ul>
                                <%--                        0 未支付、1 已支付、2 已发货、3 已收货、4  已取消、5、退款中、6 已退款--%>
                            <c:if test="${order.state==0}">
                                <li>未支付</li>
                                <a href="/dingdanzhongxin/buy?oid=${order.oid}">去付款</a>
                            </c:if>
                            <c:if test="${order.state==1}">
                                <li>待发货</li>
                                <a href="#" data-href="/dingdanzhongxin/tuihuo?oid=${order.oid}" class="tuihuo">申请退货</a>
                            </c:if>
                            <c:if test="${order.state==2}">
                                <li>待收货</li>
                                <a href="#" data-href="/dingdanzhongxin/tuihuo?oid=${order.oid}" class="tuihuo">申请退货</a>
                                <a href="/dingdanzhongxin/confirm?oid=${order.oid}">确认收货</a>
                            </c:if>
                            <c:if test="${order.state==3}">
                                <li>已收货</li>
                                <a href="#" data-href="/dingdanzhongxin/tuikuanhuo?oid=${order.oid}" class="tuihuo">申请退货退款</a>
                                <a href="#" data-href="/dingdanzhongxin/del?oid=${order.oid}" class="del">删除订单</a>
                            </c:if>
<%--                            <c:if test="${order.state==4}">--%>
<%--                                <li>已取消</li>--%>
<%--                                <a href="#" data-href="/dingdanzhongxin/del?oid=${order.oid}" class="del">删除订单</a>--%>
<%--                            </c:if>--%>
                            <c:if test="${order.state==5}"><li>退款中</li></c:if>
                            <c:if test="${order.state==6}"><li>已退款</li></c:if>
                            <li>￥${order.paynumber}</li>
                            <li style="width: 200px">${order.createtime}</li>

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
        <script type="text/javascript">
            $(document).ready(function(){
                $(".del").click(function(){
                    var msg = "是否删除？";
                    if(confirm(msg)==true){
                        $.post($(this).attr('data-href'));
                        location.reload();
                    }else{
                        return false;
                    }
                });

                $(".tuihuo").click(function(){
                    var reason = prompt("请输入申请理由");
                    if(reason !='' && reason != null){
                        var href = $(this).attr('data-href');
                        $.post(href,{beizhu:reason});
                        alert("申请成功！")
                        location.reload();
                    }else{
                        return false;
                    }
                });

            });
        </script>
</body>
</html>
