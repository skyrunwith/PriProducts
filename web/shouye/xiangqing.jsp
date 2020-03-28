
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="author" content="order by dede58.com"/>
    <title>潇潇惠农</title>
    <link rel="stylesheet" type="text/css" href="css/style2.css">
</head>
<body>
<!-- start header -->
<div class="scroll-head">
    <%@include file="xiaotaitou.jsp"%>
</div>

<!-- xiangqing -->
<form action="post" method="">
    <div class="xiangqing">
        <div class="neirong w">
            <div class="xiaomi6 fl">鹅苗</div>

            <div class="clear"></div>
        </div>
    </div>

    <div class="jieshao mt20 w">
        <div class="left fl"><img src="../images/鹅.jpg"></div>
        <div class="right fr">
            <div class="h3 ml20 mt20"> 皖西白鹅</div>
            <div class="jianjie mr40 ml20 mt10">
                品种名： 皖西白鹅<br>
                类型： 统货<br>
                起售： 1000斤起售<br>
                生长环境： 半圈养半散养<br>
            </div>
            <div class="jiage ml20 mt10">单价：5元/斤</div>
            <div class="ft20 ml20 mt20">选择购买数量：
            <input type="number" class="number" step="1" min="1">&nbsp;&nbsp;斤
            </div>
            <div class="xqxq mt20 ml20">
                <div class="bot mt20 ft20 ftbc">总计：元</div>
            </div>
            <div class="xiadan ml20 mt20">
                <a href="zhifu.jsp"><input class="jrgwc"  type="button" name="jrgwc" value="立即选购" /></a>
                <a href="gouwuche.jsp"><input class="jrgwc" type="button" name="jrgwc" value="加入购物车" /></a>
            </div>
        </div>
        <div class="clear"></div>
    </div>
</form>
<!-- footer -->
<div>
    <%@include file="foot.jsp"%>
</div>

</body>
</html>
