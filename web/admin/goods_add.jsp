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
			<h3>------添加商品------</h3>
			<form action="${ctx }/xiangqing/added" method="post" enctype="multipart/form-data">
				<table style="width: 600px;">
					<tr style="line-height: 30px;">
						<td style="width: 70px;">商品名称:</td>
						<td><textarea  name="x_name" class="border"
							maxlength="100" required="required"  style="width: 250px;"></textarea></td>

					</tr>
					<tr style="line-height: 30px;">
						<td style="width: 70px;">商品图片:</td>
						<td><input type="file" name="file_img" class="border" onchange="showimg(this)"
							 required="required" style="width: 250px;" accept="image/*"></td>

					</tr>
					<tr>
						<td colspan="3"><img id="file_img" ></td>
					</tr>
					<tr style="line-height: 30px;">
						<td style="width:70px;">现价:</td>
						<td><input type="text" name="x_price" class="border"
							required="required" style="width: 250px;"></td>

					</tr>
					<tr style="line-height: 30px;">
						<td style="width:70px;">类型:</td>
						<td><input type="text" name="x_leixing" class="border"
								   required="required" style="width: 250px;"></td>

					</tr>
					<tr style="line-height: 30px;">
						<td style="width:70px;">起售斤数:</td>
						<td><input type="text" name="x_qishou" class="border"
								   required="required" style="width: 250px;"></td>

					</tr>
					<tr style="line-height: 30px;">
						<td style="width:70px;">环境:</td>
						<td><input type="text" name="x_huanjing" class="border"
								   required="required" style="width: 250px;"></td>

					</tr>

					<tr style="line-height: 30px;">
						<td style="width:70px;">类别:</td>
						<td>
							<c:forEach items="${kind_list}" var="item">
								<input type="radio" required="required" name="kid" value="${item.kid }">${item.kname }
							</c:forEach>
						</td>
					</tr>
					
					
					<tr style="line-height: 30px;">
						<td style="width:70px;">库存:</td>
						<td><input type="number" name="x_number" class="border"
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
