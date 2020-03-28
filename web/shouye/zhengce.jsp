
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>相关政策</title>
    <link rel="stylesheet" type="text/css" href="css/other.css">
   <!--
    <style type="text/css">
        .mian{
            width: 1500px;
            height: 1000px;
        }
        .zleft{
            padding: 0;
            list-style: none;
            width: 250px;
            text-align: right;
            margin-top: 30px;
            float: left;
            margin-right: 0px;
            position: -webkit-sticky;
            position: sticky;
            top: 125px;
        }
        .zright{
            float: right;
            width: 1000px;
            height: 800px;
            font-family: cursive;
            font-size: large;
            font-weight: 500;
            margin-right: 150px;
        }
        .ji{
            height: 44px;
            line-height: 44px;
            padding-right: 8px;
            font-size: 18px;
            border: 0;
            border-bottom: 1px solid;
            border-bottom-color: black;
        }
        .ttle{
            height: 50px;
            margin-top: 30px;
            font-family: unset;
            font-size: larger;
        }
        p{
            height: 80px;
            width: 900px;
            line-height: 2;
        }
    </style>
-->
</head>
<body>

    <%@include file="taitou.jsp"%>


    <!--内容-->
    <div class="mian">
        <!--左边-->
        <div class="zleft">
            <ul>
                <li><a href="#f1" class="ji">扶贫政策</a></li>
            </ul>
            <ul>
                <li><a href="#f2" class="ji">政府政策</a></li>
            </ul>
            <ul>
                <li><a href="#f3" class="ji">培训扶贫</a></li>
            </ul>
            <ul>
                <li><a href="#f4" class="ji">加盟政策</a></li>
            </ul>
            <ul>
                <li><a href="#f5" class="ji">扶贫成果</a></li>
            </ul>
        </div >
        <!--右边-->
        <div class="zright">
            <h3 class="ttle"><a id="f1">扶贫政策</a>
            </h3>
            <p>进一步强化电商扶贫、产销对接等举措落实，开展品牌推介洽谈活动、
                电商实操培训，加 大力度动员和组织电商企业、大型农产品批发市场、
                公益性农产品示范市场、物流企业等与贫困地区积极对接，切实解决扶贫
                农畜牧产品滞销问题，多渠道解决农产品卖难问题。
            </p>
            <img src="">

            <h3 class="ttle"><a id="f2">政府政策</a>
            </h3>
            <p>政府在缓解行业贫困的基础上，发挥自身优势，以农业供给侧结构性改革为主线，
                以产销对接为切入点，积极搭建产销平台，不遗余力做好扶贫产品的产销。
                撒下汽油，集会，采取实际行动，做实际事情，寻求实际结果，出售扶贫产品，
                出售良好价格，促进穷人稳定贫困，增加收入。
            </p>
            <img src="">

            <h3 class="ttle"><a id="f3">电商扶贫</a>
            </h3>
            <p>
                加快推进农村县、乡、村三级电子商务服务体系建设，充分发挥县级电子商务
                服务中心和乡镇电子商务服务站的职能作用，抓好村一级网店开发与建设，并
                依托开办的网店建设村级电子商务服务点，帮助指导农户和企业开办网店。
            </p>
            <img src="">

            <h3 class="ttle"><a id="f4">加盟政策</a>
            </h3>
            <p>
                一是加盟者在当地有诚信经营的口碑、有合法经营的工商营业执照；
                二是地方偏远，产品好但是有滞销的问题；三是加盟者经济实力有点困难；
                四是注册信息必须保证真实可信，如出现虚假信息将拉入和名单，不再进行加盟。
                另外，本电商平台不需要缴交任何加盟费。
            </p>
            <img src="">

            <h3 class="ttle"><a id="f5">扶贫成果</a>
            </h3>
            <p>
                据商务大数据监测，上半年全国农村网络零售额达7771.3亿元，
                同比增长21.0%，增速高于全国3.2个百分点。全国农产品网络零售额1873.6亿元，
                同比增长25.3%。商务部指导中国电商扶贫联盟积极开展农产品品牌促进工作，
                完成464家贫困地区农产品品牌企业“三品一标”认证培训，已有129家正在进行认证。
                全国贫困县网络零售额达659.8亿元，同比增长18.0%。
            </p>
            <img src="">
        </div>

    </div>

    <div>
        <%@include file="foot.jsp"%>
    </div>
</body>
</html>
