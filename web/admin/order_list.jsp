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
});

</script>


</head>

<body>
	<div id="contentWrap">
		<div class="pageTitle"></div>

		<div class="pageColumn">
			<form action="${ctx }/order/list" method="post">
<%--				<input type="text" class="border" name="state" value="${order.state }" hidden="">--%>
				订单号：<input type="text" class="border" name="ordernumber" value="${order.ordernumber }">
				用户名：<input type="text" class="border" name="username" value="${order.username }">
				商品名：<input type="text" class="border" name="x_name" value="${order.x_name }">
				状态：   <select class="border" name="state">
							<option value="">---</option>
							<option value="0" <c:if test="${order.state eq 0 }">selected=""</c:if>>待付款</option>
							<option value="1" <c:if test="${order.state eq 1 }">selected=""</c:if>>待发货</option>
							<option value="2"<c:if test="${order.state eq 2 }">selected=""</c:if>>待收货</option>
							<option value="3"<c:if test="${order.state eq 3 }">selected=""</c:if>>已完成</option>
							<option value="5"<c:if test="${order.state eq 5 }">selected=""</c:if>>退款中</option>
							<option value="6"<c:if test="${order.state eq 6 }">selected=""</c:if>>退货退款中</option>
						</select>
				<button class="combtn" type="submit">搜索</button>
				<button class="canclebtn" type="cancel">清空</button>
			</form>
		</div>
		
		<c:if test="${order.state eq 1 }">
			<div class="pageTitle">
				<form action="" method="post">
					<input type="hidden" name="state" value="${order.state }">
					<input type="hidden" name="pageNo" value="${order.pageNo }">
					<input type="hidden" name="ids">
					<!--<button class="icons-btn piliang" data-action="${ctx }/order/plfahuo" type="submit"><span class="icons icons-use"></span>批量发货</button> -->
				</form>
			</div>
		</c:if>
		<c:if test="${order.state eq 5 }">
			<div class="pageTitle">
				<form action="" method="post">
					<input type="hidden" name="state" value="${order.state }">
					<input type="hidden" name="pageNo" value="${order.pageNo }">
					<input type="hidden" name="ids">
					<button class="icons-btn piliang" data-action="${ctx }/order/pltuikuan" type="submit"><span class="icons icons-use"></span>批量退款</button> 
				</form>
			</div>
		</c:if>
		<c:if test="${order.state eq 6 }">
			<div class="pageTitle">
				<form action="" method="post">
					<input type="hidden" name="state" value="${order.state }">
					<input type="hidden" name="pageNo" value="${order.pageNo }">
					<input type="hidden" name="ids">
					<!--<button class="icons-btn piliang" data-action="${ctx }/order/pltuikuan" type="submit"><span class="icons icons-use"></span>批量退货退款</button> -->
				</form>
			</div>
		</c:if>
		

		<div class="pageColumn">
			<table>
				<thead>
					<th width="25"><input name="" type="checkbox" value=""
						id="checkalls"/></th>
					<th width="15%">订单号</th>
					<th width="5%">用户名</th>
					<th width="10%">商品种类</th>
					<th width="15%">商品名称</th>
					<th width="5%">商品数量</th>
					<th width="5%">合计</th>
					<th width="15%">创建时间</th>
					<th width="5%">状态</th>
					<c:if test="${order.state eq 1 }">
						<th width="5%">提醒次数</th>
					</c:if>
					<th width="10%">备注</th>
					<th width="">操作</th>
				</thead>
				<tbody>
					<c:choose>
						<c:when test="${order.state eq 1 }">
							<c:forEach items="${order_list }" var="item">
								<tr>
									<td class="checkBox"><input name="" type="checkbox" value="${item.oid }" class="checkitem" /></td>
									<td>${item.ordernumber }</td>
									<td>${item.username }</td>
									<td>${item.kname }</td>
									<td>${item.x_name }</td>
									<td>${item.number }</td>
									<td>${item.paynumber }</td>
									<td>${item.createtime }</td>
									<td>
										<c:if test="${item.state eq 0}">待付款</c:if>
										<c:if test="${item.state eq 1}">待发货</c:if>
										<c:if test="${item.state eq 2}">待收货</c:if>
										<c:if test="${item.state eq 3}">已完成</c:if>
										<c:if test="${item.state eq 5}">退款中</c:if>
										<c:if test="${item.state eq 6}">已退信息</c:if>
									</td>
									<td><textarea class="border" readonly="readonly">${item.beizhu }</textarea></td>
									<td>
									<a class="icons-btn" href="${ctx }/order/showmore?oid=${item.ordernumber}" >查看详情</a>&nbsp;&nbsp;
									<a class="icons-btn fahuo" href="${ctx }/order/fahuo?ordernumber=${item.ordernumber}" >发货</a>
									</td>
								</tr>
							</c:forEach>
						</c:when>
							
						<c:when test="${order.state eq 5 }">
							<c:forEach items="${order_list }" var="item">
								<tr>
									<td class="checkBox"><input name="" type="checkbox" value="${item.oid }" class="checkitem" /></td>
									<td>${item.ordernumber }</td>
									<td>${item.username }</td>
									<td>${item.kname }</td>
									<td>${item.x_name }</td>
									<td>${item.number }</td>
									<td>${item.paynumber }</td>
									<td>${item.createtime }</td>
									<td>
										<c:if test="${item.state eq 0}">待付款</c:if>
										<c:if test="${item.state eq 1}">待发货</c:if>
										<c:if test="${item.state eq 2}">待收货</c:if>
										<c:if test="${item.state eq 3}">已完成</c:if>
										<c:if test="${item.state eq 5}">退款中</c:if>
										<c:if test="${item.state eq 6}">已退信息</c:if>
									</td>
									<td><textarea class="border" readonly="readonly">${item.beizhu }</textarea></td>
									<td>
									<a class="icons-btn" href="${ctx }/order/showmore?oid=${item.ordernumber}" >查看详情</a>&nbsp;&nbsp;
									<a class="icons-btn" href="${ctx }/order/tuikuan?ordernumber=${item.ordernumber}" >退款</a>
									</td>
								</tr>
							</c:forEach>
						</c:when>
						
						<c:when test="${order.state eq 6 }">
							<c:forEach items="${order_list }" var="item">
								<tr>
									<td class="checkBox"><input name="" type="checkbox" value="${item.oid }" class="checkitem" /></td>
									<td>${item.ordernumber }</td>
									<td>${item.username }</td>
									<td>${item.kname }</td>
									<td>${item.x_name }</td>
									<td>${item.number }</td>
									<td>${item.paynumber }</td>
									<td>${item.createtime }</td>
									<td>
										<c:if test="${item.state eq 0}">待付款</c:if>
										<c:if test="${item.state eq 1}">待发货</c:if>
										<c:if test="${item.state eq 2}">待收货</c:if>
										<c:if test="${item.state eq 3}">已完成</c:if>
										<c:if test="${item.state eq 5}">退款中</c:if>
										<c:if test="${item.state eq 6}">已退信息</c:if>
									</td>
									<td><textarea class="border" readonly="readonly">${item.beizhu }</textarea></td>
									<td>
									<a class="icons-btn" href="${ctx }/order/showmore?oid=${item.ordernumber}" >查看详情</a>&nbsp;&nbsp;
<%--									<a class="icons-btn" href="${ctx }/order/tuikuan?oid=${item.oid}" >退款</a>--%>
									</td>
								</tr>
							</c:forEach>
						</c:when>	
						
						<c:otherwise>
							<c:forEach items="${order_list }" var="item">
								<tr>
									<td class="checkBox"><input name="" type="checkbox" value="${item.oid }" class="checkitem" /></td>
									<td>${item.ordernumber }</td>
									<td>${item.username }</td>
									<td>${item.kname }</td>
									<td>${item.x_name }</td>
									<td>${item.number }</td>
									<td>${item.paynumber }</td>
									<td>${item.createtime }</td>
									<td>
										<c:if test="${item.state eq 0}">待付款</c:if>
										<c:if test="${item.state eq 1}">待发货</c:if>
										<c:if test="${item.state eq 2}">待收货</c:if>
										<c:if test="${item.state eq 3}">已完成</c:if>
										<c:if test="${item.state eq 5}">退款中</c:if>
										<c:if test="${item.state eq 6}">已退信息</c:if>
									</td>
									<td><textarea class="border" readonly="readonly">${item.beizhu }</textarea></td>
									<td><a class="icons-btn" href="${ctx }/order/showmore?oid=${item.ordernumber}" >查看详情</a></td>
								</tr>
							</c:forEach>
						</c:otherwise>
					</c:choose>
					
				</tbody>
			</table>
		</div>

		<div class="pageTitle footer_fiexed">
			<form action="${ctx }/order/list" method="post">
				<input type="hidden" name="state" value="${order.state }">
				<%@ include file="page.jsp"%>
			</form>
		</div>
		
		<form action="" method="post" id="subform">
			<input type="hidden" name="oid" value="" id="subformId">
			<input type="hidden" name="pageNo" value="${order.pageNo }">
		</form>
	</div>
</body>

 
</html>
