$(document).ready(function(){
    $("#loginBtn").click(function(){
        $.ajax({
            url:"/login/login",
            data: $("#loginForm").serialize(),
            async:false,
            success: function (res) {
                res = JSON.parse(res);
                if(res.code == 0){
                    window.location.href='/shouye/index';
                }else {
                    alert(res.msg);
                }
            }
        });

    });
});