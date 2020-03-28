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
			<h3>------添加店铺------</h3>
			<form action="${ctx }/goods/added" method="post" enctype="multipart/form-data">
				<table style="width: 600px;">
					<tr style="line-height: 30px;">
						<td style="width: 70px;">店铺主营:</td>
						<td><textarea   name="gname" class="border"
							maxlength="100" required="required"  style="width: 250px;"></textarea></td>
					</tr>
					<tr style="line-height: 30px;">
						<td style="width:70px;">店铺等级:</td>
						<td><input type="text" name="dengji" class="border"
							required="required" style="width: 250px;"></td>
					</tr>
					<tr style="line-height: 30px;">
						<td style="width:70px;">店铺电话:</td>
						<td><input type="text" name="tel" class="border"
								   required="required" style="width: 250px;"></td>
					</tr>
					<tr style="line-height: 30px;">
						<td style="width:70px;">店铺地址:</td>
						<td><input type="text" name="address" class="border"
								   required="required" style="width: 250px;"></td>
					</tr>
					<tr style="line-height: 30px;">
						<td style="width:70px;">店铺时间:</td>
						<td><input type="text" name="time" class="border"
								   required="required" style="width: 250px;"></td>
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
