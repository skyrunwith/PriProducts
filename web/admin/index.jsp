<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>潇农网后台</title>
	<%@ include file="common.jsp"%>
	<style type="text/css">
		/*点击颜色*/
		#menu li.sely {
			background: #39BF3E;
		}
		/*图片大小*/
		.btn{
			width: 1347px!important;
			height: 635px!important;
		}
		/*首页下面大小*/
		.caption{
			background-color: #F8F8F8;
			height: 158px;
			font-family: 微软雅黑;
		}
		/*按钮大小*/
		.bu{
			height: 50px;
			width: 100px;
			font-size: unset
		}
		[name="li"]{
			font-size: large!important;
		}
		#houtai{
			width: 362px;
			height: 51px;
			font-size: xx-large;

			color: #F8F8F8;
		}
	</style>
	<script type="text/javascript">
		$(function(){
			//设置Menu高度
			$('.menu').height($(window).height()-51-27-26);
			$('.sidebar').height($(window).height()-51-27-26);
			$('.page').height($(window).height()-51-27-26);
			$('.page iframe').width($(window).width()-15-168);

			//menu显示和隐藏
			$('.btn').click(function(){
				$('.menu').toggle();
				if($(".menu").is(":hidden")){
					$('.page iframe').width($(window).width()-15+5);
				}else{
					$('.page iframe').width($(window).width()-15-168);
				}
			});

			$('.subMenu a[href="#"]').click(function(){
				window.location.href="index.jsp";
				$(this).next('ul').toggle();
				return false;
			});
		})
	</script>

</head>

<body>
<div id="wrap">
	<!--头部 -->
	<div id="header">
		<div id="houtai" class="logo fleft" ><b>潇农网后台</b></div>
		<div class="logout fright">
		</div>

		<div class="clear"></div>
		<div class="subnav">
			<div class="fright">
					<a href="/admin/index.jsp" style="font-size: large">首页</a>
					<a href="/admin/login.jsp" style="font-size: large">退出系统</a>
			</div>

		</div>
	</div>

	<!--列表栏 -->
	<div id="content">
		<div class="space"></div>
		<div class="menu fleft">
			<ul id="menu">
				<li class="subMenuTitle"><b>后台管理</b></li>
				<li class="subMenu"><a href="#"><b>用户管理</b></a>
					<ul>
						<li><a href="${ctx }/user/user_list">&nbsp;用户列表</a></li>
					</ul>
				</li>


				<li class="subMenu"><a href="#"><b>商品管理</b></a>
					<ul>
						<li><a href="${ctx }/kind/list">种类信息</a></li>
						<li><a href="${ctx}/xiangqing/list">商品信息</a></li>
                        <li><a href="${ctx}/dianpu/list">店铺信息</a></li>
					</ul>
				</li>

				<li class="subMenu"><a href="#"><b>订单管理</b></a>
					<ul>
						<li><a href="/admin/order/list">所有订单</a></li>
						<li><a href="/admin/order/list?state=0">&nbsp;待付款</a></li>
						<li><a href="/admin/order/list?state=1">&nbsp;待发货</a></li>
						<li><a href="/admin/order/list?state=2">&nbsp;待收货</a></li>
						<li><a href="/admin/order/list?state=4">&nbsp;已完成</a></li>
						<li><a href="/admin/order/list?state=5">申请信息</a></li>
						<li><a href="/admin/order/list?state=6">已退信息</a></li>

					</ul>
				</li>
			</ul>
		</div>

		<!--显示内容-->
		<div class="page">
			<!--标记一个内联框架-->
			<iframe width="100%" scrolling="auto" height="100%"
					frameborder="false" allowtransparency="true"
					style="border: medium none;" src="./mypa.jsp" id="rightMain"
					name="right"></iframe>
		</div>
	</div>
	<!--#content -->
	<div class="clear"></div>
	<div id="footer"></div>
	<!--#footer -->
</div>
</body>
<script type="text/javascript">
	$('#menu li a').click(function(){
		$('#menu li').removeClass('sely');
		$(this).parent().addClass('sely');
		var href=$(this).attr('href');
		$('iframe').attr('src',href);
		return false;
	});
	$('#topitem li').click(function(){
		var href=$(this).attr('href');
		$('iframe').attr('src',href);
	});
</script>
</html>
