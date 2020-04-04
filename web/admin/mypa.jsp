<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <%@ include file="common.jsp"%>
    <style type="text/css">
        body {
            background: #FFF;
        }
        /*图片大小*/
        .btn{
            width: 1330px!important;
            height: 630px!important;
        }
        /*首页下面大小*/
        .caption{
            background-color: #F8F8F8;
            height: 150px;
            font-family: 微软雅黑;
        }
        /*按钮大小*/
        .bu{
            height: 50px;
            width: 100px;
            font-size: unset
        }
    </style>
</head>

<body>
<div id="contentWrap">
    <div class="pageTitle"></div>
    <div class="sidebar fleft">
        <div class="btn">
            <img src="/img/deng.png"  height="80%" width="100%">
            <div class="caption">
                <p style="font-size: xx-large">农惠网后台：</p>
                <p style="font-size: x-large">欢迎登陆系统!</p>
                <p style="font-size: large">
                    <button type="button" class="bu"><a href="/admin/index.jsp"><b>网站首页</b></a></button>
                    <button type="button" class="bu"><a href="/admin/login.jsp"><b>退出系统</b></a></button>
                </p>
            </div>
        </div>
    </div>
</div>
</body>


</html>
