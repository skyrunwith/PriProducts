
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
            <div class="ddzx">订单中心</div>
            <div class="subddzx">
                <ul>
                    <li><a href="/shouye/dingdanzhongxin" >我的订单</a></li>
                </ul>
            </div>
            <div class="ddzx">个人中心</div>
            <div class="subddzx">
                <ul>
                    <li><a href="self_info.jsp" style="color:#ff6700;font-weight:bold;">我的个人中心</a></li>
                    <li><a href="add_address.jsp">收货地址</a></li>
                </ul>
            </div>
        </div>
        <div class="rtcont fr">
            <div class="grzlbt ml40">我的资料</div>
            <div class="subgrzl ml40"><span>用户名</span><span>张三</span><span><a href="">编辑</a></span></div>
            <div class="subgrzl ml40"><span>手机号</span><span>15669097417</span><span><a href="">编辑</a></span></div>
            <div class="subgrzl ml40"><span>登录密码</span><span>************</span><span><a href="">编辑</a></span></div>
            <div class="subgrzl ml40"><span>电子邮箱</span><span>123456@qq.com</span><span><a href="">编辑</a></span></div>
           <div class="subgrzl ml40"><span>收货地址</span><span>浙江省杭州市江干区19号大街571号</span><span><a href="">编辑</a></span></div>

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
