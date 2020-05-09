
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="author" content="order by dede58.com"/>
    <title>个人中心</title>
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
            <div class="ddzx">个人中心</div>
            <div class="subddzx">
                <ul>
                    <li><a href="self_info.jsp" style="color:#39BF3E;font-weight:bold;">我的个人中心</a></li>
                    <li><a href="add_address.jsp">收货地址</a></li>
                </ul>
            </div>
            <div class="ddzx">订单中心</div>
            <div class="subddzx">
                <ul>
                    <li>
                        <a href="/shouye/dingdanzhongxin" >我的订单</a>
<%--                        <ul>--%>
<%--                            <li><a href="/shouye/dingdanzhongxin?state=0" >待付款</a></li>--%>
<%--                            <li><a href="/shouye/dingdanzhongxin?state=1" >待发货</a></li>--%>
<%--                            <li><a href="/shouye/dingdanzhongxin?state=2" >待收货</a></li>--%>
<%--                            <li><a href="/shouye/dingdanzhongxin?state=3" >待评价</a></li>--%>
<%--                            <li><a href="/shouye/dingdanzhongxin?state=4" >已完成</a></li>--%>
<%--                            <li><a href="/shouye/dingdanzhongxin?state=5" >退款/售后</a></li>--%>
<%--                        </ul>--%>
                    </li>
                </ul>
            </div>
        </div>
        <div class="rtcont fr">
            <div class="grzlbt ml40">我的资料</div>
            <div class="subgrzl ml40"><span>用户名</span><span>${user.username}</span></div>
            <div class="subgrzl ml40"><span>手机号</span><span>${user.usetel}</span></div>
            <div class="subgrzl ml40"><span>登录密码</span><span>************</span></div>
            <div class="subgrzl ml40"><span>电子邮箱</span><span>${user.useremail}</span></div>
           <div class="subgrzl ml40"><span>收货地址</span><span>${user.useraddre}</span></div>

        </div>
        <div class="clear"></div>
    </div>
</div>
<!-- self_info -->
<div>
    <%@include file="foot.jsp"%>
</body>
</body>
</html>
