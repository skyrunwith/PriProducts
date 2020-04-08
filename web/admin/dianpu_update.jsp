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
			<h3>------修改店铺------</h3>
			<form action="${ctx }/dianpu/updated" method="post" enctype="multipart/form-data">
			<input type="hidden" name="sid" value="${dianpu.sid }" >
				<table style="width: 600px;">
					<tr style="line-height: 30px;">
						<td style="width: 70px;">店铺主营:</td>
						<td><textarea   name="sname" class="border"
							maxlength="100" required="required"  style="width: 250px;">${dianpu.sname }</textarea></td>
					</tr>
					<tr style="line-height: 30px;">
						<td style="width:70px;">类别:</td>
						<td>
							<c:forEach items="${kind_list}" var="item">
								<input type="radio" required="required" name="kid" value="${item.kid }"
									   <c:if test="${dianpu.kid eq item.kid }">checked</c:if>
								>${item.kname }
							</c:forEach>
						</td>

					</tr>
					<tr style="line-height: 30px;">
						<td style="width:70px;">店铺等级:</td>
						<td><input type="text" name="sdiandengji" class="border" value="${dianpu.sdiandengji }"
							required="required" style="width: 250px;"></td>
					</tr>
					
					<tr style="line-height: 30px;">
						<td style="width:70px;">店铺地址:</td>
						<td><input type="text" name="saddress" class="border" value="${dianpu.saddress }"
								   required="required" style="width: 250px;"></td>
					</tr>

					<tr style="line-height: 30px;">
						<td style="width:70px;">店铺电话:</td>
						<td><input type="number" name="stel" class="border" value="${dianpu.stel }"
							required="required" style="width:  250px;"></td>
					</tr>
					<tr style="line-height: 30px;">
						<td style="width: 70px;">店铺照片:</td>
						<td><input type="file" name="file_img" class="border" onchange="showimg(this)"
								   required="required" style="width: 250px;" accept="image/*"></td>
						<td style="color: red">*，90*50(宽*高)</td>
					</tr>
					<tr>
						<td colspan="3"><img id="file_img" src="${dianpu.simg}"></td>
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
