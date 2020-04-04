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
		$(".subform1").click(function(){
			var reason = prompt("请输入禁用理由");
			if(reason ==null && reason ==""){
				return false;
			}
			if(reason !="" && reason != null){
				$("#subform").find("[name='reason']").val(reason);
				var action = $(this).attr('data-href');
				var id = $(this).attr('data-id');
				$('#subformId').val(id);
				$('#subform').attr("action",action).submit();
				return false;
			}
		});
		$('.piliangb').click(function(){
			var all=$('.checkitem:checked');
			if(all.length==0){
				alert("请选择数据")
				return false;
			}
			for(var i=0;i<all.length;i++){
				if($(all[i]).parent().parent().find('input[name=reason]').val()==''){
					alert("含有未输入禁用理由的用户，不能批量禁用!");
					return false;
				}
			}
			var ids='';
			for(var i=0;i<all.length;i++){
				ids+=$(all[i]).val()+",";
			}
			$(this).parent().find('input[name=ids]').val(ids);
			$(this).parent().attr('action',$(this).attr('data-action')).submit();
		});
		
	});
</script>
</head>
<body>
	<div id="contentWrap">
		<div class="pageTitle"></div>
		<div class="pageColumn">
			<form action="/admin/user/user_list" method="post">
				用户名:<input type="text" class="border" name="username" value="">
				<button class="combtn" type="submit">搜索</button>
				<button class="canclebtn" type="clear">清空</button>
			</form>
		</div>
		<div class="pageTitle">
			<form action="" method="post">
				<input type="hidden" name="username" value="${user.username }">
				<input type="hidden" name="pageNo" value="${user.pageNo }">
				<input type="hidden" name="ids">
				<a class="icons-btn" href="/admin/user/add"><span class="icons icons-add"></span>添加</a>

				<button class="icons-btn piliang" data-action="${ctx }/user/pluse" type="submit"><span class="icons icons-use"></span>批量启用</button>
				<button class="icons-btn piliangb" data-action="${ctx }/user/plnouse" type="submit"><span class="icons icons-no-use"></span>批量禁用</button> 
				<button class="icons-btn piliangd" data-action="${ctx }/user/pldel" type="submit"><span class="icons icons-del"></span>批量删除</button>

			</form>
		</div>
		<div class="pageColumn">
			<table>
				<thead>
					<th width="25"><input name="" type="checkbox" value=""
						id="checkalls"/></th>
					<th width="5%">用户编号</th>
					<th width="10%">用户名</th>
					<th width="10%">用户密码</th>
					<th width="10%">联系电话</th>
					<th width="5%">状态</th>
					<th width="6%">邮箱</th>
					<th width="20%">收货地址</th>

					<th width="">操作</th>
				</thead>
				<tbody id="tbodyId">
					<c:forEach items="${user_list }" var="item">
						<tr style="background: ${item.status != 1?'#ffd8d8':'' }">
							<td class="checkBox"><input name="" type="checkbox" value="${item.uid }" data-status="${item.status }" data-words="含有未被禁用的用户，不能批量删除!"
								class="checkitem" /></td>
							<td>${item.uid }</td>
							<td>${item.username }</td>
							<td>*******</td>
							<td>${item.usetel }</td>
							<td>${item.status eq 1?'启用':'禁用' }</td>
							<td>${item.useremail }</td>
							<td>${item.useraddre }</td>

							<td><a class="icons-btn" href="${ctx }/user/update?uid=${item.uid}"><span 
									class="icons icons-edit"></span>修改</a> 
								<c:if test="${item.status != 1 }">
									<a class="icons-btn subform" href="${ctx }/user/status" data-id="${item.uid}"><span
										class="icons icons-use"></span>启用</a>
									<a class="icons-btn subform" href="${ctx }/user/del" data-id="${item.uid}"><span
										class="icons icons-del"></span>删除</a>
								</c:if> 
								<c:if test="${item.status eq 1 }">
									<a class="icons-btn subform1" href="#" data-href="${ctx }/user/status" data-id="${item.uid}"><span
										class="icons icons-no-use"></span>禁用</a>
								</c:if> 
								</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>

		<div class="pageTitle footer_fiexed">
			<form action="${ctx }/user/user_list" method="post">
				<input type="hidden" name="username" value="${user.username }">
				<%@ include file="page.jsp"%>
			</form>
		</div>
		
		<form action="" method="post" id="subform">
			<input type="hidden" name="uid" value="" id="subformId">
			<input type="hidden" name="reason" value="">
			<input type="hidden" name="pageNo" value="${user.pageNo }">
		</form>
	</div>
</body>

 
</html>
