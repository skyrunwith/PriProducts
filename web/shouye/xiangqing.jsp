<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
            <div class="xiaomi6 fl">${xiangqing.kname}</div>

            <div class="clear"></div>
        </div>
    </div>

    <div class="jieshao mt20 w">
        <div class="left fl"><img src="../images/鹅.jpg"></div>
        <div class="right fr">
            <div class="h3 ml20 mt20"> ${xiangqing.x_name}</div>
            <div class="jianjie mr40 ml20 mt10">
                品种名： ${xiangqing.x_name}<br>
                类型： ${xiangqing.x_leixing}<br>
                库存： ${xiangqing.x_number} 斤<br>
                起售： ${xiangqing.x_qishou} 斤<br>
                生长环境： ${xiangqing.x_huanjing}<br>
            </div>
            <div class="jiage ml20 mt10">单价：${xiangqing.x_price} 元/斤</div>
            <div class="ft20 ml20 mt20">选择购买数量：
            <input type="number" class="number" id="number" step="1" min="1" value="">&nbsp;&nbsp;斤
            </div>
            <div class="xqxq mt20 ml20">
                <div class="bot mt20 ft20 ftbc" >总计：<span id="total_price"></span>元</div>
            </div>
            <div class="xiadan ml20 mt20">
                <a href="/shouye/toShopCar"><input class="jrgwc"  type="button" name="jrgwc" value="我的购物车" /></a>
                <input class="jrgwc" type="button" name="jrgwc" value="加入购物车" data-xid="${xiangqing.xid }" data-href="/shouye/shoppingcart" id="btn-car"
                     value="${xiangqing.x_number eq 0?'暂无库存':'加入购物车' }" <c:if test="${xiangqing.status eq 0 or xiangqing.x_number eq 0}">disabled=""</c:if>/>
            </div>
        </div>
        <div class="clear"></div>
    </div>
</form>
<!-- footer -->
<div>
    <%@include file="foot.jsp"%>
</div>
<script type="text/javascript">
    var x_price = ${xiangqing.x_price};
    var x_number = ${xiangqing.x_number};
    var preNumber = 0;
    $("#number").on('input',function(e){
        if(x_number >= e.target.value) {
            $('#total_price').html(x_price * e.target.value);
            preNumber = e.target.value;
        }else {
            alert("库存不够");
            e.target.value = preNumber;
        }
    });

    $("#btn-car").click(function () {
        if($('#number').val() === ""){
            alert("请输入数量！");
            return;
        }
        $.post($(this).attr('data-href'),
            {
                xid: $(this).attr('data-xid'),
                number: $('#number').val()
            },
            function (data) {
                if (data == 1) {
                    alert("添加成功，可去购物车查看");
                } else {
                    alert("请登录！")
                }
            });

    });
</script>
</body>
</html>
