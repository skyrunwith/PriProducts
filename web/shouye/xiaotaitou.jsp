
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="author" content="order by dede58.com"/>
    <link rel="stylesheet" type="text/css" href="css/style2.css">
</head>
<body>
<!-- start header -->
<header style="background-color: green">
    <div class="top center">
        <div class="left fl">
            <ul>
                <li><a href="/shouye/index" target="_blank">潇潇惠农</a></li>
                <li>|</li>
                <li>首页</li>
                <c:if test="${sessionScope.user != null}" >
                    <li><a href="self_info.jsp">个人中心</a></li>
                </c:if>
                <div class="clear"></div>
            </ul>
        </div>
        <div class="right fr">
            <div class="gouwuche fr"><a href="/shouye/toShopCar">购物车</a></div>
            <div class="fr">
                <ul>
                    <c:if test="${sessionScope.user != null}" >
                        <li><a href="login.jsp" target="_blank">${sessionScope.user.username}</a></li>
                        <li>|</li>
                        <li><a href="/login/logout" target="_blank" >退出</a></li>
                        <li>|</li>
                    </c:if>
                    <c:if test="${sessionScope.user == null}" >
                        <li><a href="login.jsp">登录</a></li>
                        <li>|</li>
                        <li><a href="/shouye/register" target="_blank" >注册</a></li>
                        <li>|</li>
                    </c:if>
                    <c:if test="${sessionScope.user != null}" >
                        <li><a href="/shouye/dingdanzhongxin">消息中心</a></li>
                    </c:if>
                </ul>
            </div>
            <div class="clear"></div>
        </div>
        <div class="clear"></div>
    </div>
</header>
<script type="text/javascript" src="js/jquery-2.1.0.min.js"></script>
</body>
</html>
