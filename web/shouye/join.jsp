
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>加入我们</title>
    <link rel="stylesheet" type="text/css" href="css/other.css">
    <!--
    <script type="text/css">
    .dd{
    width: 1520px;
    height: 700px;
    margin-top: 0;
    margin-bottom: 10px;
    }
    </script>
    -->
</head>
<body>
<div>
    <%@include file="taitou.jsp"%>
</div>
<div class="dd">

    <div>
        <img src="../img/shang.png" style="width: 1520px;height: 180px">
    </div>

    <div style="width: 10px;height: 20px"></div>

    <div class="zh" align="center">
        <a href="xiaozhao.jsp">
            <img src="../img/zhong1.png" style="width: 1000px;height: 250px;cursor: pointer;">
        </a>
    </div>

    <div style="width: 10px;height: 20px"></div>

    <div class="zh" align="center" >
        <a href="shezhao.jsp">
            <img src="../img/zhong2.png" style="width: 1000px;height: 250px;cursor: pointer;">
        </a>
    </div>

    <div style="width: 10px;height: 20px"/>
</div>

    <div >
        <%@include file="foot.jsp"%>
    </div>

</body>
</html>
