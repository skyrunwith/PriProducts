<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="common.jsp"%>
<style type="text/css">
body {
	background: #FFF
}
</style>

<script type="text/javascript">

$(document).ready(function(){
	$(".tips").click(function(){
		var tips = $(".border").val();
		if(tips == null || tips == ''){
			alert("请先填写备注");
		}else{
			$.post("${ctx}/order/tips",{beizhu:tips,oid:'${order.oid}'});
			alert("添加成功");
		}
	});
	
	$(".canclebtn").click(function(){
		var href = $(this).attr('data-href');
		window.location.href=href;
	});
	
});

</script>
</head>

<body>
	<div id="contentWrap">
		<div class="pageTitle"></div>
		<div style="border: 1px solid #bfd9e1; padding: 20px 20px;">
			<h3>------订单详情------</h3>
				<table style="width: 600px;">
					<tr>
						<td colspan="2"><h4>订单信息</h4></td>
					</tr>
					<tr style="line-height: 30px;">
						<td style="width: 70px;">订单号:</td>
						<td><span>${order.ordernumber }</span></td>
					</tr>
					<c:if test="${order.state eq 0 }">
						<tr style="line-height: 30px;">
							<td style="width: 70px;">订单状态:</td>
							<td><span>待付款</span></td>
						</tr>
						<tr style="line-height: 30px;">
							<td style="width: 70px;">创建时间:</td>
							<td><span>${order.createtime }</span></td>
						</tr>
					</c:if>
					<c:if test="${order.state eq 1 }">
						<tr style="line-height: 30px;">
							<td style="width: 70px;">订单状态:</td>
							<td><span>待发货</span></td>
						</tr>
						<tr style="line-height: 30px;">
							<td style="width: 70px;">创建时间:</td>
							<td><span>${order.createtime }</span></td>
						</tr>
						<tr style="line-height: 30px;">
							<td style="width: 70px;">付款时间:</td>
							<td><span>${order.zts }</span></td>
						</tr>
					</c:if>
					<c:if test="${order.state eq 2 }">
						<tr style="line-height: 30px;">
							<td style="width: 70px;">订单状态:</td>
							<td><span>待收货</span></td>
						</tr>
						<tr style="line-height: 30px;">
							<td style="width: 70px;">创建时间:</td>
							<td><span>${order.createtime }</span></td>
						</tr>
						<tr style="line-height: 30px;">
							<td style="width: 70px;">付款时间:</td>
							<td><span>${order.zts }</span></td>
						</tr>
						<tr style="line-height: 30px;">
							<td style="width: 70px;">发货时间:</td>
							<td><span>${order.fts }</span></td>
						</tr>
					</c:if>
					<c:if test="${order.state eq 3 }">
						<tr style="line-height: 30px;">
							<td style="width: 70px;">订单状态:</td>
							<td><span>待评价</span></td>
						</tr>
						<tr style="line-height: 30px;">
							<td style="width: 70px;">创建时间:</td>
							<td><span>${order.createtime }</span></td>
						</tr>
						<tr style="line-height: 30px;">
							<td style="width: 70px;">付款时间:</td>
							<td><span>${order.zts }</span></td>
						</tr>
						<tr style="line-height: 30px;">
							<td style="width: 70px;">发货时间:</td>
							<td><span>${order.fts }</span></td>
						</tr>
						<tr style="line-height: 30px;">
							<td style="width: 70px;">收货时间:</td>
							<td><span>${order.cjts }</span></td>
						</tr>
					</c:if>
					<c:if test="${order.state eq 4 }">
						<tr style="line-height: 30px;">
							<td style="width: 70px;">订单状态:</td>
							<td><span>已完成</span></td>
						</tr>
						<tr style="line-height: 30px;">
							<td style="width: 70px;">创建时间:</td>
							<td><span>${order.createtime }</span></td>
						</tr>
						<tr style="line-height: 30px;">
							<td style="width: 70px;">付款时间:</td>
							<td><span>${order.zts }</span></td>
						</tr>
						<tr style="line-height: 30px;">
							<td style="width: 70px;">发货时间:</td>
							<td><span>${order.fts }</span></td>
						</tr>
						<tr style="line-height: 30px;">
							<td style="width: 70px;">收货时间:</td>
							<td><span>${order.cjts }</span></td>
						</tr>
					</c:if>
					<c:if test="${order.state eq 5 }">
						<tr style="line-height: 30px;">
							<td style="width: 70px;">订单状态:</td>
							<td><span>退款中</span></td>
						</tr>
						<tr style="line-height: 30px;">
							<td style="width: 70px;">创建时间:</td>
							<td><span>${order.createtime }</span></td>
						</tr>
						<tr style="line-height: 30px;">
							<td style="width: 70px;">付款时间:</td>
							<td><span>${order.zts }</span></td>
						</tr>
						<tr style="line-height: 30px;">
							<td style="width: 70px;">申请退款时间:</td>
							<td><span>${order.tts }</span></td>
						</tr>
					</c:if>
					<c:if test="${order.state eq 6 }">
						<tr style="line-height: 30px;">
							<td style="width: 70px;">订单状态:</td>
							<td><span>退货退款中</span></td>
						</tr>
						<tr style="line-height: 30px;">
							<td style="width: 70px;">创建时间:</td>
							<td><span>${order.createtime }</span></td>
						</tr>
						<tr style="line-height: 30px;">
							<td style="width: 70px;">付款时间:</td>
							<td><span>${order.zts }</span></td>
						</tr>
						<tr style="line-height: 30px;">
							<td style="width: 70px;">发货时间:</td>
							<td><span>${order.fts }</span></td>
						</tr>
						<tr style="line-height: 30px;">
							<td style="width: 70px;">收货时间:</td>
							<td><span>${order.cjts }</span></td>
						</tr>
						<tr style="line-height: 30px;">
							<td style="width: 70px;">申请退款时间:</td>
							<td><span>${order.tts }</span></td>
						</tr>
					</c:if>
					<c:if test="${order.state eq 7 }">
						<tr style="line-height: 30px;">
							<td style="width: 70px;">订单状态:</td>
							<td><span>已完成退货退款</span></td>
						</tr>
						<tr style="line-height: 30px;">
							<td style="width: 70px;">创建时间:</td>
							<td><span>${order.createtime }</span></td>
						</tr>
						<tr style="line-height: 30px;">
							<td style="width: 70px;">付款时间:</td>
							<td><span>${order.zts }</span></td>
						</tr>
						<tr style="line-height: 30px;">
							<td style="width: 70px;">发货时间:</td>
							<td><span>${order.fts }</span></td>
						</tr>
						<tr style="line-height: 30px;">
							<td style="width: 70px;">收货时间:</td>
							<td><span>${order.cjts }</span></td>
						</tr>
						<tr style="line-height: 30px;">
							<td style="width: 70px;">申请退款时间:</td>
							<td><span>${order.tts }</span></td>
						</tr>
					</c:if>
					<tr style="line-height: 30px;">
						<td style="width: 70px;">备注:</td>
						<td><textarea name="beizhu" class="border">${order.beizhu }</textarea>&nbsp;&nbsp;<a href="#" class="tips">添加备注</a></td>
					</tr>
					<tr>
						<td colspan="2"><h4>用户信息</h4></td>
					</tr>
					<tr style="line-height: 30px;">
						<td style="width: 70px;">用户名:</td>
						<td><span>${order.username }</span></td>
					</tr>
					<tr style="line-height: 30px;">
						<td style="width: 70px;">邮箱:</td>
						<td><span>${order.useremail }</span></td>
					</tr>
					<tr>
						<td colspan="2"><h4>收货人信息</h4></td>
					</tr>
					<tr style="line-height: 30px;">
						<td style="width: 70px;">收货人:</td>
						<td><span>${order.username }</span></td>
					</tr>
					<tr style="line-height: 30px;">
						<td style="width: 70px;">电话:</td>
						<td><span>${order.usetel }</span></td>
					</tr>
					<tr style="line-height: 30px;">
						<td style="width: 70px;">地址:</td>
						<td><span>${order.address }</span></td>
					</tr>
					<tr>
						<td colspan="2"><h4>商品信息</h4></td>
					</tr>
					<tr style="line-height: 30px;">
						<td style="width: 70px;">商品名:</td>
						<td><span>${order.x_name }</span></td>
					</tr>
					<tr style="line-height: 30px;">
						<td style="width: 70px;">图片:</td>
					</tr>
					<tr>
						<td colspan="2"><img src="${imgctx }${order.img}" width="100%"></td>
					</tr>
					<tr style="line-height: 30px;">
						<td style="width: 70px;">分类:</td>
						<td><span>${order.kname }</span></td>
					</tr>
					<tr style="line-height: 30px;">
						<td style="width: 70px;">单价:</td>
						<td><span>${order.price }</span></td>
					</tr>
					<tr style="line-height: 30px;">
						<td style="width: 70px;">数量:</td>
						<td><span>${order.number }</span></td>
					</tr>
					<tr style="line-height: 30px;">
						<td style="width: 70px;">合计:</td>
						<td><span>${order.tprice }</span></td>
					</tr>
					<tr style="line-height: 50px;">
						<td style="width: 70px;"></td>
						<td>
							<button class="canclebtn" type="button" data-href="${ctx }/order/list?state=${order.state}">返回</button>
						</td>
					</tr>
				</table>
		</div>
	</div>
</body>

 
</html>
