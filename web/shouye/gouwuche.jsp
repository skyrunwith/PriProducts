
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="author" content="order by dede58.com"/>
    <title>我的购物车-潇潇惠农</title>
    <link rel="stylesheet" type="text/css" href="css/style2.css">
</head>
<body>
<!-- start header -->
<!--end header -->
<div class="scroll-head">
    <%@include file="xiaotaitou.jsp"%>
</div>
<!-- start banner_x -->
<div class="banner_x center">
    <a href="./index.jsp" target="_blank"><div class="logo fl"></div></a>

    <div class="wdgwc fl ml40">我的购物车</div>
    <div class="wxts fl ml20">温馨提示：产品是否购买成功，以最终下单为准哦，请尽快结算</div>

    <div class="clear"></div>
</div>
<div class="xiantiao"></div>
<div class="gwcxqbj">
    <div class="gwcxd center">
        <div class="top2 center">
            <div class="sub_top fl">
                <input type="checkbox" value="quanxuan" class="quanxuan" />全选
            </div>
            <div class="sub_top fl">商品名称</div>
            <div class="sub_top fl">单价</div>
            <div class="sub_top fl">数量</div>
            <div class="sub_top fl">小计</div>
            <div class="sub_top fr">操作</div>
            <div class="clear"></div>
        </div>
        <div class="content2 center">
            <div class="sub_content fl ">
                <input type="checkbox" value="quanxuan" class="quanxuan" />
            </div>
            <div class="sub_content fl"><img src="../images/gwc_xiaomi6.jpg"></div>
            <div class="sub_content fl ft20"> 皖西白鹅</div>
            <div class="sub_content fl ">30元</div>
            <div class="sub_content fl">
                <input class="shuliang" type="number" value="1" step="1" min="1" >
            </div>
            <div class="sub_content fl">30元</div>
            <div class="sub_content fl"><a href="">×</a></div>
            <div class="clear"></div>
        </div>
        <div class="content2 center">
            <div class="sub_content fl ">
                <input type="checkbox" value="quanxuan" class="quanxuan" />
            </div>
            <div class="sub_content fl"><img src="../images/gwc_xiaomi6.jpg"></div>
            <div class="sub_content fl ft20">皖西白鹅</div>
            <div class="sub_content fl ">30元</div>
            <div class="sub_content fl">
                <input class="shuliang" type="number" value="1" step="1" min="1" >
            </div>
            <div class="sub_content fl">30元</div>
            <div class="sub_content fl"><a href="">×</a></div>
            <div class="clear"></div>
        </div>
    </div>
    <div class="jiesuandan mt20 center">
        <div class="tishi fl ml20">
            <ul>
                <li><a href="shangcheng.jsp">继续购物</a></li>
                <li>|</li>
                <li>共<span>2</span>件商品，已选择<span>1</span>件</li>
                <div class="clear"></div>
            </ul>
        </div>
        <div class="jiesuan fr">
            <div class="jiesuanjiage fl">合计（不含运费）：<span>60元</span></div>
            <a href="zhifu.jsp">
            <div class="jsanniu fr"><input class="jsan" type="submit" name="jiesuan"  value="去结算"/></div>
            </a>
            <div class="clear"></div>
        </div>
        <div class="clear"></div>
    </div>

</div>




<!-- footer -->
<div>
    <%@include file="foot.jsp"%>
</div>

</body>
</html>

