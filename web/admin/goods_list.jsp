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

</head>

<body>
	<div id="contentWrap">
		<div class="pageTitle"></div>

		<div class="pageColumn">
			<form action="${ctx }/goods/list" method="post">
				商品名称:<input type="text" class="border" name="gname" value="${goods.goodsname }">

				状态：<select class="border" name="status">
					<option value="">---</option>
					<option value="1" <c:if test="${goods.status eq 1 }">selected="selected"</c:if>  >上架</option>
					<option value="0" <c:if test="${goods.status eq 0 }">selected="selected"</c:if> >下架</option>
				</select>

				<button class="combtn" type="submit">搜索</button>
				<button class="canclebtn" type="cancel">清空</button>
			</form>
		</div>

		<div class="pageTitle">
			<form action="" method="post">
				<input type="hidden" name="gname" value="${goods.goodsname }">
				<input type="hidden" name="pageNo" value="${goods.pageNo }">
				<input type="hidden" name="ids">
				<a class="icons-btn" href="${ctx }/goods/add"><span class="icons icons-add"></span>添加</a> 
				<button class="icons-btn pilianga" data-action="${ctx }/goods/pluse" type="submit"><span class="icons icons-use"></span>批量上架</button>
				<button class="icons-btn piliang" data-action="${ctx }/goods/plnouse" type="submit"><span class="icons icons-no-use"></span>批量下架</button>
				<button class="icons-btn piliangd" data-action="${ctx }/goods/pldel" type="submit"><span class="icons icons-del"></span>删除</button>
			</form>
		</div>

		<div class="pageColumn">
			<table>
				<thead>
					<th width="25"><input name="" type="checkbox" value=""
						id="checkalls"/></th>
					<th width="5%">编号</th>
					<th width="10%">商品名称</th>
					<th width="5%">现价</th>
					<th width="5%">库存</th>
					<th width="5%">状态</th>
					<th width="15%">上架时间</th>
					<th width="15%">创建时间</th>
					<th width="">操作</th>
				</thead>
				<tbody>
					<c:forEach items="${goods_list }" var="item">
						<tr style="background: ${item.status eq 0?'#ffd8d8':'' }">
							<td class="checkBox"><input name="" type="checkbox" data-ostatus="${item.cstatus }" value="${item.gid }" data-status="${item.status }"
							data-words="含有未被下架的商品，不能批量删除!" data-wordsa="含有二级分类被禁用的商品，不能批量上架!"
								class="checkitem" /></td>
							<td>${item.gid }</td>
							<td>${item.goodsname }</td>
							<td>${item.goodsprice }</td>
							<td>${item.goodsnumber }</td>
							<td>${item.status eq 1?'上架':'下架' }</td>
							<td>${item.createtime }</td>
							<td>${item.time }</td>

							<td><a class="icons-btn showimg" href="" data-img="${imgctx }${item.img}"><span 
									class="icons icons-showimg"></span>查看详情</a> 
								<c:if test="${item.status eq 0 }">
									<a class="icons-btn a1" href="${ctx }/goods/update" data-ostatus="${item.cstatus }" data-id="${item.gid}"
									data-words="对不起，该商品分类已经禁用，不能修改！"
									><span 
											class="icons icons-edit"></span>修改</a> 
									<a class="icons-btn a1" href="${ctx }/goods/isuse" data-ostatus="${item.cstatus }" data-id="${item.gid}"
									data-words="对不起，该商品分类已经禁用，不能上架！"
									><span
										class="icons icons-use"></span>上架</a>
									<a class="icons-btn subform" href="${ctx }/goods/del" data-id="${item.gid}"><span
										class="icons icons-del"></span>删除</a>
								</c:if> 
								<c:if test="${item.status eq 1 }">
									<a class="icons-btn subform" href="${ctx }/goods/isuse"  data-id="${item.gid}"><span
										class="icons icons-no-use"></span>下架</a>
								</c:if> 
								</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>

		<div class="pageTitle footer_fiexed">
			<form action="${ctx }/goods/list" method="post">
				<input type="hidden" name="gname" value="${goods.goodsname }">
				<%@ include file="page.jsp"%>
			</form>
		</div>
		
		<form action="" method="post" id="subform">
			<input type="hidden" name="gid" value="" id="subformId">
			<input type="hidden" name="gname" value="${goods.goodsname }">
			<input type="hidden" name="pageNo" value="${goods.pageNo }">
		</form>
	</div>
</body>

 
</html>
