
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
            <table>
                <c:forEach items="${sessionScope.address_list}" var="address">
                    <tr>
                        <td width="10%">${address.name }</td>
                        <td width="20%">${address.phone }</td>
                        <td width="40%">${address.province}${address.city}${address.county}${address.addr}</td>
                        <td width="20%"><a href="/shouye/edit?aid=${address.id }">修改</a>&nbsp;|&nbsp;
                            <a href="/shouye/del?aid=${address.id }">删除</a></td>
                        <td width="10%">
                            <a href="/shouye/changeAddress?aid=${address.id }" data-href="/shouye/changeAddress?aid=${address.id }" class="choose">选择</a>
                        </td>
                    </tr>

                </c:forEach>
            </table>
        </div>
    </div>
    <h1 class="title">添加邮寄地址</h1>
    <div id="add-address">
        <form action="" id="addressForm">
            <input type="text" name="uid" hidden="" value="${user.uid }">
            <input type="text" name="id" hidden="" value="${address.id }">
            <div class="add-form-group ">
                <label for="name">姓名:</label>
                <input type="text" id="name" name="name" value="${address.name}"/>
            </div>
            <div class="add-form-group ">
                <label for="phone">手机:</label>
                <input type="text" id="phone" name="phone" value="${address.phone}"/>
            </div>
            <div class="add-form-group inline-block">
                <label for="province">省份:</label>
<%--                <select id="province"  onchange="getcity(this)" onmouseover="getprovince()"></select>--%>
                <input type="text" id="province" name="province" value="${address.province}">
            </div>
            <div class="add-form-group inline-block">
                <label for="city" >城市:</label>
<%--                <select id="city" onchange="getcity(this)">--%>
<%--                     </select>--%>
                <input type="text" id="city" name="city" value="${address.city}">
            </div>
            <div class="add-form-group inline-block">
                <label for="county">区县:</label>
<%--                <select id="county" onchange="getcity(this)">--%>
<%--                   </select>--%>
                <input type="text" id="county" name="county" value="${address.county}">
            </div>

            <div class="add-form-group address-detail">
                <label for="name">详细地址:</label>
                <textarea id="detail" name="addr">${address.addr}</textarea>
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
<script type="text/javascript">
    function addAdd() {
        $.ajax({
            type:"post",
            url:"/shouye/insertAddress",
            data:$('#addressForm').serialize(),
            dataType:"json",
            success:function (res) {
               alert('添加成功');
               window.location.reload();
            }
        })
    }
</script>
</body>
</html>
