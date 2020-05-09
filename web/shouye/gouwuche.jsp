
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="author" content="order by dede58.com"/>
    <title>我的购物车-潇潇惠农</title>
    <link rel="stylesheet" type="text/css" href="./css/style2.css">
    <style type="text/css">
        .del{
            color:red;
            position:absolute;
            right:55%;
        }
    </style>
</head>
<body>
<!-- start header -->
<!--end header -->
<div class="scroll-head">
    <%@include file="xiaotaitou.jsp"%>
</div>
<!-- start banner_x -->
<div class="banner_x center">
    <a href="/shouye/index" target="_blank"><div class="logo fl"></div></a>

    <div class="wdgwc fl ml40">我的购物车</div>
    <div class="wxts fl ml20">温馨提示：产品是否购买成功，以最终下单为准哦，请尽快结算</div>

    <div class="clear"></div>
</div>
<div class="xiantiao"></div>
<div class="gwcxqbj">
    <div class="gwcxd center">
        <div class="top2 center">
            <div class="sub_top fl">
                <input type="checkbox" value="quanxuan" id="selectAll" class="quanxuan" />全选
            </div>
            <div class="sub_top fl">商品信息</div>
            <div class="sub_top fl">单价</div>
            <div class="sub_top fl">数量</div>
            <div class="sub_top fl">小计</div>
            <div class="sub_top fr">操作</div>
            <div class="clear"></div>
        </div>
        <c:forEach items="${car_list}" var="item">
        <div class="content2 center">
            <div class="sub_content fl ">
                <input type="checkbox" name="ids" value="${item.sid}" class="quanxuan" data-uid="${item.uid}" data-xid="${item.xid }" />
            </div>
            <div class="sub_content fl"><img src="${item.cimg}" style="width: 70px; height: 70px;padding-left: 100px;"></div>
            <div class="sub_content fl ft20"> ${item.kname}</div>
            <div class="sub_content fl " id="price_${item.cprice}">${item.cprice} 元</div>
            <div class="sub_content fl">
                <input class="shuliang" data-xid="${item.xid}" data-uid="${item.uid}" data-stock="${item.stock}" data-price="${item.cprice}" data-id="${item.sid}" type="number" value="${item.number}" step="1" min="1" >
            </div>
            <div class="sub_content fl" ><span id="total_${item.sid}">${item.number * item.cprice}</span> 元</div>
            <div class="sub_content fl"><a href="#" class="delete" data-uid="${item.uid}" data-xid="${item.xid }" >×</a></div>
            <div class="clear"></div>
        </div>
        </c:forEach>
    </div>
    <div class="jiesuandan mt20 center">
        <div class="tishi fl ml20">
            <ul>
                <li><a href="/shouye/shangcheng">继续购物</a></li>
                <li>|</li>
                <li>共<span>${car_list.size()}</span>件商品，已选择<span id="checkedProduct"></span>件</li>
                <div class="clear"></div>
            </ul>
        </div>
        <div class="jiesuan fr">
            <div class="jiesuanjiage fl">合计（不含运费）：<span id="total_price"> </span> 元</div>

            <div class="jsanniu fr">
                <button type="button" id="Delete" data-uid="${user.uid}">清空购物车</button>
                <input class="jsan" type="submit" name="jiesuan" value="去结算"/>
                <form action="/shouye/tobuy" method="post" id="buy">
                    <input name="uid" value="${uesr.uid }" hidden="">
                    <input name="ids" value="" hidden="" id="ids" >
                </form>
            </div>
            <div class="clear"></div>
        </div>
        <div class="clear"></div>
    </div>

</div>




<!-- footer -->
<div>
    <%@include file="foot.jsp"%>
</div>
<script type="text/javascript">
    <%--var x_price = ${sessionScope.xiangqing.x_price};--%>
    <%--var x_number = ${sessionScope.xiangqing.x_number};--%>
    <%--var preNumber = 0;--%>
</script>
<script type="text/javascript" src="js/gouwuche.js"></script>
</body>
</html>

