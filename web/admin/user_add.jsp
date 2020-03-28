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
			<h3>------添加用户------</h3>
			<form action="${ctx }/user/insert" method="post" enctype="multipart/form-data">
				<table style="width: 600px;">
					<tr style="line-height: 30px;">
						<td style="width: 70px;">用户名:</td>
						<td><input type="text"  name="username" class="border" required="required" maxlength="10" style="width: 250px;"></td>
					</tr>
					<tr style="line-height: 30px;">
						<td style="width:70px;">密码:</td>
						<td><input type="password" name="password" class="border" required="required" style="width: 250px;" min="6"></td>
					</tr>
					<tr>
						<td colspan="1"><img id="file_img"></td>
					</tr>
					<tr style="line-height: 30px;">
						<td style="width:70px;">邮箱:</td>
						<td><input type="email" name="email" class="border" required="required" style="width: 250px;"></td>
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
