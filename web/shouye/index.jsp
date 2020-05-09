<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c"
           uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>潇潇惠农网</title>
    <link rel="stylesheet" href="css/reset.css"/>
    <link rel="stylesheet" href="css/font-awesome.min.css"/>
    <link rel="stylesheet" href="css/style.css"/>
    <link rel="stylesheet" href="css/style2.css"/>
</head>
<body>
<!--scroll-head-->
<div class="scroll-head">
    <%@include file="xiaotaitou.jsp"%>
</div>

<!--top-main-->
<div class="top-main" >
    <img src="img/logo6.png" />
    <div class="search-wrapper">
        <!--搜索框-->
        <div class="search-box">
            <div data-toggle="arrowdown" id="arrow8" class="search-toggle">
                农产品<span class="down-icon"></span>
            </div>
            <input class="search-in" type="text" id="kname" placeholder="    请输入产品种类">
            <input type="button" class="search-but" id="searchKind" value="搜索">
        </div>

        <!--头部导航-->
       <!-- <div class="other-search">
            <a href="#">肉类</a>
            <a href="#">活禽</a>
            <a href="#">核果仁果类</a>
            <a href="#">柑橘类</a>
            <a href="#">根茎菜类</a>
            <a href="#">淡水鱼类</a>
            <a href="#">虾类</a>
            <a href="#">农用机械设备</a>
            <a href="#">谷类作物</a>
            <a href="#">油料作物</a>
            <a href="#" class="more-other">更多<i class="fa fa-angle-right"></i></a>
        </div>-->
    </div>

</div>
<!--content-top-->
<div class="content-top">
    <!--sidebar-->
    <div class="sidebar">
        <h3>货品分类</h3>
        <!--sidebar-info-->
        <div class="sidebar-info">
            <ul class="side-li">
                <li class="s_1"><h3>禽畜肉蛋<span class="fa fa-angle-right fa-loc"></span></h3></li>
                <li class="s_2"><h3>水果<span class="fa fa-angle-right fa-loc"></span></h3></li>
                <li class="s_3"><h3>农副加工<span class="fa fa-angle-right fa-loc"></span></h3></li>
                <li class="s_4"><h3>蔬菜<span class="fa fa-angle-right fa-loc"></span></h3></li>
                <li class="s_5"><h3>水产<span class="fa fa-angle-right fa-loc"></span></h3></li>
                <li class="s_6"><h3>种子种苗<span class="fa fa-angle-right fa-loc"></span></h3></li>
                <li class="s_7"><h3>农贸农机<span class="fa fa-angle-right fa-loc"></span></h3>v</li>
                <li class="s_8"><h3>粮油米面<span class="fa fa-angle-right fa-loc"></span></h3></li>

            </ul>
            <!--hidden-li-box-->
            <ul class="hiden-box">
                <!-- 	禽畜肉蛋 -->
                <li data-hidden="li" id="hiden-1">

                    <div class="sub-nav-right">
                        <div class="cell-box">
                            <h1>肉类</h1>
                            <div class="a-box">
                                <a href="/shouye/shangcheng">牛副产品</a><span>|</span>
                                <a href="/shouye/shangcheng">猪副产品</a><span>|</span>
                                <a href="/shouye/shangcheng">牛肉</a><span>|</span>
                                <a href="/shouye/shangcheng">猪肉</a><span>|</span>
                                <a href="/shouye/shangcheng" class="orange">羊肉</a>
                                <a href="/shouye/shangcheng">鸡副产品</a><span>|</span>
                                <a href="/shouye/shangcheng">鸭副产品</a><span>|</span>
                                <a href="/shouye/shangcheng">鸡肉</a><span>|</span>
                                <a href="/shouye/shangcheng">鸭肉</a><span>|</span>
                                <a href="/shouye/shangcheng">兔肉</a><span>|</span>
                                <a href="/shouye/shangcheng">鹅肉</a><span>|</span>
                                <a href="/shouye/shangcheng">鸽肉</a>

                            </div>
                        </div>
                        <div class="cell-box">
                            <h1>活禽</h1>
                            <div class="a-box">
                                <a href="/shouye/shangcheng">鸡</a><span>|</span>
                                <a href="/shouye/shangcheng">鸭</a><span>|</span>
                                <a href="/shouye/shangcheng">鹅</a><span>|</span>
                                <a href="/shouye/shangcheng">鸽子</a><span>|</span>
                                <a href="/shouye/shangcheng" class="orange">山鸡</a><span>|</span>
                                <a href="/shouye/shangcheng">野鸭</a><span>|</span>
                                <a href="/shouye/shangcheng">竹鸡</a><span>|</span>

                            </div>
                        </div>
                        <div class="cell-box">
                            <h1>活畜</h1>
                            <div class="a-box">
                                <a href="/shouye/shangcheng">羊</a><span>|</span>
                                <a href="/shouye/shangcheng">牛</a><span>|</span>
                                <a href="/shouye/shangcheng">猪</a><span>|</span>
                                <a href="/shouye/shangcheng">狗</a><span>|</span>
                                <a href="/shouye/shangcheng" class="orange">兔子</a><span>|</span>
                                <a href="/shouye/shangcheng">马</a><span>|</span>
                                <a href="/shouye/shangcheng">驴</a><span>|</span>

                            </div>
                        </div>
                    </div>
                    <div class="sub-nav-left">
                        <div class="cell-box">
                            <h1>禽畜苗</h1>
                            <div class="a-box">
                                <a href="/shouye/shangcheng">鸡苗</a><span>|</span>
                                <a href="/shouye/shangcheng">猪苗</a><span>|</span>
                                <a href="/shouye/shangcheng">鹅苗</a><span>|</span>
                                <a href="/shouye/shangcheng">鸭苗</a><span>|</span>
                                <a href="/shouye/shangcheng" class="orange">斑鸠苗</a>

                            </div>
                        </div>
                        <div class="cell-box">
                            <h1>蛋类</h1>
                            <div class="a-box">
                                <a href="/shouye/shangcheng">鸡蛋</a><span>|</span>
                                <a href="/shouye/shangcheng">鸭蛋</a><span>|</span>
                                <a href="/shouye/shangcheng">鹅蛋</a><span>|</span>
                                <a href="/shouye/shangcheng">皮蛋</a><span>|</span>
                                <a href="/shouye/shangcheng" class="orange">鸽子蛋</a>

                            </div>
                        </div>
                    </div>
                </li>
                <!-- 	水果 -->
                <li data-hidden="li" id="hiden-2">

                    <div class="sub-nav-right">
                        <div class="cell-box">
                            <h1>核果仁果类</h1>
                            <div class="a-box">
                                <a href="/shouye/shangcheng">苹果</a><span>|</span>
                                <a href="/shouye/shangcheng">樱桃</a><span>|</span>
                                <a href="/shouye/shangcheng">梨</a><span>|</span>
                                <a href="/shouye/shangcheng">鲜桃</a><span>|</span>
                                <a href="/shouye/shangcheng" class="orange">李子</a>
                                <a href="/shouye/shangcheng">山楂</a><span>|</span>
                                <a href="/shouye/shangcheng">毛桃</a><span>|</span>
                                <a href="/shouye/shangcheng">枇杷</a><span>|</span>
                                <a href="/shouye/shangcheng">人参果</a><span>|</span>
                                <a href="/shouye/shangcheng">石榴</a><span>|</span>
                                <a href="/shouye/shangcheng">黄桃</a>
                                <a href="/shouye/shangcheng">蜜桃</a><span>|</span>
                                <a href="/shouye/shangcheng">罗汉果</a><span>|</span>
                                <a href="/shouye/shangcheng">杏</a><span>|</span>
                                <a href="/shouye/shangcheng">蟠桃</a><span>|</span>
                                <a href="/shouye/shangcheng">大枣</a>

                            </div>
                        </div>
                        <div class="cell-box">
                            <h1>柑橘类</h1>
                            <div class="a-box">
                                <a href="/shouye/shangcheng">柑橘</a><span>|</span>
                                <a href="/shouye/shangcheng">橙子</a><span>|</span>
                                <a href="/shouye/shangcheng">柠檬</a><span>|</span>
                                <a href="/shouye/shangcheng">金桔</a>

                            </div>
                        </div>
                        <div class="cell-box">
                            <h1>热带水果类</h1>
                            <div class="a-box">
                                <a href="/shouye/shangcheng">柑橘</a><span>|</span>
                                <a href="/shouye/shangcheng">榴莲</a><span>|</span>
                                <a href="/shouye/shangcheng">芒果</a><span>|</span>
                                <a href="/shouye/shangcheng">波罗蜜</a><span>|</span>
                                <a href="/shouye/shangcheng" class="orange">香蕉</a>
                                <a href="/shouye/shangcheng">火龙果</a><span>|</span>
                                <a href="/shouye/shangcheng">龙眼</a><span>|</span>
                                <a href="/shouye/shangcheng">椰子</a><span>|</span>
                                <a href="/shouye/shangcheng">菠萝</a><span>|</span>
                                <a href="/shouye/shangcheng">山竹</a><span>|</span>
                                <a href="/shouye/shangcheng">荔枝</a>
                                <a href="/shouye/shangcheng">石榴</a><span>|</span>
                                <a href="/shouye/shangcheng">杨桃</a>

                            </div>
                        </div>
                    </div>
                    <div class="sub-nav-left">
                        <div class="cell-box">
                            <h1>浆果类</h1>
                            <div class="a-box">
                                <a href="/shouye/shangcheng">草莓</a><span>|</span>
                                <a href="/shouye/shangcheng">葡萄</a><span>|</span>
                                <a href="/shouye/shangcheng">百香果</a><span>|</span>
                                <a href="/shouye/shangcheng">猕猴桃</a><span>|</span>
                                <a href="/shouye/shangcheng" class="orange">圣女果</a>
                                <a href="/shouye/shangcheng">柿子</a><span>|</span>
                                <a href="/shouye/shangcheng">无花果</a><span>|</span>
                                <a href="/shouye/shangcheng">蓝莓</a><span>|</span>
                                <a href="/shouye/shangcheng">牛奶果 </a><span>|</span>
                                <a href="/shouye/shangcheng">灯笼果</a><span>|</span>
                                <a href="/shouye/shangcheng">黑莓</a>
                                <a href="/shouye/shangcheng">酸角</a><span>|</span>
                                <a href="/shouye/shangcheng">桃金娘</a><span>|</span>
                                <a href="/shouye/shangcheng">树葡萄</a>

                            </div>
                        </div>
                        <div class="cell-box">
                            <h1>瓜果类</h1>
                            <div class="a-box">
                                <a href="/shouye/shangcheng">西瓜</a><span>|</span>
                                <a href="/shouye/shangcheng">哈密瓜</a><span>|</span>
                                <a href="/shouye/shangcheng">甜瓜</a><span>|</span>
                                <a href="/shouye/shangcheng">八月瓜</a><span>|</span>
                                <a href="/shouye/shangcheng" class="orange">火山果</a>
                                <a href="/shouye/shangcheng">打瓜</a><span>|</span>
                                <a href="/shouye/shangcheng">九月瓜</a><span>|</span>
                                <a href="/shouye/shangcheng">地稍瓜</a>

                            </div>
                        </div>

                    </div>
                </li>
                <!-- 	农副加工 -->
                <li data-hidden="li" id="hiden-3">

                    <div class="sub-nav-right">
                        <div class="cell-box">
                            <h1>坚果</h1>
                            <div class="a-box">
                                <a href="/shouye/shangcheng">核桃</a><span>|</span>
                                <a href="/shouye/shangcheng">瓜子</a><span>|</span>
                                <a href="/shouye/shangcheng">板栗</a><span>|</span>
                                <a href="/shouye/shangcheng">开心果</a><span>|</span>
                                <a href="/shouye/shangcheng" class="orange">巴旦木</a>
                                <a href="/shouye/shangcheng">松子</a><span>|</span>
                                <a href="/shouye/shangcheng">腰果</a><span>|</span>
                                <a href="/shouye/shangcheng">杏仁</a><span>|</span>
                                <a href="/shouye/shangcheng">风流果</a><span>|</span>
                                <a href="/shouye/shangcheng">沙漠果</a><span>|</span>
                                <a href="/shouye/shangcheng">橡子仁</a>
                                <a href="/shouye/shangcheng">檎子</a><span>|</span>
                                <a href="/shouye/shangcheng">夏威夷果</a>

                            </div>
                        </div>
                        <div class="cell-box">
                            <h1>干果</h1>
                            <div class="a-box">
                                <a href="/shouye/shangcheng">红枣</a><span>|</span>
                                <a href="/shouye/shangcheng">柿饼</a><span>|</span>
                                <a href="/shouye/shangcheng">葡萄干</a><span>|</span>
                                <a href="/shouye/shangcheng">蜜饯果脯</a><span>|</span>
                                <a href="/shouye/shangcheng" class="orange">桂圆干</a>
                                <a href="/shouye/shangcheng">地瓜干</a><span>|</span>
                                <a href="/shouye/shangcheng">莲子</a><span>|</span>
                                <a href="/shouye/shangcheng">银杏干果</a><span>|</span>
                                <a href="/shouye/shangcheng">山楂</a><span>|</span>
                                <a href="/shouye/shangcheng">干姜片</a>

                            </div>
                        </div>
                        <div class="cell-box">
                            <h1>水产加工</h1>
                            <div class="a-box">
                                <a href="/shouye/shangcheng">水产干货</a><span>|</span>
                                <a href="/shouye/shangcheng">冷冻水产品</a><span>|</span>
                                <a href="/shouye/shangcheng">腌制水产品</a>

                            </div>
                        </div>
                    </div>
                    <div class="sub-nav-left">
                        <div class="cell-box">
                            <h1>休闲速食品</h1>
                            <div class="a-box">
                                <a href="/shouye/shangcheng">休闲零食</a><span>|</span>
                                <a href="/shouye/shangcheng">饼干糕点</a><span>|</span>
                                <a href="/shouye/shangcheng">肉类零食</a><span>|</span>
                                <a href="/shouye/shangcheng">糖果</a><span>|</span>
                                <a href="/shouye/shangcheng" class="orange">罐头</a>
                                <a href="/shouye/shangcheng">自制果汁</a>

                            </div>
                        </div>
                        <div class="cell-box">
                            <h1>肉制品加工</h1>
                            <div class="a-box">
                                <a href="/shouye/shangcheng">腊制品</a><span>|</span>
                                <a href="/shouye/shangcheng">卤制品</a><span>|</span>
                                <a href="/shouye/shangcheng">腊肉</a><span>|</span>
                                <a href="/shouye/shangcheng">板鸭</a><span>|</span>
                                <a href="/shouye/shangcheng" class="orange">香肠</a>
                                <a href="/shouye/shangcheng">火腿</a><span>|</span>
                                <a href="/shouye/shangcheng">肉卷</a><span>|</span>

                            </div>
                        </div>
                        <div class="cell-box">
                            <h1>茶叶</h1>
                            <div class="a-box">
                                <a href="/shouye/shangcheng">花茶</a><span>|</span>
                                <a href="/shouye/shangcheng">绿茶</a><span>|</span>
                                <a href="/shouye/shangcheng">红茶</a><span>|</span>
                                <a href="/shouye/shangcheng">乌龙茶</a><span>|</span>
                                <a href="/shouye/shangcheng" class="orange">白茶</a>
                                <a href="/shouye/shangcheng">毛尖</a><span>|</span>
                                <a href="/shouye/shangcheng">黄茶</a><span>|</span>

                            </div>
                        </div>
                    </div>
                </li>
                <!-- 	蔬菜 -->
                <li data-hidden="li" id="hiden-4">

                    <div class="sub-nav-right">
                        <div class="cell-box">
                            <h1>根茎菜类</h1>
                            <div class="a-box">
                                <a href="/shouye/shangcheng">红薯</a><span>|</span>
                                <a href="/shouye/shangcheng">山药</a><span>|</span>
                                <a href="/shouye/shangcheng">土豆</a><span>|</span>
                                <a href="/shouye/shangcheng">竹笋</a><span>|</span>
                                <a href="/shouye/shangcheng" class="orange">魔芋</a>
                                <a href="/shouye/shangcheng">萝卜</a><span>|</span>
                                <a href="/shouye/shangcheng">芋头</a><span>|</span>
                                <a href="/shouye/shangcheng">胡萝卜</a><span>|</span>
                                <a href="/shouye/shangcheng">葛根</a><span>|</span>
                                <a href="/shouye/shangcheng">紫薯</a><span>|</span>
                                <a href="/shouye/shangcheng">芦笋</a>

                            </div>
                        </div>
                        <div class="cell-box">
                            <h1>葱姜蒜类</h1>
                            <div class="a-box">
                                <a href="/shouye/shangcheng">生姜</a><span>|</span>
                                <a href="/shouye/shangcheng">大蒜</a><span>|</span>
                                <a href="/shouye/shangcheng">大葱</a><span>|</span>
                                <a href="/shouye/shangcheng">蒜苔</a><span>|</span>
                                <a href="/shouye/shangcheng" class="orange">韭菜</a>
                                <a href="/shouye/shangcheng">蒜苗</a><span>|</span>
                                <a href="/shouye/shangcheng">洋葱</a><span>|</span>
                                <a href="/shouye/shangcheng">小葱</a><span>|</span>
                                <a href="/shouye/shangcheng">韭黄</a><span>|</span>
                                <a href="/shouye/shangcheng">风姜</a><span>|</span>
                                <a href="/shouye/shangcheng">葱仔</a>

                            </div>
                        </div>
                        <div class="cell-box">
                            <h1>茄果菜类</h1>
                            <div class="a-box">
                                <a href="/shouye/shangcheng">辣椒</a><span>|</span>
                                <a href="/shouye/shangcheng">西红柿</a><span>|</span>
                                <a href="/shouye/shangcheng">鲜玉米</a><span>|</span>
                                <a href="/shouye/shangcheng">茄子</a><span>|</span>
                                <a href="/shouye/shangcheng" class="orange">秋葵</a>

                            </div>
                        </div>
                    </div>
                    <div class="sub-nav-left">
                        <div class="cell-box">
                            <h1>叶菜类</h1>
                            <div class="a-box">
                                <a href="/shouye/shangcheng">白菜</a><span>|</span>
                                <a href="/shouye/shangcheng">芹菜</a><span>|</span>
                                <a href="/shouye/shangcheng">莴笋</a><span>|</span>
                                <a href="/shouye/shangcheng">菠菜</a><span>|</span>
                                <a href="/shouye/shangcheng" class="orange">香菜</a>
                                <a href="/shouye/shangcheng">菜苔</a><span>|</span>
                                <a href="/shouye/shangcheng">生菜</a><span>|</span>
                                <a href="/shouye/shangcheng">小白菜</a><span>|</span>
                                <a href="/shouye/shangcheng">娃娃菜</a><span>|</span>
                                <a href="/shouye/shangcheng">芥菜</a><span>|</span>
                                <a href="/shouye/shangcheng">儿菜</a>
                                <a href="/shouye/shangcheng">空心菜</a><span>|</span>
                                <a href="/shouye/shangcheng">油菜</a><span>|</span>
                                <a href="/shouye/shangcheng">黄新菜</a><span>|</span>
                                <a href="/shouye/shangcheng">甜菜</a><span>|</span>
                                <a href="/shouye/shangcheng">萝卜菜</a>
                                <a href="/shouye/shangcheng">豆瓣菜</a><span>|</span>

                            </div>
                        </div>
                        <div class="cell-box">
                            <h1>食用菌类</h1>
                            <div class="a-box">
                                <a href="/shouye/shangcheng">香菇</a><span>|</span>
                                <a href="/shouye/shangcheng">木耳</a><span>|</span>
                                <a href="/shouye/shangcheng">平菇</a><span>|</span>
                                <a href="/shouye/shangcheng">金针菇</a><span>|</span>
                                <a href="/shouye/shangcheng" class="orange">蘑菇</a>
                                <a href="/shouye/shangcheng">红菇</a><span>|</span>
                                <a href="/shouye/shangcheng">猴头菇</a><span>|</span>
                                <a href="/shouye/shangcheng">松菇</a><span>|</span>

                            </div>
                        </div>
                        <div class="cell-box">
                            <h1>瓜菜类</h1>
                            <div class="a-box">
                                <a href="/shouye/shangcheng">黄瓜</a><span>|</span>
                                <a href="/shouye/shangcheng">南瓜</a><span>|</span>
                                <a href="/shouye/shangcheng">冬瓜</a><span>|</span>
                                <a href="/shouye/shangcheng">苦瓜</a><span>|</span>
                                <a href="/shouye/shangcheng" class="orange">丝瓜</a>
                                <a href="/shouye/shangcheng">菜瓜</a><span>|</span>
                                <a href="/shouye/shangcheng">丝瓜 </a><span>|</span>

                            </div>
                        </div>
                    </div>
                </li>
                <!-- 	水产 -->
                <li data-hidden="li" id="hiden-5">

                    <div class="sub-nav-right">
                        <div class="cell-box">
                            <h1>淡水鱼类 </h1>
                            <div class="a-box">
                                <a href="/shouye/shangcheng">草鱼</a><span>|</span>
                                <a href="/shouye/shangcheng">鲫鱼</a><span>|</span>
                                <a href="/shouye/shangcheng">黄鳝</a><span>|</span>
                                <a href="/shouye/shangcheng">泥鳅</a><span>|</span>
                                <a href="/shouye/shangcheng" class="orange">鲈鱼</a>
                                <a href="/shouye/shangcheng">罗非鱼</a><span>|</span>
                                <a href="/shouye/shangcheng">鲟鱼</a><span>|</span>
                                <a href="/shouye/shangcheng">鳗鱼</a><span>|</span>
                                <a href="/shouye/shangcheng">银鱼</a><span>|</span>

                            </div>
                        </div>
                        <div class="cell-box">
                            <h1>虾类 </h1>
                            <div class="a-box">
                                <a href="/shouye/shangcheng">海虾</a><span>|</span>
                                <a href="/shouye/shangcheng">小龙虾</a><span>|</span>
                                <a href="/shouye/shangcheng">龙虾</a><span>|</span>
                                <a href="/shouye/shangcheng">青虾</a><span>|</span>
                                <a href="/shouye/shangcheng" class="orange">淡水虾 </a>
                                <a href="/shouye/shangcheng">皮皮虾</a><span>|</span>
                                <a href="/shouye/shangcheng">米虾</a><span>|</span>

                            </div>
                        </div>
                        <div class="cell-box">
                            <h1>海水鱼类</h1>
                            <div class="a-box">
                                <a href="/shouye/shangcheng">带鱼</a><span>|</span>
                                <a href="/shouye/shangcheng">黄花鱼</a><span>|</span>
                                <a href="/shouye/shangcheng">三文鱼</a><span>|</span>
                                <a href="/shouye/shangcheng">刀鱼</a><span>|</span>
                                <a href="/shouye/shangcheng" class="orange">金枪鱼</a>
                                <a href="/shouye/shangcheng">马哈鱼</a><span>|</span>
                                <a href="/shouye/shangcheng">梭鱼</a><span>|</span>
                                <a href="/shouye/shangcheng">鲑鱼</a><span>|</span>
                                <a href="/shouye/shangcheng">黑石斑</a><span>|</span>
                                <a href="/shouye/shangcheng">跳跳鱼</a><span>|</span>

                            </div>
                        </div>
                    </div>
                    <div class="sub-nav-left">
                        <div class="cell-box">
                            <h1>贝类</h1>
                            <div class="a-box">
                                <a href="/shouye/shangcheng">海鲜贝类</a><span>|</span>
                                <a href="/shouye/shangcheng">鲍鱼</a><span>|</span>
                                <a href="/shouye/shangcheng">扇贝</a><span>|</span>
                                <a href="/shouye/shangcheng">河蚌</a><span>|</span>
                                <a href="/shouye/shangcheng" class="orange">珍珠贝</a>

                            </div>
                        </div>
                        <div class="cell-box">
                            <h1>蟹类</h1>
                            <div class="a-box">
                                <a href="/shouye/shangcheng">大闸蟹</a><span>|</span>
                                <a href="/shouye/shangcheng">海蟹</a><span>|</span>
                                <a href="/shouye/shangcheng">鲍鱼 </a><span>|</span>
                                <a href="/shouye/shangcheng">梭子蟹</a><span>|</span>
                                <a href="/shouye/shangcheng" class="orange">青蟹</a>
                                <a href="/shouye/shangcheng">石蟹</a><span>|</span>
                                <a href="/shouye/shangcheng">招潮蟹</a><span>|</span>

                            </div>
                            <div class="cell-box">
                                <h1>水产种苗</h1>
                                <div class="a-box">
                                    <a href="/shouye/shangcheng">鱼苗</a><span>|</span>
                                    <a href="/shouye/shangcheng">虾苗</a><span>|</span>
                                    <a href="/shouye/shangcheng">甲鱼苗</a><span>|</span>
                                    <a href="/shouye/shangcheng">黄鳝苗</a><span>|</span>
                                    <a href="/shouye/shangcheng" class="orange">蟹苗</a>

                                </div>
                            </div>
                        </div>
                    </div>
                </li>
                <!-- 	种子种苗 -->
                <li data-hidden="li" id="hiden-6">

                    <div class="sub-nav-right">
                        <div class="cell-box">
                            <h1>水果种苗</h1>
                            <div class="a-box">
                                <a href="/shouye/shangcheng">柑橘苗</a><span>|</span>
                                <a href="/shouye/shangcheng">桃树苗</a><span>|</span>
                                <a href="/shouye/shangcheng">樱桃苗</a><span>|</span>
                                <a href="/shouye/shangcheng">李子树苗</a><span>|</span>
                                <a href="/shouye/shangcheng" class="orange">苹果树苗</a>
                                <a href="/shouye/shangcheng">梨树苗</a><span>|</span>
                                <a href="/shouye/shangcheng">枣树苗</a><span>|</span>
                                <a href="/shouye/shangcheng">石榴树苗</a><span>|</span>
                                <a href="/shouye/shangcheng">草莓苗</a><span>|</span>
                                <a href="/shouye/shangcheng">杨梅树苗</a><span>|</span>
                                <a href="/shouye/shangcheng">杏树苗</a>
                                <a href="/shouye/shangcheng">金桔苗</a><span>|</span>
                                <a href="/shouye/shangcheng">荔枝苗</a><span>|</span>
                            </div>
                        </div>
                        <div class="cell-box">
                            <h1>蔬菜种子</h1>
                            <div class="a-box">
                                <a href="/shouye/shangcheng">辣椒种子</a><span>|</span>
                                <a href="/shouye/shangcheng">南瓜种子</a><span>|</span>
                                <a href="/shouye/shangcheng">豆角种子</a><span>|</span>
                                <a href="/shouye/shangcheng">黄瓜种子</a><span>|</span>
                                <a href="/shouye/shangcheng" class="orange">西红柿种子</a>
                                <a href="/shouye/shangcheng">白菜种子</a><span>|</span>
                                <a href="/shouye/shangcheng">韭菜种子</a><span>|</span>
                                <a href="/shouye/shangcheng">苦瓜种子</a><span>|</span>
                                <a href="/shouye/shangcheng">冬瓜种子</a><span>|</span>
                                <a href="/shouye/shangcheng">萝卜种子</a><span>|</span>
                                <a href="/shouye/shangcheng">茄子种子</a>
                                <a href="/shouye/shangcheng">毛豆种子</a><span>|</span>

                            </div>
                        </div>
                        <div class="cell-box">
                            <h1>苗床小苗</h1>
                            <div class="a-box">
                                <a href="/shouye/shangcheng">油茶树苗</a><span>|</span>
                                <a href="/shouye/shangcheng">核桃苗</a><span>|</span>
                                <a href="/shouye/shangcheng">板栗树苗</a><span>|</span>
                                <a href="/shouye/shangcheng">茶树苗</a><span>|</span>
                                <a href="/shouye/shangcheng" class="orange">竹苗</a>
                                <a href="/shouye/shangcheng">杨树苗</a><span>|</span>
                                <a href="/shouye/shangcheng">银杏树苗</a><span>|</span>
                                <a href="/shouye/shangcheng">柏树苗</a><span>|</span>
                                <a href="/shouye/shangcheng">枫树苗</a><span>|</span>

                            </div>
                        </div>
                    </div>
                    <div class="sub-nav-left">
                        <div class="cell-box">
                            <h1>粮油类种子</h1>
                            <div class="a-box">
                                <a href="/shouye/shangcheng">玉米种子</a><span>|</span>
                                <a href="/shouye/shangcheng">花生种子</a><span>|</span>
                                <a href="/shouye/shangcheng">水稻种子</a><span>|</span>
                                <a href="/shouye/shangcheng">高粱种子</a><span>|</span>
                                <a href="/shouye/shangcheng" class="orange">黄豆种子</a>
                                <a href="/shouye/shangcheng">芝麻种子</a><span>|</span>
                                <a href="/shouye/shangcheng">大麦种子</a><span>|</span>
                                <a href="/shouye/shangcheng">小米种子</a><span>|</span>
                                <a href="/shouye/shangcheng">绿豆种子</a><span>|</span>
                                <a href="/shouye/shangcheng">小麦种子</a><span>|</span>
                                <a href="/shouye/shangcheng">青豆种子</a>
                                <a href="/shouye/shangcheng">油茶籽种子</a><span>|</span>

                            </div>
                        </div>

                    </div>
                </li>
                <!-- 	农贸农机 -->
                <li data-hidden="li" id="hiden-7">

                    <div class="sub-nav-right">
                        <div class="cell-box">
                            <h1>农业机械设备</h1>
                            <div class="a-box">
                                <a href="/shouye/shangcheng">饲料机械</a><span>|</span>
                                <a href="/shouye/shangcheng">农用拖拉机</a><span>|</span>
                                <a href="/shouye/shangcheng">植保机械</a><span>|</span>
                                <a href="/shouye/shangcheng">农机配件</a><span>|</span>
                                <a href="/shouye/shangcheng" class="orange">肥料机械</a>
                                <a href="/shouye/shangcheng">榨油机械</a><span>|</span>
                                <a href="/shouye/shangcheng">水产捕捞机械</a><span>|</span>
                                <a href="/shouye/shangcheng">施肥机械</a><span>|</span>
                                <a href="/shouye/shangcheng">干燥机械</a><span>|</span>
                                <a href="/shouye/shangcheng">林业机械</a><span>|</span>
                                <a href="/shouye/shangcheng">食用菌机械</a>
                                <a href="/shouye/shangcheng">磨粉磨浆机械</a><span>|</span>
                                <a href="/shouye/shangcheng">清洗机械</a><span>|</span>
                                <a href="/shouye/shangcheng">干燥机械</a><span>|</span>

                            </div>
                        </div>
                        <div class="cell-box">
                            <h1>农用物资</h1>
                            <div class="a-box">
                                <a href="/shouye/shangcheng">塑料膜</a><span>|</span>
                                <a href="/shouye/shangcheng">花盆容器</a><span>|</span>
                                <a href="/shouye/shangcheng">碳</a><span>|</span>
                                <a href="/shouye/shangcheng">木材</a><span>|</span>
                                <a href="/shouye/shangcheng" class="orange">剪刀类</a>
                                <a href="/shouye/shangcheng">蜂具</a><span>|</span>
                                <a href="/shouye/shangcheng">板凳</a><span>|</span>
                                <a href="/shouye/shangcheng">石灰</a><span>|</span>
                                <a href="/shouye/shangcheng">电筒</a><span>|</span>
                                <a href="/shouye/shangcheng">锯子</a><span>|</span>
                                <a href="/shouye/shangcheng">镐头类</a>

                            </div>
                        </div>
                        <div class="cell-box">
                            <h1>农药类</h1>
                            <div class="a-box">
                                <a href="/shouye/shangcheng">杀菌类</a><span>|</span>
                                <a href="/shouye/shangcheng">杀虫剂</a><span>|</span>
                                <a href="/shouye/shangcheng">植物生长调节剂</a><span>|</span>
                                <a href="/shouye/shangcheng">除草剂</a><span>|</span>
                                <a href="/shouye/shangcheng" class="orange">灭鼠剂</a>

                            </div>
                        </div>
                    </div>
                    <div class="sub-nav-left">
                        <div class="cell-box">
                            <h1>大棚及温室</h1>
                            <div class="a-box">
                                <a href="/shouye/shangcheng">大棚设备</a><span>|</span>
                                <a href="/shouye/shangcheng">成套大棚</a><span>|</span>
                                <a href="/shouye/shangcheng">控温通风设备</a><span>|</span>

                            </div>
                        </div>


                    </div>
                </li>
                <!-- 	粮油米面 -->
                <li data-hidden="li" id="hiden-8">

                    <div class="sub-nav-right">
                        <div class="cell-box">
                            <h1>谷类作物</h1>
                            <div class="a-box">
                                <a href="/shouye/shangcheng">大米</a><span>|</span>
                                <a href="/shouye/shangcheng">玉米类</a><span>|</span>
                                <a href="/shouye/shangcheng">稻谷</a><span>|</span>
                                <a href="/shouye/shangcheng">小麦</a><span>|</span>
                                <a href="/shouye/shangcheng" class="orange">小米</a>
                                <a href="/shouye/shangcheng">高粱</a><span>|</span>
                                <a href="/shouye/shangcheng">糯米</a><span>|</span>
                                <a href="/shouye/shangcheng">荞麦</a><span>|</span>
                                <a href="/shouye/shangcheng">黑米</a><span>|</span>
                                <a href="/shouye/shangcheng">燕麦</a><span>|</span>
                                <a href="/shouye/shangcheng">大麦</a>
                                <a href="/shouye/shangcheng">青稞</a><span>|</span>
                                <a href="/shouye/shangcheng">旱稻</a><span>|</span>
                                <a href="/shouye/shangcheng">紫米</a><span>|</span>
                                <a href="/shouye/shangcheng">五谷米</a><span>|</span>
                                <a href="/shouye/shangcheng">麋子</a>

                            </div>
                        </div>
                        <div class="cell-box">
                            <h1>油料作物</h1>
                            <div class="a-box">
                                <a href="/shouye/shangcheng">花生</a><span>|</span>
                                <a href="/shouye/shangcheng">菜籽</a><span>|</span>
                                <a href="/shouye/shangcheng">茶籽</a><span>|</span>
                                <a href="/shouye/shangcheng">葵花籽</a><span>|</span>
                                <a href="/shouye/shangcheng" class="orange">芝麻</a>
                                <a href="/shouye/shangcheng">亚麻籽</a><span>|</span>
                                <a href="/shouye/shangcheng">桐梓</a><span>|</span>
                                <a href="/shouye/shangcheng">棉籽</a><span>|</span>
                                <a href="/shouye/shangcheng">紫米</a><span>|</span>
                                <a href="/shouye/shangcheng">胡麻籽</a><span>|</span>
                                <a href="/shouye/shangcheng">红花籽</a>
                                <a href="/shouye/shangcheng">油渣果</a><span>|</span>
                                <a href="/shouye/shangcheng">油棕籽</a><span>|</span>

                            </div>
                        </div>
                        <div class="cell-box">
                            <h1>香辛料</h1>
                            <div class="a-box">
                                <a href="/shouye/shangcheng">干辣椒</a><span>|</span>
                                <a href="/shouye/shangcheng">花椒</a><span>|</span>
                                <a href="/shouye/shangcheng">陈皮</a><span>|</span>
                                <a href="/shouye/shangcheng">胡椒</a><span>|</span>
                                <a href="/shouye/shangcheng" class="orange">桂皮</a>
                                <a href="/shouye/shangcheng">草果</a><span>|</span>
                                <a href="/shouye/shangcheng">茴香</a><span>|</span>
                                <a href="/shouye/shangcheng">孜然</a><span>|</span>
                                <a href="/shouye/shangcheng">花椒粉</a><span>|</span>
                                <a href="/shouye/shangcheng">八角粉</a><span>|</span>
                                <a href="/shouye/shangcheng">桂皮粉</a>
                                <a href="/shouye/shangcheng">洋葱粉</a><span>|</span>

                            </div>
                        </div>
                    </div>
                    <div class="sub-nav-left">
                        <div class="cell-box">
                            <h1>豆类作物</h1>
                            <div class="a-box">
                                <a href="/shouye/shangcheng">大豆</a><span>|</span>
                                <a href="/shouye/shangcheng">红豆</a><span>|</span>
                                <a href="/shouye/shangcheng">黑豆</a><span>|</span>
                                <a href="/shouye/shangcheng">绿豆</a><span>|</span>
                                <a href="/shouye/shangcheng" class="orange">干豌豆</a>
                                <a href="/shouye/shangcheng">花豆</a><span>|</span>
                                <a href="/shouye/shangcheng">蚕豆</a><span>|</span>
                                <a href="/shouye/shangcheng">豇豆</a><span>|</span>

                            </div>
                        </div>
                        <div class="cell-box">
                            <h1>调味品</h1>
                            <div class="a-box">
                                <a href="/shouye/shangcheng">糖</a><span>|</span>
                                <a href="/shouye/shangcheng">调味酱</a><span>|</span>
                                <a href="/shouye/shangcheng">盐</a><span>|</span>
                                <a href="/shouye/shangcheng">火锅料</a><span>|</span>
                                <a href="/shouye/shangcheng" class="orange">汤料</a>
                                <a href="/shouye/shangcheng">醋</a><span>|</span>
                                <a href="/shouye/shangcheng">酱油</a><span>|</span>
                                <a href="/shouye/shangcheng">剁椒</a><span>|</span>
                                <a href="/shouye/shangcheng">泡椒</a><span>|</span>
                                <a href="/shouye/shangcheng">卤料</a><span>|</span>
                                <a href="/shouye/shangcheng">鸡精</a>
                                <a href="/shouye/shangcheng">调味油</a><span>|</span>
                                <a href="/shouye/shangcheng">调味汁</a><span>|</span>

                            </div>
                        </div>
                        <div class="cell-box">
                            <h1>食用油</h1>
                            <div class="a-box">
                                <a href="/shouye/shangcheng">豆油</a><span>|</span>
                                <a href="/shouye/shangcheng">花生油</a><span>|</span>
                                <a href="/shouye/shangcheng">菜籽油</a><span>|</span>
                                <a href="/shouye/shangcheng">芝麻油</a><span>|</span>
                                <a href="/shouye/shangcheng" class="orange">色拉油</a>
                                <a href="/shouye/shangcheng">橄榄油</a><span>|</span>
                                <a href="/shouye/shangcheng">芝麻油</a><span>|</span>

                            </div>
                        </div>
                    </div>
                </li>

            </ul>
        </div>
    </div>
    <!--right-con-->
    <div class="right-con" >
        <div class="nav">
            <a id="spe-a1" href="#">首页</a>

            <span class="line-a">|</span>
            <a href="/shouye/shangcheng">购物商城</a>
            <a href="./tuijian.jsp">推荐中心</a>
            <a href="./zhengce.jsp">相关扶贫政策</a>
            <a href="./hezhuo.jsp">合作联系</a>
            <a href="./join.jsp">加入我们</a>
            <a href="./about.jsp">关于我们</a>

            <img style="cursor: pointer" src="img/ad.gif" />
            <span class="keep-a" href="#"><a href="#" onclick="fun()">消费者保障</a></span>
        </div>
        <!--show-box-->
        <div class="show-box">
            <!--content-->
            <div class="content">
                <ul class="imgBox">
                    <li><a href="#"><img src="img/shuicai1.jpg"></a></li>
                    <li><a href="#"><img src="img/shuiguo1.jpg"></a></li>
                    <li><a href="#"><img src="img/jidan1.jpg"></a></li>
                    <li><a href="#"><img src="img/LB4.jpg"></a></li>
                    <li><a href="#"><img src="img/LB5.jpg"></a></li>
                </ul>
                <div class="currentNum">
                    <span class="imgNum mark-color"></span>
                    <span class="imgNum"></span>
                    <span class="imgNum"></span>
                    <span class="imgNum"></span>
                    <span class="imgNum"></span>
                </div>
                <div class="control to-left"><i class="fa fa-angle-left"></i></div>
                <div class="control to-right"><i class="fa fa-angle-right"></i></div>
            </div>
            <a style="float: left" href="#"><img src="img/S2.jpg" /></a>
            <!--content-down-->
            <div class="content-down">
                <ul class="imgBox1">
                    <li>
                        <a href="#"><img src="img/LBB1.png" /></a>
                        <a href="#"><img src="img/LBB2.png" /></a>
                        <a href="#"><img src="img/LBB3.png" /></a>
                        <a href="#"><img src="img/LBB4.png" /></a>
                    </li>
                    <li>
                        <a href="#"><img src="img/LBB1.png" /></a>
                        <a href="#"><img src="img/LBB2.png" /></a>
                        <a href="#"><img src="img/LBB3.png" /></a>
                        <a href="#"><img src="img/LBB4.png" /></a>
                    </li>
                    <li>
                        <a href="#"><img src="img/LBB1.png" /></a>
                        <a href="#"><img src="img/LBB2.png" /></a>
                        <a href="#"><img src="img/LBB3.png" /></a>
                        <a href="#"><img src="img/LBB4.png" /></a>
                    </li>
                    <li>
                        <a href="#"><img src="img/LBB1.png" /></a>
                        <a href="#"><img src="img/LBB2.png" /></a>
                        <a href="#"><img src="img/LBB3.png" /></a>
                        <a href="#"><img src="img/LBB4.png" /></a>
                    </li>
                    <li>
                        <a href="#"><img src="img/LBB1.png" /></a>
                        <a href="#"><img src="img/LBB2.png" /></a>
                        <a href="#"><img src="img/LBB3.png" /></a>
                        <a href="#"><img src="img/LBB4.png" /></a>
                    </li>
                </ul>
                <div class="currentNum-down">
                    <span class="imgNum1 mark-color"></span>
                    <span class="imgNum1"></span>
                    <span class="imgNum1"></span>
                    <span class="imgNum1"></span>
                    <span class="imgNum1"></span>
                </div>
                <div class="control1 to-left1"><i class="fa fa-angle-left"></i></div>
                <div class="control1 to-right1"><i class="fa fa-angle-right"></i></div>
            </div>
            <a style="float: left" href="#"><img src="img/S1.jpg" /></a>
        </div>
        <div class="tlinks">Collect from <a href="http://www.cssmoban.com/"  title="网站模板">网站模板</a></div>
        <!--right-sidbar-->
        <div class="right-sidebar">
            <div class="info-box">
                <ul class="tab-nav">
                    <li id="li-1" class="li-nav li-nav-hover li-border">公告</li>
                    <li id="li-2" class="li-nav">规则</li>
                    <li id="li-3" class="li-nav">论坛</li>
                    <li id="li-4" class="li-nav">安全</li>
                    <li style="border-right: none" id="li-5" class="li-nav">加入</li>
                </ul>
                <div id="box-1" style="display: block" class="hiddenBox">

                    <a href="#">
                        本网站非常重视用户的隐私和个人信息保护，您在使用
                      我们网站时，您需要向我们提供您本人真实的信息，我们
                      会通过《隐私政策》为你的隐私和个人信息完全保护！
                    </a>
                </div>
                <div id="box-2" class="hiddenBox">

                    <a href="#">[重要] 为避免不必要的损失，严禁私下交易，除本网站推荐卖家，违者后果自负！</a><br>
                    <a href="#">[重要] 用户使用过程中禁止违规操作！</a><br>
                    <a href="#">[重要] 商家存在违规操作，经检举终止合作！</a>

                </div>
                <div id="box-3" class="hiddenBox">
                    <a href="http://finance.sina.com.cn/realstock/company/sz000061/nc.shtml?from=BaiduAladin">[股票] 农产品股票行情</a><br>
                    <a href="http://guba.eastmoney.com/list,000061.html?from=BaiduAladdin">[贴吧] 农产品贴吧</a>
                    <a href="http://www.yhcko.com/keywordlist/%E5%86%9C%E4%BA%A7%E5%93%81">[话题] 农产品话题</a>
                    <a href="http://www.vegnet.com.cn/tech/detail/992347">[聚焦] 农产品聚焦</a>
                </div>
                <div id="box-4" class="hiddenBox">

                    <a href="#">
                        您有义务保护好自己的账号信息，如果您泄漏了账号信
                     息，您可能丢失个人识别信息，并且可能出现对您不利的后
                     果。因此，无论任何原因危机您的账户安全，您应该及时通
                     过客服与我们联系！
                    </a>
                </div>
                <div id="box-5" class="hiddenBox">
                    <a href="./join.jsp">[方法] 校园招聘</a><br>
                    <a href="./join.jsp">[方法] 社会招聘</a>
                </div>
            </div>

            <!--login-->
            <div class="user-info">
                <div class="login">
                    <!--<a class="login-btn" href="login.jsp"><i class="fa fa-user fa-user-loc"></i>登陆</a>&nbsp;&nbsp;&nbsp;-->
                    <a class="login-btn free" href="hezhuo.jsp">免费咨询</a>
                </div>
            </div>
            <!--service-->
            <div class="service">
                <!--<h3>在线客服</h3>-->

               <!-- <div class="service-cell">-->
                    <h5 class="service-i"><img src="img/den.png" /></h5>
                    <h6 class="service-zi">欢迎登录潇惠网</h6>
               <!-- </div>-->
            </div>


        </div>
    </div>
</div>

<!--main-->
<div class="sub-nav" >
    <input type="button" class="more-btn" value="更多"/>
    <!--sub-nav-cell-->
    <div class="sub-nav-cell">
        <h3 class="orange">主题市场</h3>
        <ul class="sub-nav-box">
            <li><a href="/shouye/shangcheng">禽畜</a></li>
            <li><a href="/shouye/shangcheng">水果</a></li>
            <li><a href="/shouye/shangcheng">蔬菜</a></li>
            <li><a href="/shouye/shangcheng">水产</a></li>
            <li><a href="/shouye/shangcheng">种苗</a></li>
            <li><a href="/shouye/shangcheng">农械</a></li>
            <li><a href="/shouye/shangcheng">粮油</a></li>
            <li><a href="/shouye/shangcheng">粮面</a></li>

        </ul>
    </div>
    <div class="sub-nav-cell">
        <h3 class="green-sp">特色采购</h3>
        <ul class="sub-nav-box sp">
            <li><a href="/shouye/shangcheng">金桔树苗</a></li>
            <li><a href="/shouye/shangcheng">美人李子</a></li>
            <li><a href="/shouye/shangcheng">车厘子</a></li>
            <li><a href="/shouye/shangcheng">锦绣黄桃</a></li>
            <li><a href="/shouye/shangcheng">李子苗</a></li>
            <li><a href="/shouye/shangcheng">车厘子</a></li>
            <li><a href="/shouye/shangcheng">锦绣黄桃</a></li>
            <li><a href="/shouye/shangcheng">李子苗</a></li>
        </ul>
    </div>
    <div class="sub-nav-cell">
        <h3 class="red-now">当前热点</h3>
        <ul class="sub-nav-box now">
            <li><a href="/shouye/shangcheng">金桔树苗</a></li>
            <li><a href="/shouye/shangcheng">美人李子</a></li>
            <li><a href="/shouye/shangcheng">车厘子</a></li>
            <li><a href="/shouye/shangcheng">锦绣黄桃</a></li>
            <li><a href="/shouye/shangcheng">李子苗</a></li>
            <li><a href="/shouye/shangcheng">车厘子</a></li>
            <li><a href="/shouye/shangcheng">锦绣黄桃</a></li>
            <li><a href="/shouye/shangcheng">李子苗</a></li>


        </ul>
    </div>
    <div class="sub-nav-cell">
        <h3 class="blue-more">更多农贸</h3>
        <ul class="sub-nav-box more">
            <li><a href="/shouye/shangcheng">烘干机</a></li>
            <li><a href="/shouye/shangcheng">枇杷苗</a></li>
            <li><a href="/shouye/shangcheng">鱼饵</a></li>
            <li><a href="/shouye/shangcheng">甜瓜种子</a></li>
            <li><a href="/shouye/shangcheng">烘干机</a></li>
            <li><a href="/shouye/shangcheng">枇杷苗</a></li>
            <li><a href="/shouye/shangcheng">鱼饵</a></li>

        </ul>
    </div>
</div>
<!--main-->
<div class="main" >
    <div class="main-left">
        <div class="main-title">
            <h1>最新供应<span class="show-title">实时掌握最新供应！</span></h1>
        </div>
        <c:forEach items="${xiangqingList}" var="item">
        <div class="product-box">
            <div class="inner-info">
                <div>
                    <span class="line-f40">|</span>
                    <span class="text-title">${item.x_name}</span>
                    <span class="share-weitao">
            <span class="line-f40">+</span>
            <input type="button" class="btn_cart" data-xid="${item.xid }" data-href="/shouye/shoppingcart"
                   value="${item.x_number eq 0?'暂无库存':'加入购物车' }" <c:if test="${item.status eq 0 or item.x_number eq 0}">disabled=""</c:if> >
          </span>
                </div>
                <div class="inner-left">
                    <a href="/shouye/${item.xid}">
                    <img src="${item.x_img}" style="width: 100%; height: 130px;"/>
                    </a>
                    <h1>商品名称：${item.x_name}</h1>
                    <span style="">商品价格 ：${item.x_price}/元</span>
                </div>
            </div>
        </div>
        </c:forEach>

    </div>
    <div class="main-right">
        <div class="time-go">
            <div class="gogo-choose">
                <h1 class="text_shadow">行业-资讯</h1>
                <div class="sub-show">
                    <div class="content-sub">
                        <ul class="imgBox2">
                            <li><a href="#"><img src="img/行1.jpg"></a></li>
                            <li><a href="#"><img src="img/行2.jpg"></a></li>
                            <li><a href="#"><img src="img/行3.jpg"></a></li>
                        </ul>
                        <div class="currentNum-sub">
                            <span class="imgNum2 mark-color"></span>
                            <span class="imgNum2"></span>
                            <span class="imgNum2"></span>
                        </div>

                        <div class="control2 to-left2"><i class="fa fa-angle-left"></i></div>
                        <div class="control2 to-right2"><i class="fa fa-angle-right"></i></div>

                    </div>
                    <div class="sub-right">
                        <img src="img/0005.png" />
                        <img src="img/0006.png" />
                    </div>

                </div>
                <p class="text-show">
          <span class="orange">[精彩专题]&nbsp;
              <a href="http://www.qhrb.com.cn/2020/0410/271953.shtml">谷物进口仅占消费量2% 粮食产业链公司多举措保供应</a></span><br>
                    <span class="orange">[精彩专题]&nbsp;<a href="http://www.qhrb.com.cn/2020/0404/271721.shtml">农业农村部：近期国际粮价上涨主因恐慌性消费 不存在短缺问题</a></span><br>
                    <span class="orange">[精彩专题]&nbsp;<a href="https://www.cnhnb.com/xt/article-52136.html">泽普县花生地膜覆盖高效栽培技术</a></span>
                </p>
                <!--just-look-->
                <div class="just-look">
                    <a href="#"><img src="img/0001.png"><h6>水果</h6></a>
                    <a href="#"><img src="img/0002.png"><h6>蔬菜</h6></a>
                    <a href="#"><img src="img/0003.png"><h6>肉食</h6></a>
                </div>

                <!--just-text-->
                <ul class="jst-text">
                    <li><em class="orange">1</em><a href="http://www.qhrb.com.cn/2020/0313/270611.shtml">农业部：加强高标准农田、农田水利、农业机械化等现代农业基础设施建设 </a><span></span></li>
                    <li><em class="orange">2</em><a href="http://www.qhrb.com.cn/2020/0330/271432.shtml">多国限制粮食出口 农产品价格“波浪滔天”的涨势会出现吗？</a><span></span></li>
                    <li><em class="orange">3</em><a href="http://www.qhrb.com.cn/2020/0327/271371.shtml">阿根廷豆农囤货待价而沽 新冠冲击国际农产品供应链</a><span></span></li>
                    <li><em>4</em><a href="http://www.qhrb.com.cn/2020/0325/271258.shtml">农业农村部派出工作组督导重大病虫害防控</a><span></span></li>
                    <li><em class="orange">5</em><a href="http://www.qhrb.com.cn/2019/1220/267229.shtml">4万吨中央储备冻猪肉刚“发货” 又有4万吨在路上！</a><span></span></li>
                    <li><em class="orange">6</em><a href="http://www.qhrb.com.cn/2019/1024/264372.shtml">豆类期货反弹渐入佳境 </a><span></span></li>
                    <li><em class="orange">7</em><a href="http://www.qhrb.com.cn/2019/1018/264051.shtml">四季度生猪产能下降局面将改善 果菜价格明显回落</a><span></span></li>
                    <li><em>8</em><a href="http://www.qhrb.com.cn/2019/0911/262432.shtml">农业农村部副部长于康震：猪肉自给率目标保持在95%左右</a><span></span></li>
                    <li><em class="orange">9</em><a href="http://www.qhrb.com.cn/2019/0905/261982.shtml">中央财政加码支持生猪供应 养殖户这么看最强盈利“猪周期”</a><span></span></li>
                    </ul>
            </div>

            <!--circle-big-->
            <div class="circle-new">资讯</div>

            <!--time-circle-->
            <div class="time-circle"></div>
            <div class="time-circle bottom-circle"></div>
        </div>


    </div>
    <!--main-bottom-->
    <!--ad-->
</div>

<!--backtoTop1-->
<!--兼容所有现代浏览器同时包括 ie6/7/8/9 （ie6会有一点点抖动）-->
<div class="backtoTop" id="backToTop1">
    <div id="backToTop-up" class="up-back"><i class="fa fa-angle-up"></i></div>
    <div id="backToTop-down" class="down-back"><i class="fa fa-angle-down"></i></div>
</div>

<div >
    <%@include file="foot.jsp"%>
</div>

<script src="js/jquery_1.9.js"></script>
<script src="js/main.js"></script>
<script src="js/img-show.js"></script>
<script type="text/javascript" src="js/shouye.js"></script>
</body>

</html>