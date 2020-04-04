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
        <div class="other-search">
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
        </div>
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
                                <a href="#">牛副产品</a><span>|</span>
                                <a href="#">猪副产品</a><span>|</span>
                                <a href="#">牛肉</a><span>|</span>
                                <a href="#">猪肉</a><span>|</span>
                                <a href="#" class="orange">羊肉</a>
                                <a href="#">鸡副产品</a><span>|</span>
                                <a href="#">鸭副产品</a><span>|</span>
                                <a href="#">鸡肉</a><span>|</span>
                                <a href="#">鸭肉</a><span>|</span>
                                <a href="#">兔肉</a><span>|</span>
                                <a href="#">鹅肉</a><span>|</span>
                                <a href="#">鸽肉</a>

                            </div>
                        </div>
                        <div class="cell-box">
                            <h1>活禽</h1>
                            <div class="a-box">
                                <a href="#">鸡</a><span>|</span>
                                <a href="#">鸭</a><span>|</span>
                                <a href="#">鹅</a><span>|</span>
                                <a href="#">鸽子</a><span>|</span>
                                <a href="#" class="orange">山鸡</a><span>|</span>
                                <a href="#">野鸭</a><span>|</span>
                                <a href="#">竹鸡</a><span>|</span>

                            </div>
                        </div>
                        <div class="cell-box">
                            <h1>活畜</h1>
                            <div class="a-box">
                                <a href="#">羊</a><span>|</span>
                                <a href="#">牛</a><span>|</span>
                                <a href="#">猪</a><span>|</span>
                                <a href="#">狗</a><span>|</span>
                                <a href="#" class="orange">兔子</a><span>|</span>
                                <a href="#">马</a><span>|</span>
                                <a href="#">驴</a><span>|</span>

                            </div>
                        </div>
                    </div>
                    <div class="sub-nav-left">
                        <div class="cell-box">
                            <h1>禽畜苗</h1>
                            <div class="a-box">
                                <a href="#">鸡苗</a><span>|</span>
                                <a href="#">猪苗</a><span>|</span>
                                <a href="#">鹅苗</a><span>|</span>
                                <a href="#">鸭苗</a><span>|</span>
                                <a href="#" class="orange">斑鸠苗</a>

                            </div>
                        </div>
                        <div class="cell-box">
                            <h1>蛋类</h1>
                            <div class="a-box">
                                <a href="#">鸡蛋</a><span>|</span>
                                <a href="#">鸭蛋</a><span>|</span>
                                <a href="#">鹅蛋</a><span>|</span>
                                <a href="#">皮蛋</a><span>|</span>
                                <a href="#" class="orange">鸽子蛋</a>

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
                                <a href="#">苹果</a><span>|</span>
                                <a href="#">樱桃</a><span>|</span>
                                <a href="#">梨</a><span>|</span>
                                <a href="#">鲜桃</a><span>|</span>
                                <a href="#" class="orange">李子</a>
                                <a href="#">山楂</a><span>|</span>
                                <a href="#">毛桃</a><span>|</span>
                                <a href="#">枇杷</a><span>|</span>
                                <a href="#">人参果</a><span>|</span>
                                <a href="#">石榴</a><span>|</span>
                                <a href="#">黄桃</a>
                                <a href="#">蜜桃</a><span>|</span>
                                <a href="#">罗汉果</a><span>|</span>
                                <a href="#">杏</a><span>|</span>
                                <a href="#">蟠桃</a><span>|</span>
                                <a href="#">拐枣</a>

                            </div>
                        </div>
                        <div class="cell-box">
                            <h1>柑橘类</h1>
                            <div class="a-box">
                                <a href="#">柑橘</a><span>|</span>
                                <a href="#">橙子</a><span>|</span>
                                <a href="#">柠檬</a><span>|</span>
                                <a href="#">金桔</a>

                            </div>
                        </div>
                        <div class="cell-box">
                            <h1>热带水果类</h1>
                            <div class="a-box">
                                <a href="#">柑橘</a><span>|</span>
                                <a href="#">榴莲</a><span>|</span>
                                <a href="#">芒果</a><span>|</span>
                                <a href="#">波罗蜜</a><span>|</span>
                                <a href="#" class="orange">香蕉</a>
                                <a href="#">火龙果</a><span>|</span>
                                <a href="#">龙眼</a><span>|</span>
                                <a href="#">椰子</a><span>|</span>
                                <a href="#">菠萝</a><span>|</span>
                                <a href="#">山竹</a><span>|</span>
                                <a href="#">荔枝</a>
                                <a href="#">石榴</a><span>|</span>
                                <a href="#">杨桃</a>

                            </div>
                        </div>
                    </div>
                    <div class="sub-nav-left">
                        <div class="cell-box">
                            <h1>浆果类</h1>
                            <div class="a-box">
                                <a href="#">草莓</a><span>|</span>
                                <a href="#">葡萄</a><span>|</span>
                                <a href="#">百香果</a><span>|</span>
                                <a href="#">猕猴桃</a><span>|</span>
                                <a href="#" class="orange">圣女果</a>
                                <a href="#">柿子</a><span>|</span>
                                <a href="#">无花果</a><span>|</span>
                                <a href="#">蓝莓</a><span>|</span>
                                <a href="#">牛奶果 </a><span>|</span>
                                <a href="#">灯笼果</a><span>|</span>
                                <a href="#">黑莓</a>
                                <a href="#">酸角</a><span>|</span>
                                <a href="#">桃金娘</a><span>|</span>
                                <a href="#">树葡萄</a>

                            </div>
                        </div>
                        <div class="cell-box">
                            <h1>瓜果类</h1>
                            <div class="a-box">
                                <a href="#">西瓜</a><span>|</span>
                                <a href="#">哈密瓜</a><span>|</span>
                                <a href="#">甜瓜</a><span>|</span>
                                <a href="#">八月瓜</a><span>|</span>
                                <a href="#" class="orange">火山果</a>
                                <a href="#">打瓜</a><span>|</span>
                                <a href="#">九月瓜</a><span>|</span>
                                <a href="#">地稍瓜</a>

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
                                <a href="#">核桃</a><span>|</span>
                                <a href="#">瓜子</a><span>|</span>
                                <a href="#">板栗</a><span>|</span>
                                <a href="#">开心果</a><span>|</span>
                                <a href="#" class="orange">巴旦木</a>
                                <a href="#">松子</a><span>|</span>
                                <a href="#">腰果</a><span>|</span>
                                <a href="#">杏仁</a><span>|</span>
                                <a href="#">风流果</a><span>|</span>
                                <a href="#">沙漠果</a><span>|</span>
                                <a href="#">橡子仁</a>
                                <a href="#">檎子</a><span>|</span>
                                <a href="#">夏威夷果</a>

                            </div>
                        </div>
                        <div class="cell-box">
                            <h1>干果</h1>
                            <div class="a-box">
                                <a href="#">红枣</a><span>|</span>
                                <a href="#">柿饼</a><span>|</span>
                                <a href="#">葡萄干</a><span>|</span>
                                <a href="#">蜜饯果脯</a><span>|</span>
                                <a href="#" class="orange">桂圆干</a>
                                <a href="#">地瓜干</a><span>|</span>
                                <a href="#">莲子</a><span>|</span>
                                <a href="#">银杏干果</a><span>|</span>
                                <a href="#">山楂</a><span>|</span>
                                <a href="#">干姜片</a>

                            </div>
                        </div>
                        <div class="cell-box">
                            <h1>水产加工</h1>
                            <div class="a-box">
                                <a href="#">水产干货</a><span>|</span>
                                <a href="#">冷冻水产品</a><span>|</span>
                                <a href="#">腌制水产品</a>

                            </div>
                        </div>
                    </div>
                    <div class="sub-nav-left">
                        <div class="cell-box">
                            <h1>休闲速食品</h1>
                            <div class="a-box">
                                <a href="#">休闲零食</a><span>|</span>
                                <a href="#">饼干糕点</a><span>|</span>
                                <a href="#">肉类零食</a><span>|</span>
                                <a href="#">糖果</a><span>|</span>
                                <a href="#" class="orange">罐头</a>
                                <a href="#">自制果汁</a>

                            </div>
                        </div>
                        <div class="cell-box">
                            <h1>肉制品加工</h1>
                            <div class="a-box">
                                <a href="#">腊制品</a><span>|</span>
                                <a href="#">卤制品</a><span>|</span>
                                <a href="#">腊肉</a><span>|</span>
                                <a href="#">板鸭</a><span>|</span>
                                <a href="#" class="orange">香肠</a>
                                <a href="#">火腿</a><span>|</span>
                                <a href="#">肉卷</a><span>|</span>

                            </div>
                        </div>
                        <div class="cell-box">
                            <h1>茶叶</h1>
                            <div class="a-box">
                                <a href="#">花茶</a><span>|</span>
                                <a href="#">绿茶</a><span>|</span>
                                <a href="#">红茶</a><span>|</span>
                                <a href="#">乌龙茶</a><span>|</span>
                                <a href="#" class="orange">白茶</a>
                                <a href="#">毛尖</a><span>|</span>
                                <a href="#">黄茶</a><span>|</span>

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
                                <a href="#">红薯</a><span>|</span>
                                <a href="#">山药</a><span>|</span>
                                <a href="#">土豆</a><span>|</span>
                                <a href="#">竹笋</a><span>|</span>
                                <a href="#" class="orange">魔芋</a>
                                <a href="#">萝卜</a><span>|</span>
                                <a href="#">芋头</a><span>|</span>
                                <a href="#">胡萝卜</a><span>|</span>
                                <a href="#">葛根</a><span>|</span>
                                <a href="#">紫薯</a><span>|</span>
                                <a href="#">芦笋</a>

                            </div>
                        </div>
                        <div class="cell-box">
                            <h1>葱姜蒜类</h1>
                            <div class="a-box">
                                <a href="#">生姜</a><span>|</span>
                                <a href="#">大蒜</a><span>|</span>
                                <a href="#">大葱</a><span>|</span>
                                <a href="#">蒜苔</a><span>|</span>
                                <a href="#" class="orange">韭菜</a>
                                <a href="#">蒜苗</a><span>|</span>
                                <a href="#">洋葱</a><span>|</span>
                                <a href="#">小葱</a><span>|</span>
                                <a href="#">韭黄</a><span>|</span>
                                <a href="#">风姜</a><span>|</span>
                                <a href="#">葱仔</a>

                            </div>
                        </div>
                        <div class="cell-box">
                            <h1>茄果菜类</h1>
                            <div class="a-box">
                                <a href="#">辣椒</a><span>|</span>
                                <a href="#">西红柿</a><span>|</span>
                                <a href="#">鲜玉米</a><span>|</span>
                                <a href="#">茄子</a><span>|</span>
                                <a href="#" class="orange">秋葵</a>

                            </div>
                        </div>
                    </div>
                    <div class="sub-nav-left">
                        <div class="cell-box">
                            <h1>叶菜类</h1>
                            <div class="a-box">
                                <a href="#">白菜</a><span>|</span>
                                <a href="#">芹菜</a><span>|</span>
                                <a href="#">莴笋</a><span>|</span>
                                <a href="#">菠菜</a><span>|</span>
                                <a href="#" class="orange">香菜</a>
                                <a href="#">菜苔</a><span>|</span>
                                <a href="#">生菜</a><span>|</span>
                                <a href="#">小白菜</a><span>|</span>
                                <a href="#">娃娃菜</a><span>|</span>
                                <a href="#">芥菜</a><span>|</span>
                                <a href="#">儿菜</a>
                                <a href="#">空心菜</a><span>|</span>
                                <a href="#">油菜</a><span>|</span>
                                <a href="#">黄新菜</a><span>|</span>
                                <a href="#">甜菜</a><span>|</span>
                                <a href="#">萝卜菜</a>
                                <a href="#">豆瓣菜</a><span>|</span>

                            </div>
                        </div>
                        <div class="cell-box">
                            <h1>食用菌类</h1>
                            <div class="a-box">
                                <a href="#">香菇</a><span>|</span>
                                <a href="#">木耳</a><span>|</span>
                                <a href="#">平菇</a><span>|</span>
                                <a href="#">金针菇</a><span>|</span>
                                <a href="#" class="orange">蘑菇</a>
                                <a href="#">红菇</a><span>|</span>
                                <a href="#">猴头菇</a><span>|</span>
                                <a href="#">松菇</a><span>|</span>

                            </div>
                        </div>
                        <div class="cell-box">
                            <h1>瓜菜类</h1>
                            <div class="a-box">
                                <a href="#">黄瓜</a><span>|</span>
                                <a href="#">南瓜</a><span>|</span>
                                <a href="#">冬瓜</a><span>|</span>
                                <a href="#">苦瓜</a><span>|</span>
                                <a href="#" class="orange">丝瓜</a>
                                <a href="#">菜瓜</a><span>|</span>
                                <a href="#">丝瓜 </a><span>|</span>

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
                                <a href="#">草鱼</a><span>|</span>
                                <a href="#">鲫鱼</a><span>|</span>
                                <a href="#">黄鳝</a><span>|</span>
                                <a href="#">泥鳅</a><span>|</span>
                                <a href="#" class="orange">鲈鱼</a>
                                <a href="#">罗非鱼</a><span>|</span>
                                <a href="#">鲟鱼</a><span>|</span>
                                <a href="#">鳗鱼</a><span>|</span>
                                <a href="#">银鱼</a><span>|</span>

                            </div>
                        </div>
                        <div class="cell-box">
                            <h1>虾类 </h1>
                            <div class="a-box">
                                <a href="#">海虾</a><span>|</span>
                                <a href="#">小龙虾</a><span>|</span>
                                <a href="#">龙虾</a><span>|</span>
                                <a href="#">青虾</a><span>|</span>
                                <a href="#" class="orange">淡水虾 </a>
                                <a href="#">皮皮虾</a><span>|</span>
                                <a href="#">米虾</a><span>|</span>

                            </div>
                        </div>
                        <div class="cell-box">
                            <h1>海水鱼类</h1>
                            <div class="a-box">
                                <a href="#">带鱼</a><span>|</span>
                                <a href="#">黄花鱼</a><span>|</span>
                                <a href="#">三文鱼</a><span>|</span>
                                <a href="#">刀鱼</a><span>|</span>
                                <a href="#" class="orange">金枪鱼</a>
                                <a href="#">马哈鱼</a><span>|</span>
                                <a href="#">梭鱼</a><span>|</span>
                                <a href="#">鲑鱼</a><span>|</span>
                                <a href="#">黑石斑</a><span>|</span>
                                <a href="#">跳跳鱼</a><span>|</span>

                            </div>
                        </div>
                    </div>
                    <div class="sub-nav-left">
                        <div class="cell-box">
                            <h1>贝类</h1>
                            <div class="a-box">
                                <a href="#">海鲜贝类</a><span>|</span>
                                <a href="#">鲍鱼</a><span>|</span>
                                <a href="#">扇贝</a><span>|</span>
                                <a href="#">河蚌</a><span>|</span>
                                <a href="#" class="orange">珍珠贝</a>

                            </div>
                        </div>
                        <div class="cell-box">
                            <h1>蟹类</h1>
                            <div class="a-box">
                                <a href="#">大闸蟹</a><span>|</span>
                                <a href="#">海蟹</a><span>|</span>
                                <a href="#">鲍鱼 </a><span>|</span>
                                <a href="#">梭子蟹</a><span>|</span>
                                <a href="#" class="orange">青蟹</a>
                                <a href="#">石蟹</a><span>|</span>
                                <a href="#">招潮蟹</a><span>|</span>

                            </div>
                            <div class="cell-box">
                                <h1>水产种苗</h1>
                                <div class="a-box">
                                    <a href="#">鱼苗</a><span>|</span>
                                    <a href="#">虾苗</a><span>|</span>
                                    <a href="#">甲鱼苗</a><span>|</span>
                                    <a href="#">黄鳝苗</a><span>|</span>
                                    <a href="#" class="orange">蟹苗</a>

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
                                <a href="#">柑橘苗</a><span>|</span>
                                <a href="#">桃树苗</a><span>|</span>
                                <a href="#">樱桃苗</a><span>|</span>
                                <a href="#">李子树苗</a><span>|</span>
                                <a href="#" class="orange">苹果树苗</a>
                                <a href="#">梨树苗</a><span>|</span>
                                <a href="#">枣树苗</a><span>|</span>
                                <a href="#">石榴树苗</a><span>|</span>
                                <a href="#">草莓苗</a><span>|</span>
                                <a href="#">杨梅树苗</a><span>|</span>
                                <a href="#">杏树苗</a>
                                <a href="#">金桔苗</a><span>|</span>
                                <a href="#">荔枝苗</a><span>|</span>
                            </div>
                        </div>
                        <div class="cell-box">
                            <h1>蔬菜种子</h1>
                            <div class="a-box">
                                <a href="#">辣椒种子</a><span>|</span>
                                <a href="#">南瓜种子</a><span>|</span>
                                <a href="#">豆角种子</a><span>|</span>
                                <a href="#">黄瓜种子</a><span>|</span>
                                <a href="#" class="orange">西红柿种子</a>
                                <a href="#">白菜种子</a><span>|</span>
                                <a href="#">韭菜种子</a><span>|</span>
                                <a href="#">苦瓜种子</a><span>|</span>
                                <a href="#">冬瓜种子</a><span>|</span>
                                <a href="#">萝卜种子</a><span>|</span>
                                <a href="#">茄子种子</a>
                                <a href="#">毛豆种子</a><span>|</span>

                            </div>
                        </div>
                        <div class="cell-box">
                            <h1>苗床小苗</h1>
                            <div class="a-box">
                                <a href="#">油茶树苗</a><span>|</span>
                                <a href="#">核桃苗</a><span>|</span>
                                <a href="#">板栗树苗</a><span>|</span>
                                <a href="#">茶树苗</a><span>|</span>
                                <a href="#" class="orange">竹苗</a>
                                <a href="#">杨树苗</a><span>|</span>
                                <a href="#">银杏树苗</a><span>|</span>
                                <a href="#">柏树苗</a><span>|</span>
                                <a href="#">枫树苗</a><span>|</span>

                            </div>
                        </div>
                    </div>
                    <div class="sub-nav-left">
                        <div class="cell-box">
                            <h1>粮油类种子</h1>
                            <div class="a-box">
                                <a href="#">玉米种子</a><span>|</span>
                                <a href="#">花生种子</a><span>|</span>
                                <a href="#">水稻种子</a><span>|</span>
                                <a href="#">高粱种子</a><span>|</span>
                                <a href="#" class="orange">黄豆种子</a>
                                <a href="#">芝麻种子</a><span>|</span>
                                <a href="#">大麦种子</a><span>|</span>
                                <a href="#">小米种子</a><span>|</span>
                                <a href="#">绿豆种子</a><span>|</span>
                                <a href="#">小麦种子</a><span>|</span>
                                <a href="#">青豆种子</a>
                                <a href="#">油茶籽种子</a><span>|</span>

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
                                <a href="#">饲料机械</a><span>|</span>
                                <a href="#">农用拖拉机</a><span>|</span>
                                <a href="#">植保机械</a><span>|</span>
                                <a href="#">农机配件</a><span>|</span>
                                <a href="#" class="orange">肥料机械</a>
                                <a href="#">榨油机械</a><span>|</span>
                                <a href="#">水产捕捞机械</a><span>|</span>
                                <a href="#">施肥机械</a><span>|</span>
                                <a href="#">干燥机械</a><span>|</span>
                                <a href="#">林业机械</a><span>|</span>
                                <a href="#">食用菌机械</a>
                                <a href="#">磨粉磨浆机械</a><span>|</span>
                                <a href="#">清洗机械</a><span>|</span>
                                <a href="#">干燥机械</a><span>|</span>

                            </div>
                        </div>
                        <div class="cell-box">
                            <h1>农用物资</h1>
                            <div class="a-box">
                                <a href="#">塑料膜</a><span>|</span>
                                <a href="#">花盆容器</a><span>|</span>
                                <a href="#">碳</a><span>|</span>
                                <a href="#">木材</a><span>|</span>
                                <a href="#" class="orange">剪刀类</a>
                                <a href="#">蜂具</a><span>|</span>
                                <a href="#">板凳</a><span>|</span>
                                <a href="#">石灰</a><span>|</span>
                                <a href="#">电筒</a><span>|</span>
                                <a href="#">锯子</a><span>|</span>
                                <a href="#">镐头类</a>

                            </div>
                        </div>
                        <div class="cell-box">
                            <h1>农药类</h1>
                            <div class="a-box">
                                <a href="#">杀菌类</a><span>|</span>
                                <a href="#">杀虫剂</a><span>|</span>
                                <a href="#">植物生长调节剂</a><span>|</span>
                                <a href="#">除草剂</a><span>|</span>
                                <a href="#" class="orange">灭鼠剂</a>

                            </div>
                        </div>
                    </div>
                    <div class="sub-nav-left">
                        <div class="cell-box">
                            <h1>大棚及温室</h1>
                            <div class="a-box">
                                <a href="#">大棚设备</a><span>|</span>
                                <a href="#">成套大棚</a><span>|</span>
                                <a href="#">控温通风设备</a><span>|</span>

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
                                <a href="#">大米</a><span>|</span>
                                <a href="#">玉米类</a><span>|</span>
                                <a href="#">稻谷</a><span>|</span>
                                <a href="#">小麦</a><span>|</span>
                                <a href="#" class="orange">小米</a>
                                <a href="#">高粱</a><span>|</span>
                                <a href="#">糯米</a><span>|</span>
                                <a href="#">荞麦</a><span>|</span>
                                <a href="#">黑米</a><span>|</span>
                                <a href="#">燕麦</a><span>|</span>
                                <a href="#">大麦</a>
                                <a href="#">青稞</a><span>|</span>
                                <a href="#">旱稻</a><span>|</span>
                                <a href="#">紫米</a><span>|</span>
                                <a href="#">五谷米</a><span>|</span>
                                <a href="#">麋子</a>

                            </div>
                        </div>
                        <div class="cell-box">
                            <h1>油料作物</h1>
                            <div class="a-box">
                                <a href="#">花生</a><span>|</span>
                                <a href="#">菜籽</a><span>|</span>
                                <a href="#">茶籽</a><span>|</span>
                                <a href="#">葵花籽</a><span>|</span>
                                <a href="#" class="orange">芝麻</a>
                                <a href="#">亚麻籽</a><span>|</span>
                                <a href="#">桐梓</a><span>|</span>
                                <a href="#">棉籽</a><span>|</span>
                                <a href="#">紫米</a><span>|</span>
                                <a href="#">胡麻籽</a><span>|</span>
                                <a href="#">红花籽</a>
                                <a href="#">油渣果</a><span>|</span>
                                <a href="#">油棕籽</a><span>|</span>

                            </div>
                        </div>
                        <div class="cell-box">
                            <h1>香辛料</h1>
                            <div class="a-box">
                                <a href="#">干辣椒</a><span>|</span>
                                <a href="#">花椒</a><span>|</span>
                                <a href="#">陈皮</a><span>|</span>
                                <a href="#">胡椒</a><span>|</span>
                                <a href="#" class="orange">桂皮</a>
                                <a href="#">草果</a><span>|</span>
                                <a href="#">茴香</a><span>|</span>
                                <a href="#">孜然</a><span>|</span>
                                <a href="#">花椒粉</a><span>|</span>
                                <a href="#">八角粉</a><span>|</span>
                                <a href="#">桂皮粉</a>
                                <a href="#">洋葱粉</a><span>|</span>

                            </div>
                        </div>
                    </div>
                    <div class="sub-nav-left">
                        <div class="cell-box">
                            <h1>豆类作物</h1>
                            <div class="a-box">
                                <a href="#">大豆</a><span>|</span>
                                <a href="#">红豆</a><span>|</span>
                                <a href="#">黑豆</a><span>|</span>
                                <a href="#">绿豆</a><span>|</span>
                                <a href="#" class="orange">干豌豆</a>
                                <a href="#">花豆</a><span>|</span>
                                <a href="#">蚕豆</a><span>|</span>
                                <a href="#">豇豆</a><span>|</span>

                            </div>
                        </div>
                        <div class="cell-box">
                            <h1>调味品</h1>
                            <div class="a-box">
                                <a href="#">糖</a><span>|</span>
                                <a href="#">调味酱</a><span>|</span>
                                <a href="#">盐</a><span>|</span>
                                <a href="#">火锅料</a><span>|</span>
                                <a href="#" class="orange">汤料</a>
                                <a href="#">醋</a><span>|</span>
                                <a href="#">酱油</a><span>|</span>
                                <a href="#">剁椒</a><span>|</span>
                                <a href="#">泡椒</a><span>|</span>
                                <a href="#">卤料</a><span>|</span>
                                <a href="#">鸡精</a>
                                <a href="#">调味油</a><span>|</span>
                                <a href="#">调味汁</a><span>|</span>

                            </div>
                        </div>
                        <div class="cell-box">
                            <h1>食用油</h1>
                            <div class="a-box">
                                <a href="#">豆油</a><span>|</span>
                                <a href="#">花生油</a><span>|</span>
                                <a href="#">菜籽油</a><span>|</span>
                                <a href="#">芝麻油</a><span>|</span>
                                <a href="#" class="orange">色拉油</a>
                                <a href="#">橄榄油</a><span>|</span>
                                <a href="#">芝麻油</a><span>|</span>

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
                    <li><a href="#"><img src="img/LB1.jpg"></a></li>
                    <li><a href="#"><img src="img/LB2.jpg"></a></li>
                    <li><a href="#"><img src="img/LB3.jpg"></a></li>
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
                    <li style="border-right: none" id="li-5" class="li-nav">公益</li>
                </ul>
                <div id="box-1" style="display: block" class="hiddenBox">

                    <a href="#">开放多样性</a>
                    <a href="#">---------</a>
                    <a href="#">---------</a>
                    <a href="#">---------</a>
                </div>
                <div id="box-2" class="hiddenBox">

                    <a href="#">[重要] 规范</a>
                    <a href="#">[重要] 虚假交易新规&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
                    <a href="#">[重要] 新增认证规则</a>

                </div>
                <div id="box-3" class="hiddenBox">
                    <a href="#">[优化] ---------</a>
                    <a href="#">[热点] ---------</a>
                    <a href="#">[话题] ---------</a>
                    <a href="#">[聚焦] ---------</a>
                </div>
                <div id="box-4" class="hiddenBox">

                    <a href="#">个人重要信息要管牢！</a>
                    <a href="#">---------</a>
                    <a href="#">---------！</a>
                    <a href="#">---------</a>
                </div>
                <div id="box-5" class="hiddenBox">
                    <a href="#">[优化] ---------</a>
                    <a href="#">[热点] ---------</a>
                    <a href="#">[话题] ---------</a>
                    <a href="#">[聚焦] ---------</a>
                </div>
            </div>

            <!--login-->
            <div class="user-info">
                <div class="login">
                    <a class="login-btn" href="login.jsp"><i class="fa fa-user fa-user-loc"></i>登陆</a>&nbsp;&nbsp;&nbsp;
                    <a class="login-btn free" href="register.jsp">免费注册</a>
                </div>
            </div>
            <!--service-->
            <div class="service">
                <h3>在线客服</h3>

                <div class="service-cell">
                    <h5 class="service-i"><img src="img/....png" /></h5>
                    <h6>请期待</h6>
                </div>
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
            <li><a href="#">禽畜</a></li>
            <li><a href="#">水果</a></li>
            <li><a href="#">蔬菜</a></li>
            <li><a href="#">水产</a></li>
            <li><a href="#">种苗</a></li>
            <li><a href="#">农械</a></li>
            <li><a href="#">粮油</a></li>
            <li><a href="#">粮面</a></li>

        </ul>
    </div>
    <div class="sub-nav-cell">
        <h3 class="green-sp">特色采购</h3>
        <ul class="sub-nav-box sp">
            <li><a href="#">金桔树苗</a></li>
            <li><a href="#">美人李子</a></li>
            <li><a href="#">车厘子</a></li>
            <li><a href="#">锦绣黄桃</a></li>
            <li><a href="#">李子苗</a></li>
            <li><a href="#">车厘子</a></li>
            <li><a href="#">锦绣黄桃</a></li>
            <li><a href="#">李子苗</a></li>
        </ul>
    </div>
    <div class="sub-nav-cell">
        <h3 class="red-now">当前热点</h3>
        <ul class="sub-nav-box now">
            <li><a href="#">金桔树苗</a></li>
            <li><a href="#">美人李子</a></li>
            <li><a href="#">车厘子</a></li>
            <li><a href="#">锦绣黄桃</a></li>
            <li><a href="#">李子苗</a></li>
            <li><a href="#">车厘子</a></li>
            <li><a href="#">锦绣黄桃</a></li>
            <li><a href="#">李子苗</a></li>


        </ul>
    </div>
    <div class="sub-nav-cell">
        <h3 class="blue-more">更多农贸</h3>
        <ul class="sub-nav-box more">
            <li><a href="#">烘干机</a></li>
            <li><a href="#">枇杷苗</a></li>
            <li><a href="#">鱼饵</a></li>
            <li><a href="#">甜瓜种子</a></li>
            <li><a href="#">烘干机</a></li>
            <li><a href="#">枇杷苗</a></li>
            <li><a href="#">鱼饵</a></li>

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
                    <h1>${item.x_name}</h1>
                    <span>${item.x_price}</span>
                </div>
                <div class="inner-right">
                    <div style="height: 100px">
                        <img src="${item.x_img_small1}" />
                        <img src="${item.x_img_small2}" />
                    </div>
                    <table class="tab-inner">
                        <tr><td><a href="#">${item.title1}</a></td>
                            <td><a href="#">${item.title2}</a></td>
                        </tr>
                        <tr><td><a href="#">${item.title3}</a></td>
                            <td><a href="#">${item.title4}</a></td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
        </c:forEach>
<%--        <div class="product-box">--%>
<%--            <div class="inner-info">--%>
<%--                <div>--%>
<%--                    <span class="line-f40">|</span>--%>
<%--                    <span class="text-title">樱桃</span>--%>
<%--                    <span class="share-weitao">--%>
<%--            <span class="line-f40">+</span>--%>
<%--            <a href="#">添加到购物车</a>--%>
<%--          </span>--%>
<%--                </div>--%>
<%--                <div class="inner-left">--%>
<%--                    <img src="img/樱桃.jpg" />--%>
<%--                    <h1><a href="#">乌克樱桃</a></h1>--%>
<%--                    <span>10元/斤(200斤起售)</span>--%>
<%--                </div>--%>
<%--                <div class="inner-right">--%>
<%--                    <div style="height: 100px">--%>
<%--                        <img src="img/樱桃1.jpg" />--%>
<%--                        <img src="img/樱桃2.jpg" />--%>
<%--                    </div>--%>
<%--                    <table class="tab-inner">--%>
<%--                        <tr><td><a href="#">大连樱:135/斤</a></td>--%>
<%--                            <td><a href="#">冠县樱:20/斤</a></td>--%>
<%--                        </tr>--%>
<%--                        <tr><td><a href="#">小樱桃:10/斤</a></td>--%>
<%--                            <td><a href="#">攀枝花:199/件</a></td>--%>
<%--                        </tr>--%>
<%--                    </table>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--        <div class="product-box">--%>
<%--            <div class="inner-info">--%>
<%--                <div>--%>
<%--                    <span class="line-f40">|</span>--%>
<%--                    <span class="text-title">大枣</span>--%>
<%--                    <span class="share-weitao">--%>
<%--            <span class="line-f40">+</span>--%>
<%--            <a href="#">添加到购物车</a>--%>
<%--          </span>--%>
<%--                </div>--%>
<%--                <div class="inner-left">--%>
<%--                    <img src="img/枣.jpg" />--%>
<%--                    <h1><a href="#">大青枣</a></h1>--%>
<%--                    <span>5元/斤(200斤起售)</span>--%>
<%--                </div>--%>
<%--                <div class="inner-right">--%>
<%--                    <div style="height: 100px">--%>
<%--                        <img src="img/枣1.jpg" />--%>
<%--                        <img src="img/枣2.jpg" />--%>
<%--                    </div>--%>
<%--                    <table class="tab-inner">--%>
<%--                        <tr><td><a href="#">东枣:2/斤</a></td>--%>
<%--                            <td><a href="#">大青枣:3/斤</a></td>--%>
<%--                        </tr>--%>
<%--                        <tr><td><a href="#">枣片:10/袋</a></td>--%>
<%--                            <td><a href="#">新疆肉枣:15/斤</a></td>--%>
<%--                        </tr>--%>
<%--                    </table>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--        <div class="product-box">--%>
<%--            <div class="inner-info">--%>
<%--                <div>--%>
<%--                    <span class="line-f40">|</span>--%>
<%--                    <span class="text-title">肉虾</span>--%>
<%--                    <span class="share-weitao">--%>
<%--            <span class="line-f40">+</span>--%>
<%--            <a href="#">添加到购物车</a>--%>
<%--          </span>--%>
<%--                </div>--%>
<%--                <div class="inner-left">--%>
<%--                    <img src="img/虾.jpg" />--%>
<%--                    <h1><a href="#">龙虾</a></h1>--%>
<%--                    <span>20元/斤(100斤起售)</span>--%>
<%--                </div>--%>
<%--                <div class="inner-right">--%>
<%--                    <div style="height: 100px">--%>
<%--                        <img src="img/虾1.jpg" />--%>
<%--                        <img src="img/虾2.jpg" />--%>
<%--                    </div>--%>
<%--                    <table class="tab-inner">--%>
<%--                        <tr><td><a href="#">活龙虾:15/斤</a></td>--%>
<%--                            <td><a href="#">红虾:19/斤</a></td>--%>
<%--                        </tr>--%>
<%--                        <tr><td><a href="#">冻虾:14/斤</a></td>--%>
<%--                            <td><a href="#">皮皮虾:10/斤</a></td>--%>
<%--                        </tr>--%>
<%--                    </table>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--        <div class="product-box">--%>
<%--            <div class="inner-info">--%>
<%--                <div>--%>
<%--                    <span class="line-f40">|</span>--%>
<%--                    <span class="text-title">淡水鱼</span>--%>
<%--                    <span class="share-weitao">--%>
<%--            <span class="line-f40">+</span>--%>
<%--            <a href="#">添加到购物车</a>--%>
<%--          </span>--%>
<%--                </div>--%>
<%--                <div class="inner-left">--%>
<%--                    <img src="img/鱼.jpg" />--%>
<%--                    <h1><a href="#">青鱼</a></h1>--%>
<%--                    <span>5元/斤(100斤起售)</span>--%>
<%--                </div>--%>
<%--                <div class="inner-right">--%>
<%--                    <div style="height: 100px">--%>
<%--                        <img src="img/鱼1.jpg" />--%>
<%--                        <img src="img/鱼2.jpg" />--%>
<%--                    </div>--%>
<%--                    <table class="tab-inner">--%>
<%--                        <tr><td><a href="#">草鱼:4/斤</a></td>--%>
<%--                            <td><a href="#">花鲢鱼:8/斤</a></td>--%>
<%--                        </tr>--%>
<%--                        <tr><td><a href="#">鱼苗:0.5/个</a></td>--%>
<%--                            <td><a href="#">鲫鱼:10/斤</a></td>--%>
<%--                        </tr>--%>
<%--                    </table>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--        <div class="product-box">--%>
<%--            <div class="inner-info">--%>
<%--                <div>--%>
<%--                    <span class="line-f40">|</span>--%>
<%--                    <span class="text-title">作物肥料</span>--%>
<%--                    <span class="share-weitao">--%>
<%--            <span class="line-f40">+</span>--%>
<%--            <a href="#">添加到购物车</a>--%>
<%--          </span>--%>
<%--                </div>--%>
<%--                <div class="inner-left">--%>
<%--                    <img src="img/肥料.jpg" />--%>
<%--                    <h1><a href="#">肥料</a></h1>--%>
<%--                    <span>30元/袋(10吨起售)</span>--%>
<%--                </div>--%>
<%--                <div class="inner-right">--%>
<%--                    <div style="height: 100px">--%>
<%--                        <img src="img/肥料1.jpg" />--%>
<%--                        <img src="img/肥料2.jpg" />--%>
<%--                    </div>--%>
<%--                    <table class="tab-inner">--%>
<%--                        <tr><td><a href="#">河北料:2400/吨</a></td>--%>
<%--                            <td><a href="#">多肽料:1500/吨</a></td>--%>
<%--                        </tr>--%>
<%--                        <tr><td><a href="#">发酵料:200/吨</a></td>--%>
<%--                            <td><a href="#">黄腐料:130/袋</a></td>--%>
<%--                        </tr>--%>
<%--                    </table>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--        <div class="product-box">--%>
<%--            <div class="inner-info">--%>
<%--                <div>--%>
<%--                    <span class="line-f40">|</span>--%>
<%--                    <span class="text-title">农贸机器</span>--%>
<%--                    <span class="share-weitao">--%>
<%--            <span class="line-f40">+</span>--%>
<%--            <a href="#">添加到购物车</a>--%>
<%--          </span>--%>
<%--                </div>--%>
<%--                <div class="inner-left">--%>
<%--                    <img src="img/机器.jpg" />--%>
<%--                    <h1><a href="#">施肥机</a></h1>--%>
<%--                    <span>300元/台(100件起售)</span>--%>
<%--                </div>--%>
<%--                <div class="inner-right">--%>
<%--                    <div style="height: 100px">--%>
<%--                        <img src="img/机器1.jpg" />--%>
<%--                        <img src="img/机器2.jpg" />--%>
<%--                    </div>--%>
<%--                    <table class="tab-inner">--%>
<%--                        <tr><td><a href="#">果树机:100/件</a></td>--%>
<%--                            <td><a href="#">鱼塘机:270/件</a></td>--%>
<%--                        </tr>--%>
<%--                        <tr><td><a href="#">功能机:1300/件</a></td>--%>
<%--                            <td><a href="#">电动机:200/个</a></td>--%>
<%--                        </tr>--%>
<%--                    </table>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>

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
          <span class="orange">[精彩专题]&nbsp;<a href="#">
薄荷种子有哪些常见品种？育苗方法有哪些？</a></span><br>
                    <span class="orange">[精彩专题]&nbsp;<a href="#">
火龙果苗什么品种最好？育苗方法有哪些？</a></span><br>
                    <span class="orange">[精彩专题]&nbsp;<a href="#">
芒果苗什么品种好？育苗方法有哪些？！</a></span>

                </p>
                <!--just-look-->
                <div class="just-look">
                    <a href="#"><img src="img/0001.png"><h6>水果</h6></a>
                    <a href="#"><img src="img/0002.png"><h6>蔬菜</h6></a>
                    <a href="#"><img src="img/0003.png"><h6>肉食</h6></a>
                </div>

                <!--just-text-->
                <ul class="jst-text">
                    <li><em class="orange">1</em><a href="">猪肉较春节前涨7.6%，当前猪肉价格行情如何？ </a><span></span></li>
                    <li><em class="orange">2</em><a href="">
                        全国菜价涨7.2%是怎么回事？是否会持续上涨？ </a><span></span></li>
                    <li><em class="orange">3</em><a href="">现在猪肉价格多少钱一斤？2020年2月25日猪肉... </a><span></span></li>
                    <li><em>4</em><a href="">现在市场牛肉多少钱一斤？2020最新牛肉价格走... </a><span></span></li>

                    <li><em class="orange">5</em><a href="">猪肉较春节前涨7.6%，当前猪肉价格行情如何？ </a><span></span></li>
                    <li><em class="orange">6</em><a href="">
                        全国菜价涨7.2%是怎么回事？是否会持续上涨？ </a><span></span></li>
                    <li><em class="orange">7</em><a href="">现在猪肉价格多少钱一斤？2020年2月25日猪肉... </a><span></span></li>
                    <li><em>8</em><a href="">现在市场牛肉多少钱一斤？2020最新牛肉价格走... </a><span></span></li>

                    <li><em class="orange">9</em><a href="">猪肉较春节前涨7.6%，当前猪肉价格行情如何？ </a><span></span></li>
                    <li><em class="orange">10</em><a href="">
                        全国菜价涨7.2%是怎么回事？是否会持续上涨？ </a><span></span></li>
                    <li><em class="orange">11</em><a href="">现在猪肉价格多少钱一斤？2020年2月25日猪肉... </a><span></span></li>
                    <li><em>12</em><a href="">现在市场牛肉多少钱一斤？2020最新牛肉价格走... </a><span></span></li>
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