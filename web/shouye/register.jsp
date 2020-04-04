
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="author" content="order by dede58.com"/>
    <title>用户注册</title>
    <link rel="stylesheet" type="text/css" href="css/login.css">

</head>
<body>
<form  method="post" id="registryForm">
    <div class="regist">
        <div class="regist_center">
            <div class="regist_top">
                <div class="left fl">注册</div>
                <div class="right fr"><a href="/shouye/index" target="_self">潇潇惠农</a></div>
                <div class="clear"></div>
                <div class="xian center"></div>
            </div>
            <div class="regist_main center">
                <div class="username">用&nbsp;&nbsp;户&nbsp;&nbsp;名:&nbsp;&nbsp;<input class="shurukuang" type="text" name="username" placeholder="请输入你的用户名"/><span>请输入你的用户名</span></div>
                <div class="username">密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码:&nbsp;&nbsp;<input class="shurukuang" type="password" id="userpwd" name="userpwd" placeholder="请输入你的密码"/><span>请输入6位以上字符</span></div>

                <div class="username">确认密码:&nbsp;&nbsp;<input class="shurukuang" type="password" id="repassword" name="repassword" placeholder="请确认你的密码"/><span>两次密码要输入一致</span></div>
                <div class="username">邮&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;箱:&nbsp;&nbsp;<input class="shurukuang" type="email" name="useremail" placeholder="请填写您的邮箱"/><span>请填写您的邮箱</span></div>
                <div class="username">联系电话:&nbsp;&nbsp;<input class="shurukuang" type="text" name="usetel" placeholder="请填写您联系电话"/><span>请填写您联系电话</span></div>
                <div class="username">家庭地址:&nbsp;&nbsp;<input class="shurukuang" type="text" name="useraddre" placeholder="请填写您现居住地"/><span>请填写您现居住地</span></div>
                <div class="username">
                    <div class="left fl">验&nbsp;&nbsp;证&nbsp;&nbsp;码:&nbsp;&nbsp;<input class="yanzhengma"  id = "yanzhengma" type="text" name="yanzhengma" placeholder="请输入验证码"/></div>
                    <div class="right fl"><img src="/login/registry/image/yanzhengma"></div>
                    <div class="clear"></div>
                </div>
            </div>
            <div class="regist_submit">
                <input class="submit" type="button" id="registryBtn" value="立即注册" >
            </div>

        </div>
    </div>
</form>
<script type="text/javascript" src="js/jquery-2.1.0.min.js"></script>
<script type="text/javascript">
    var session_registry_key_image_code = ${sessionScope.SESSION_REGISTRY_KEY_IMAGE_CODE.code};
</script>
<script type="text/javascript" src="js/registry.js"></script>
</body>
</html>
