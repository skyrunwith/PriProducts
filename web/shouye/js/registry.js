$(document).ready(function(){
    $("#registryBtn").click(function(){
        if($("#yanzhengma").val() != session_registry_key_image_code){
            alert("验证码不正确");
        }else if($("#userpwd").val() != $("#repassword").val()){
            alert("两次密码输入不一致")
        } else {
            $.ajax({
                url: "/login/registry",
                data: $("#registryForm").serialize(),
                async: false,
                success: function (res) {
                    res = JSON.parse(res);
                    alert(res.msg);
                    if(res.code == 0){
                        window.location.href = "/shouye/index";
                    }
                }
            });
        }
    });
});