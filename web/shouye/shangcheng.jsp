<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<title>购物商城</title>
<link rel="stylesheet" type="text/css" href="css/other.css">
<head>
    <!--
    <style type="text/css">
        .min{
            width: 1520px;
            height: 1800px;
            margin-top: 24px
        }
        #o1{
            background-color: #c75197;
            font-size: 16px;
            color: #fff;
            width: 80px;
            height: 30px;
            text-align: center;
        }
        .o2{
            background: aliceblue;
            font-size: 16px;
            color: #666;
            display: inline-block;
            padding: 8px 18px;
            margin-right: 12px;
            cursor: pointer;
            margin-bottom: 12px;
            width: 80px;
            height: 30px;
        }

        .anniu{
            height: 120px;
            margin-left: 250px;
            margin-right: 200px;
        }
        .contentt{
            height: 1000px;
            width: 1520px;
            margin: 0 auto;
            box-sizing: border-box;
        }
        .itemt{
            display: inline-block;
            font-size: 0;
            margin-bottom: 12px;
            width: 292px;
            height: 322px;
            padding-right: 30px;
        }
        .shieldt{
            background: #fff;
            border: 1px solid #dfdfdf;
            width: 280px;
            height: 280px;
            margin-left: 130px;
            margin-top: 40px;
        }
        .linkt{
            text-decoration: none;
            cursor: pointer;
            width: 280px;
            height: 282px;
        }
            /*鼠标在上面有阴影*/
         .linkt:hover{
                -webkit-box-shadow: #ccc 0px 10px 10px;
                -moz-box-shadow: #ccc 0px 10px 10px;
                box-shadow: #ccc 0px 10px 10px;
            }
        .ht{
            font-size: 0;
            width: 250px;
            height: 140px;
        }
        .ct{
            padding-bottom: 16px;
            width: 280px;
            height: 125px;
        }
        .flext{
            display: -webkit-flex;
            width: 280px;
            height: 135px;
        }
        .shop_icon{
            margin-top: 20px;
            margin-left: 11px;
            margin-right: 9px;
            width: 50px;
            height: 50px;
        }
        .flex1t{
            margin-top: 16px;
            overflow: hidden;
            width: 200px;
            height: 120px;
        }
        .shop_name{
            font-size: 16px;
            color: #333;
            font-weight: 700;
            position: relative;
        }
        .shop_grade{
            font-size: 14px;
            color: #666;
            margin-top: 10px;
            margin-bottom: 10px
        }
        .mt8{
            font-size: 14px;
            color: #999;
            margin-top: 8px;
            margin-bottom: 10px
        }
        .text-overflow{
            font-size: 14px;
            color: #999;
            overflow: hidden;
            white-space: nowrap;
            text-overflow: ellipsis;
            height: 20px;
            margin-bottom: 10px;
        }
        .immg{
            width: 280px;
            height: 140px;
        }
        .tubiao{
            width: 50px;
            height: 50px;
        }
        div:focus{
            background-color: #5cb85c;
        }
    </style>
    -->

</head>
<body>
<div>
    <%@include file="taitou.jsp" %>
</div>

<!--内容-->
<div class="min">
    <!--搜索框-->
    <div class="scroll" style="width: 1520px;height: 50px;margin-left: 450px;">
        <div class="search-box-scroll" style="width: 600px;height: 28px">
            <input class="search-in-scroll" type="text" placeholder="    搜水果试试"/>
            <input type="button" class="search-but-scroll" value="搜索">
        </div>
    </div>
    <!--选择按钮-->
    <div class="anniu">
        <c:forEach var="item" items="${sessionScope.kindList}">
            <c:if test="${item.kname.contains('全部')}">
                <div class="o2"id="o1" onclick="findAllDianpu(null)">全部分类</div>
            </c:if>
            <c:if test="${!item.kname.contains('全部')}">
                <div class="o2" onclick="findAllDianpu(${item.kid})">${item.kname}</div>
            </c:if>
        </c:forEach>

    </div>
    <!--展示-->
    <div class="contentt">
        <!--一个框加背景-->
        <c:forEach var="item" items="${sessionScope.dianpuList}">
        <div class="itemt">
            <!--一个框内容加边距-->
            <div class="shieldt">
                <!--一个框内容-->
                <div class="linkt" onclick="toXiangqing('/shouye/${item.xid}')">
                    <!--图片-->
                    <div class="ht">
                        <img class="immg" src="${item.simg}">
                    </div>
                    <!--下面介绍加边框-->
                    <div class="ct">
                        <!--下面介绍-->
                        <div class="flext">
                            <!--头像-->
                            <div class="shop_icon"><img class="tubiao" src="img/0001.png"></div>
                            <!--下面右边-->
                            <div class="flex1t">
                                <!--标题-->
                                <div class="shop_name">
                                    <span>${item.sname}</span>
                                </div>
                                <!--等级-->
                                <div class="shop_grade">
                                    店铺等级:${item.sdiandengji}
                                </div>
                                <!--地址-->
                                <div class="mt8">
                                    地址：${item.saddress}
                                </div>
                                <!--电话-->
                                <div class="text-overflow">
                                    联系电话：${stel}
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
        </c:forEach>
    </div>
</div>

<div>
    <%@include file="foot.jsp" %>
</div>
<script type="text/javascript" src="js/shangcheng.js"></script>
</body>
</html>

