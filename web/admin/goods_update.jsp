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
		<div style="border: 1px solid #bfd9e1; padding: 20px 20px;">
			<h3>------修改商品------</h3>
			<form action="${ctx }/goods/updated" method="post" enctype="multipart/form-data">
			<input type="hidden" name="gid" value="${goods.gid }" >
			<input type="hidden" name="ats" value="${goods.ats }" >
				<table style="width: 600px;">
					<tr style="line-height: 30px;">
						<td style="width: 70px;">商品名称:</td>
						<td><textarea   name="gname" class="border"
							maxlength="100" required="required"  style="width: 250px;">${goods.gname }</textarea></td>

					</tr>
					<tr style="line-height: 30px;">
						<td style="width: 70px;">商品图片:</td>
						<td><input type="file" name="file_img" class="border" onchange="showimg(this)"
							 style="width: 250px;" accept="image/*"></td>

					</tr>
					<tr>
						<td colspan="3"><img id="file_img"></td>
					</tr>
					<tr style="line-height: 30px;">
						<td style="width:70px;">现价:</td>
						<td><input type="text" name="price" class="border" value="${goods.price }"
							required="required" style="width: 250px;"></td>
						<td style="color: red">*,0-10000000</td>
					</tr>
					
					<tr style="line-height: 30px;">
						<td style="width:70px;">类别:</td>
						<td>
							<c:forEach items="${class_list}" var="item">
								<input type="radio" required="required" name="cid" value="${item.cid }"
								<c:if test="${goods.cid eq item.cid }">checked</c:if>
								>${item.cname }
							</c:forEach>
						</td>

					</tr>
					
					
					<tr style="line-height: 30px;">
						<td style="width:70px;">库存:</td>
						<td><input type="number" name="stock" class="border" value="${goods.stock }"
							required="required" style="width:  250px;"></td>

					</tr>
					
					<tr style="line-height: 50px;">
						<td style="width: 70px;"></td>
						<td>
							<button class="combtn" type="submit">提交</button>
							<button class="canclebtn" type="button" onclick="javascript:history.go(-1);">返回</button>
						</td>
						<td></td>
					</tr>
				</table>
			</form>
		</div>
	</div>
</body>

 
</html>
