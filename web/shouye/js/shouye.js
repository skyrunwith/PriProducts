$(document).ready(function () {
    $("#searchKind").click(function () {
        if ($("#kname").val() == "") {
            alert("产品类型不能为空");
        } else {
            window.location.href = "/shouye/searchShangcheng?kname=" + $("#kname").val();
            // $.ajax({
            //     url: "/shouye/searchShangcheng",
            //     data: {kname:$("#kname")},
            //     async: false,
            //     success: function (res) {
            //         res = JSON.parse(res);
            //         alert(res.msg);
            //         if(res.code == 0){
            //             window.location.href = "/shouye/index";
            //         }
            //     }
            // });
        }
    });

    $(".btn_cart").click(function () {
        $.post($(this).attr('data-href'),
            {
                xid: $(this).attr('data-xid'),
                number: "1"
            },
            function (data) {
                if (data == 1) {
                    alert("添加成功，可去购物车查看");
                } else {
                    alert("请登录！")
                }
            });

    });
});