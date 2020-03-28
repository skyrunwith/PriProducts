
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>收货地址管理</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="css/basic.css"/>
    <link rel="stylesheet" type="text/css" href="css/address.css"/>
</head>
<body>
<div class="scroll-head">
    <%@include file="xiaotaitou.jsp"%>
</div>
<!-- 中间区域 -->
<div id="address-main">
    <h1 class="title">已有邮寄地址</h1>
    <div id="address ">
        <div class="a-list">
        </div>
    </div>
    <h1 class="title">添加邮寄地址</h1>
    <div id="add-address">
        <form action="">
            <div class="add-form-group ">
                <label for="name">姓名:</label>
                <input type="text" id="name" />
            </div>
            <div class="add-form-group ">
                <label for="phone">手机:</label>
                <input type="number" id="phone" />
            </div>
            <div class="add-form-group inline-block">
                <label for="province">省份:</label>
                <select id="province"  onchange="getcity(this)" onmouseover="getprovince()"></select>
            </div>
            <div class="add-form-group inline-block">
                <label for="city" >城市:</label>
                <select id="city" onchange="getcity(this)">
                     </select>
            </div>
            <div class="add-form-group inline-block">
                <label for="county">区县:</label>
                <select id="county" onchange="getcity(this)">
                   </select>
            </div>

            <div class="add-form-group address-detail">
                <label for="name">详细地址:</label>
                <textarea id="detail"></textarea>
            </div>
            <div class="add-form-group add-button ">
                <button type="button" class="btn btn-info" onclick="addAdd()">添加地址</button>
            </div>
        </form>
    </div>
</div>
<div>
    <%@include file="foot.jsp"%>
</div>
<script src="js/jquery-2.1.0.min.js" ></script>
<script src="js/basic.js" ></script>
</body>
</html>
