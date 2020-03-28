
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>合作联系</title>
    <link rel="stylesheet" type="text/css" href="css/other.css">
    <!--
<style type="text/css">
    .hezuo{
        background-image: url(./img/den.png);
        background-repeat: no-repeat;
        width: 1520px!important;
        height: 400px!important;
        border-top-width: 10px;
        margin-top: 50px;
    }
    .htzhixun{
        float: left;
        height:300px;
        width:300px;
    }
    .va{
        width: 200px!important;
        height: 20px!important;
        font-style: initial;
        font-family: cursive;
        font-size: initial;
        font-weight: bold
    }
    #p1{
        height: 300px;
        width: 300px;
        float: left;
        border-left-width: 10px;
        margin-left: 250px;
    }

</style>
-->
</head>
<body>
<div>
    <%@include file="taitou.jsp"%>
</div>
    <!--内容-->
    <div class="hezuo" id="pp">
           <!--合作咨询-->
          <div class="htzhixun" id="p1" >
              <img src="img/zixun.png" width="200px" height="200px">
              <div class="va">合作咨询</div>
              <div class="va">028-12345678</div>
          </div>
        <!--客服热线-->
        <div class="htzhixun" id="p2" >
            <img src="img/kefu.jpg" width="200px" height="200px">
            <div class="va">客服热线</div>
            <div class="va">400-123-123</div>
        </div>
           <!--邮箱联系-->
          <div class="htzhixun" id="p3" >
              <img src="img/youxiang.jpg" width="200px" height="200px">
              <div class="va">邮箱联系</div>
              <div class="va">nonghuiwang@126.com</div>
          </div>
            <!--业务咨询-->
            <div class="htzhixun" id="p4" >
                <img src="img/yewu.jpg" width="200px" height="200px">
                <div class="va">业务咨询</div>
                <div class="va">18381861300</div>
            </div>

    </div>

<div>
    <%@include file="foot.jsp"%>
</div>
</body>
</html>
