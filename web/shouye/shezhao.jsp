
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>社会招聘</title>
    <link rel="stylesheet" type="text/css" href="css/other.css">
   <!--
    <style type="text/css">
        .s1{
            width: 1520px;
            height: 600px;
            display: inline-flex;
            background-image: url("img/den.png");
            background-size:1000px;
        }
        .s2 {
            width: 462px;
            height: 300px;
            border-right-width: 10px;
            margin-right: 10px;

        }
        .s3{
            height: 300px;
            border: 2px solid;
            margin-left: 60px;
            width: 400px;
            cursor: pointer;
        }
        .s3:hover{
            -webkit-box-shadow: #ccc 0px 10px 10px;
            -moz-box-shadow: #ccc 0px 10px 10px;
            box-shadow: #ccc 0px 10px 10px;
        }
        .sleft{
            float: left;
            height: 200px;
        }
        .sright{
            float: right;
            border-right-width: 10px;
            margin-right: 10px;
        }
        .stitle{
            font-family: cursive;
            font-size: xx-large;
            font-weight: 600;
            width: 140px;
            height: 50px;
            margin-top: 20px;
        }
        .sgang{
            font-family: cursive;
            font-size: x-large;
            line-height: initial;
            height: 132px;
        }
        ol{
            list-style-type: none;
            height: 80px;
            margin-top: 10px;
            width: 160px;
            float: left;
            line-height: 1;
            margin-left: 20px;
        }
        ul{
            list-style-type: none;
        }
        .sfoot{
            width: 400px;
            height: 100px;
            border-top-width: 200px;
            margin-top: 210px;
            margin-left: 0px;
            border-left-width: 10px;
            font-family: cursive;
            font-size: larger;
            font-weight: 600;
        }
        .stel{
            height: 50px;
            float: right;
            margin-top: 20px;
            margin-right: 20px;
            font-weight: bolder;
        }
    </style>
    -->
</head>
<body>
    <div>
        <%@include file="taitou.jsp"%>
    </div>

    <div class="s1">
        <div class="s2">
            <div class="s3">
                <div class="sleft">
                    <div class="stitle">技术类</div>
                    <div class="sgang">
                        <ul>岗位：
                            <li>后台研发工程师</li>
                            <li>测试工程师</li>
                            <li>算法工程师</li>
                        </ul>
                    </div>
                </div>
                <div class="sright">
                    <img src="img/zhaopin.gif" style="width: 200px;height: 200px">
                </div>
                <div class="sfoot">
                    <div class="syaoqiu">
                        <ol>要求：
                            <li>本科及以上专业</li>
                            <li>计算机专业或相关专业</li>
                            <li>工作三年</li>
                            <li>有拼搏精神</li>
                        </ol>
                    </div>
                    <div class="stel">电话预约面试：17838381435</br>
                        &nbsp;&nbsp;面试地址：四川省成都市郫都</br>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;区红光路100号
                    </div>
                    </div>
                </div>
            </div>

        <div class="s2">
            <div class="s3">
                <div class="sleft">
                    <div class="stitle">人力资源</div>
                    <div class="sgang">
                        <ul>岗位：
                            <li>高级招聘经理</li>
                            <li>行政主管</li>
                            <li>培训主管</li>
                        </ul>
                    </div>
                </div>
                <div class="sright">
                    <img src="img/zhaopin.gif" style="width: 200px;height: 200px">
                </div>
                <div class="sfoot">
                    <div class="syaoqiu">
                        <ol>要求：
                            <li>本科及以上专业</li>
                            <li>专业不限</li>
                            <li>工作5年以上</li>
                            <li>有拼搏精神</li>
                        </ol>
                    </div>
                    <div class="stel">电话预约面试：18838381435</br>
                        &nbsp;&nbsp;面试地址：四川省成都市郫都</br>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;区红光路100号
                    </div>
                </div>
            </div>
        </div>

        <div class="s2">
            <div class="s3">
                <div class="sleft">
                    <div class="stitle">法务类</div>
                    <div class="sgang">
                        <ul>岗位：
                            <li>法务经理</li>
                            <li>法务总监</li>
                        </ul>
                    </div>
                </div>
                <div class="sright">
                    <img src="img/zhaopin.gif" style="width: 200px;height: 200px">
                </div>
                <div class="sfoot">
                    <div class="syaoqiu">
                        <ol>要求：
                            <li>本科及以上专业</li>
                            <li>法律相关专业</li>
                            <li>工作5年及以上</li>
                            <li>有拼搏精神</li>
                        </ol>
                    </div>
                    <div class="stel">电话预约面试：13678681435</br>
                        &nbsp;&nbsp;面试地址：四川省成都市郫都</br>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;区红光路100号
                    </div>
                </div>
            </div>
        </div>


        </div>
    </div>

    <div>
        <%@include file="foot.jsp"%>
    </div>
</body>
</html>
