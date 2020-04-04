var blackid= "page-black";
var loginboxid ="login";
var registerboxid ="register";
//设置遮幕的高度
function setHeight(){
	//获取文档高度
	var height = $(document).height();
	$("#"+blackid).css("height",height);
}
function showblack(){
	setHeight();
	$("#"+blackid).fadeIn("fast");
}
function closeblack(){
	setHeight();
	$("#"+blackid).fadeOut("fast");
}


/* 开启和关闭登录框 */
function showLoginBox(){
	$("#"+loginboxid).fadeIn("fast");
    $(".form-group img").trigger("onclick");
    showblack();
}
function closeLoginBox(){
	$("#"+loginboxid).fadeOut("fast");
	$(".f-input").val("");
	closeblack();
}

/* 开启和关闭注册框 */

function showRegisterBox(){
	$("#"+registerboxid).fadeIn("fast");
	showblack();
}
function closeRegisterBox(){
	$("#"+registerboxid).fadeOut("fast");
    $(".f-input").val("");
	closeblack();
}

/*  列表项*/
$(".a-item").click(function(){
				$(this).addClass("active").siblings().removeClass("active");
			});


/* 注册验证 */
function registVerifyUser(obj){
    $.ajax({
        type:"post",
        url:"/woniuShop_war_exploded/controller/user/verify",
        data:{"username":obj.value},
        dataType:"json",
        success:function (flag) {
            var outdiv = $(obj).parent().parent().parent().parent();
            if (flag==2){
                $(obj).val($(obj).val()+"(用户名已存在)");
                $(obj).css("color","red");
                $(obj).attr("licit","0");
                $(obj).parent().parent().parent().parent().attr("licit","0");
            }else if (flag==3) {
                $(obj).css("color","");
                $(obj).val($(obj).val().replace("(用户名已存在)",""));
                if($(".pass").get(0).value==$(".pass").get(1).value){
                    $(obj).attr("licit","1");
                    $(obj).parent().parent().parent().parent().attr("licit","1");
                }
            }else{
                $(obj).val($(obj).val()+"(请输入手机号码)");
                $(obj).css("color","red");
                $(obj).attr("licit","0");
                $(obj).parent().parent().parent().parent().attr("licit","0");
            }
        }
    });
}

function registVerifyPass() {
    var pass1 = $(".pass");
    var val1 = pass1.get(0).value;
    var val2 = pass1.get(1).value;

    var obj = $("#pass-valid");

    if(val1==val2){
        obj.css("display","none");
        var licit =$("#user").attr("licit");
        if(licit==1){
            console.dir( $("#user").parent().parent().parent().parent());
            $("#user").parent().parent().parent().parent().attr("licit","1");
        }
    }else {
        obj.css("color","red");
        obj.css("display","inline");
        $("#user").parent().parent().parent().parent().attr("licit","0");

    }
}

function regist(obj) {
    if($("#register").attr("licit")==1){
        $.ajax({
            type:"post",
            url:"/woniuShop_war_exploded/controller/user/regist",
            data:{"username":$("#user")[0].value,"password":$(".pass")[0].value},
            dataType:"json",
            success:function (flag) {
                if (flag){
                    closeblack();
                    closeRegisterBox();
                    $("#register input").val("");
                    alert("注册成功");
                } else {
                    alert("请输入规范的密码");
                }
            }
        });
    }else{
        alert("请输入正确格式的用户名或密码");
    }
}

/* 登陆验证 */
function login() {
    $.ajax({
        type:"post",
        url:"/woniuShop_war_exploded/controller/user/login",
        data:{"username":$("#login .f-input")[0].value,"password":$("#login .f-input")[1].value,"validCode":$("#login .f-input")[2].value},
        dataType:"json",
        success:function (flag) {
            if (flag==1){
                alert("登录成功");
                var user_block = $("#userzoom");
                user_block.attr("islogin",true);
                var y_inout = $("<div id=\"y-inout\">\n" +
                    "<a href='order.html' class='icon i-order'>订单</a>\n" +
                    "<a href='shopcar.html' class='icon i-shopcar'>购物车</a>\n" +
                    "<a href='' class='icon i-user'>"+$("#login .f-input")[0].value+"</a>\n" +
                    "<a href='' class='icon i-loginout' onclick='logout()'>注销</a>\n" +
                    "</div>");
                user_block.html(y_inout);
            } else if (flag==2) {
                alert("账号或密码错误，请重新登录");
            }else if (flag==3){
                alert("请输入正确的验证码");

            }
            closeblack();
            closeLoginBox();
            $("#login input").val("");
        }
    });
}
/* 注销 */
function logout(){
    $.ajax({
        type:"post",
        url:"/woniuShop_war_exploded/controller/user/logout",
        success:function () {
            location.replace("index.html");
        }
    });
}
/* 用户块加载 */
$(function () {
    var user_block = $("#userzoom");
    $.ajax({
        type:"post",
        url:"/woniuShop_war_exploded/controller/user/getname",
        success:function (username) {
            if (username!==""){
                var y_inout = $("<div id=\"y-inout\">\n" +
                    "<a href='order.html' class='icon i-order'>订单</a>\n" +
                    "<a href='shopcar.html' class='icon i-shopcar'>购物车</a>\n" +
                    "<a href='' class='icon i-user'>"+username+"</a>\n" +
                    "<a href='' class='icon i-loginout' onclick='logout()'>注销</a>\n" +
                    "</div>");
                user_block.html(y_inout);
            }else {
                var n_inout = $("<div id='n-inout'>"+
                    "<a href='#' onclick='showLoginBox()' class='icon i-user'>登录</a>"+
                    "<a href='#' onclick='showRegisterBox()' class='icon i-register'>注册</a>"+
                    "</div>");
                user_block.html(n_inout);
            }
        }
    });
})

/* 商品分类 */
function getTypes() {
    var type_block = $("#show ul.types");
    $.ajax({
        type:"post",
        url:"/woniuShop_war_exploded/controller/good/gettype",
        datatype:"json",
        success:function (data) {
            var types = eval(data);
           for (var i=0;i<types.length;i++){
               var li = $("<li class=\"type-item\">\n"+
                   "  <a href=\"/woniuShop_war_exploded/controller/good/getGoodType?typename="+types[i].picName+"\">\n"+
                   "    <div class=\"type-img\">\n"+
                   "      <img src="+types[i].picURL+" >\n"+
                   "    </div>\n"+
                   "    <div class=\"type-content\">\n"+
                   "      <h3>"+types[i].picName+"</h3>\n"+
                   "      <p>"+types[i].discript+"</p>\n"+
                   "    </div>\n"+
                   "  </a>\n"+
                   "</li>");
               type_block.append(li);
           }
        },
        error:function () {
            alert(111);
        }
    });
}

var goodList;
var good_page;
/* 商品列表 */
function getGoodList() {
    $.ajax({
        type:"post",
        url:"/woniuShop_war_exploded/controller/good/getGoodList",
        dataType:"json",
        success:function (list) {
            var goodlist = eval(list);
            goodList = goodlist;
            good_page=1;
            if (goodlist.length>10){
                addGood(goodlist,0,10);
            } else {
                addGood(goodlist,0,goodlist.length);
            }
            $("#good-page").text(1+"/"+Math.ceil(goodlist.length/10));
        }
    });
}
function getNextPage() {
    var pageInfrom = $("#good-page").text().split("/");
    if (pageInfrom[0]<pageInfrom[1]){
        pageInfrom[0]++;
        var list_bolck = $("#good-list");
        list_bolck.html("");
        if (goodList.length/10>=pageInfrom[0]){
            addGood(goodList,(pageInfrom[0]-1)*10,10);
        } else {
            addGood(goodList,(pageInfrom[0]-1)*10,goodList.length%10);
        }
        $("#good-page").text(pageInfrom[0]+"/"+pageInfrom[1]);
        // console.dir(goodList.length);
    }
}
function getPreviousPage() {
    var pageInfrom = $("#good-page").text().split("/");
    if (pageInfrom[0]>1){
        pageInfrom[0]--;
        var list_bolck = $("#good-list");
        list_bolck.html("");
        addGood(goodList,pageInfrom[0]-1,10);
        $("#good-page").text(pageInfrom[0]+"/"+pageInfrom[1]);
        console.dir(goodList.length);
    }
}
function pageJump(arg) {
    var list_bolck = $("#good-list");
    var pageInfrom = $("#good-page").text().split("/");
    if (arg==0){
        if (pageInfrom[0]!=1){
            list_bolck.html("");
            addGood(goodList,0,10);
            $("#good-page").text(1+"/"+pageInfrom[1]);
        }
    } else if (arg==1){
        if (pageInfrom[0]!=pageInfrom[1]){
            list_bolck.html("");
            if (goodList.length%10!=0){
                addGood(goodList,pageInfrom[1]*10-10,goodList.length%10);
            }else {
                addGood(goodList,pageInfrom[1]*10-10,10);
            }
            $("#good-page").text(pageInfrom[1]+"/"+pageInfrom[1]);
        }
    }
}

function addGood(goodlist,startindex,length) {
    var list_bolck = $("#good-list");
    for (var i=startindex;i<startindex+length;i++){
        list_bolck.append($("<div class=\"good\">\n" +
            "\t\t\t\t<div class=\"good-img\">\n" +
            "\t\t\t\t\t<a href=\"/woniuShop_war_exploded/controller/good/getGood?goodId="+goodlist[i].id+"\">" +
            "\t\t\t\t\t\t<img src="+goodlist[i].picURL+">\n" +
            "\t\t\t\t\t</a>\n" +
            "\t\t\t\t</div>\n" +
            "\t\t\t\t<div class=\"good-info\">\n" +
            "\t\t\t\t\t<div class=\"good-left\">\n" +
            "\t\t\t\t\t\t<div class=\"good-price\"><span class=\"s-money\">￥"+goodlist[i].price+"</span></div>\n" +
            "\t\t\t\t\t\t<div class=\"good-add\"><img src=\"icon/加.png\"></div>\n" +
            "\t\t\t\t\t</div>\n" +
            "\t\t\t\t\t<div class=\"good-right\">\n" +
            "\t\t\t\t\t\t商品名称："+goodlist[i].name+"\n" +
            "\t\t\t\t\t</div>\n" +
            "\t\t\t\t</div>\n" +
            "\t\t\t</div>"));
    }
}

function getgoodInform() {
    var good_block = $("#good");
    $.ajax({
        type:"post",
        url:"/woniuShop_war_exploded/controller/good/getGoodInform",
        dataType:"json",
        success:function (good) {
            var goodlist = eval(good);
                good_block.append($("\t\t<div id=\"good-show\">\n" +
                    "\t\t\t<img src="+good.picURL+" >\n" +
                    "\t\t</div>\t\n" +
                    "\t\t<div id=\"good-info\">\n" +
                    "\t\t\t<table id=\"good-table\" gid='"+good.id+"'>\n" +
                    "\t\t\t\t<tr>\n" +
                    "\t\t\t\t\t<td colspan=\"2\" style=\"text-align: center;\"><h2>商品名称</h2></td>\t\t\t\t\t\n" +
                    "\t\t\t\t</tr>\n" +
                    "\t\t\t\t<tr class=\"tr-info\">\n" +
                    "\t\t\t\t\t<td class=\"td-title\">品牌：</td>\n" +
                    "\t\t\t\t\t<td>"+good.name+"</td>\n" +
                    "\t\t\t\t</tr>\n" +
                    "\t\t\t\t<tr class=\"tr-info\">\n" +
                    "\t\t\t\t\t<td class=\"td-title\">单价：</td>\n" +
                    "\t\t\t\t\t<td><span class=\"s-money\">￥ "+good.price+" </span></td>\n" +
                    "\t\t\t\t</tr>\n" +
                    "\t\t\t\t\n" +
                    "\t\t\t\t<tr class=\"tr-info\">\n" +
                    "\t\t\t\t\t<td class=\"td-title\">描述：</td>\n" +
                    "\t\t\t\t\t<td>"+good.discript+"</td>\n" +
                    "\t\t\t\t</tr>\n" +
                    "\t\t\t\t<tr class=\"tr-info\">\n" +
                    "\t\t\t\t\t<td class=\"td-title\">库存：</td>\n" +
                    "\t\t\t\t\t<td>"+good.stock+"</td>\n" +
                    "\t\t\t\t</tr>\n" +
                    "\t\t\t\t<tr class=\"tr-info\">\n" +
                    "\t\t\t\t\t<td class=\"td-title\">数量：</td>\n" +
                    "\t\t\t\t\t<td>\n" +
                    "\t\t\t\t\t\t<span class=\"s-btn\"><button class=\"btn\" onclick=\"numMulp()\">-</button></span><input type=\"text\" value=\"1\" disabled=\"disabled\" id=\"total\"/><span class=\"s-btn\" ><button class=\"btn\" onclick=\"numAdd("+good.stock+")\">+</button></span>\n" +
                    "\t\t\t\t\t</td>\n" +
                    "\t\t\t\t</tr>\n" +
                    "\t\t\t</table>"));
        },
        error:function () {
            location.replace("index.html");
        }
    });
}

function addCar() {

    $.ajax({
        type: "post",
        url: "/woniuShop_war_exploded/controller/user/addCar",
        dataType: "json",
        data:{"gid":$("#good-table").attr("gid"),"num":$("#total ").val()},
        success:function (flag) {
            if (flag){
                alert("添加成功!");
                location.replace("shopcar.html");
            }else {
                alert("请登录");
                location.replace("index.html");
            }
        }
    });
}

/* 获取页面 */
function getAdds() {
    var user_block = $("#userzoom");
    var add_block = $(".a-list");
    $.ajax({
        type: "post",
        url: "/woniuShop_war_exploded/controller/user/getAdds",
        dataType: "json",
        success: function (adds) {
            var addlist = eval(adds);
            for (var i = 0; i < addlist.length; i++) {
                add_block.append($("<div class=\"a-item \" addrId='"+addlist[i].id+"'>\n" +
                    "\t\t\t\t\t<div class=\"i-info\">\n" +
                    "\t\t\t\t\t\t<span  class=\"i-s-title\">姓名: </span><span class=\"i-s-name\">" + addlist[i].name + "</span>\n" +
                    "\t\t\t\t\t\t<span class=\"i-s-title\">电话: </span><span class=\"i-s-phone\">" + addlist[i].phone + "</span>\n" +
                    "\t\t\t\t\t</div>\n" +
                    "\t\t\t\t\t<div class=\"i-address \">" + addlist[i].province + addlist[i].city + addlist[i].county + "\n" +
                    "\t\t\t\t\t详细地址：" + addlist[i].addr + "</div>\n" +
                    "\t\t\t\t\t<div class=\"i-delete\"><img src=\"icon/关闭.png\" onclick='delAddr(this)' ></div>\n" +
                    "\t\t\t\t</div>"));
            }
        },
        error:function () {
            location.replace("index.html");
        }
    });
}

// //  添加一个地址
// function addAdd() {
//     $.ajax({
//         type:"post",
//         url:"/woniuShop_war_exploded/controller/user/addAdd",
//         data:{"name":$("#name").val(),"phone":$("#phone").val(),"province":$("#province option:selected").text(),
//         "city":$("#city option:selected").text(),"county":$("#county option:selected").text(),"addr":$("#detail").val()},
//         dataType:"json",
//         success:function (flag) {
//             if (flag){
//                 location.replace("order.html");
//             }
//         }
//     })
// }

//删除一个地址
function delAddr(obj) {
    var addrInform = $(obj).parent().parent();
    $.ajax({
        type:"post",
        url:"/woniuShop_war_exploded/controller/user/delAddr",
        dataType:"json",
        data:{"id":addrInform.attr("addrid")}
    });
    $(".a-item[addrid="+addrInform.attr('addrid')+"]").remove();
    location.reload();
}

/* 地址三级级联 */
function getcity(obj1) {
    var nextForm = $(obj1).parent().next().children("select");
    nextForm.html("");
    $.ajax({
        type:"post",
        url:"/woniuShop_war_exploded/controller/user/getAreas",
        data:{"areaId":obj1.value},
        dataType:"json",
        success:function (areas) {
            var areaList = eval(areas);
            for (var i=0;i<areaList.length;i++){
                nextForm.append($("<option value='"+areaList[i].areaId+"'>"+areaList[i].areaName+"</option>"));
            }
        }
    })
}

function getprovince(){
    if($("#province").html()==""){
        $.ajax({
            type:"post",
            url:"/woniuShop_war_exploded/controller/user/getAreas",
            data:{"areaId":"-1"},
            dataType:"json",
            success:function (areas) {
                var areaList = eval(areas);
                for (var i=0;i<areaList.length;i++){
                    $("#province").append($("<option value='"+areaList[i].areaId+"'>"+areaList[i].areaName+"</option>"));
                }
            },
            error:function () {
                alert("false");
            }
        });
    }
}

//选择一个地址
function selectAddr(obj) {
    // console.dir($(obj).siblings());
    $(obj).addClass("active");
    $(obj).siblings().removeClass("active");
}

function getCars() {
    $.ajax({
        type:"post",
        url:"/woniuShop_war_exploded/controller/user/getCars",
        dataType:"json",
        success:function (cars) {
            var carsList = eval(cars);
            var sum_price =0;
            for (var i=0;i<carsList.length;i++){
                $("#lists").append($("<tr scId="+carsList[i].id+">\n" +
                    "\t\t\t\t<td class=\"td-g-img\"><img src='"+carsList[i].good.picURL+"'></td>\n" +
                    "\t\t\t\t<td>"+carsList[i].good.name+"</td>\n" +
                    "\t\t\t\t<td>"+carsList[i].good.price+"</td>\n" +
                    "\t\t\t\t<td>"+carsList[i].num+"</td>\n" +
                    "\t\t\t\t<td><img src=\"icon/关闭.png\" onclick='delCar(this)'></td>\n" +
                    "\t\t\t</tr>"));
                sum_price += carsList[i].good.price*carsList[i].num;
            }
            if(sum_price!=0){
                $("#pay").append($("<div class=\"btn-pay\"><a href=\"../controller/user/addNewOrder\" class=\"btn btn-danger f-white\">生成订单</a></div>\n" +
                    "\t\t\t<div class=\"total\">总价为 <span class=\"s-money\">￥ "+sum_price+"</span></div>"));
            }
        },
        error:function () {
            location.replace("index.html");
        }
    });
}

function delCar(obj) {
    $.ajax({
        type:"post",
        url:"/woniuShop_war_exploded/controller/user/delCar",
        dataType:"json",
        data:{"id":$(obj).parent().parent().attr("scid")}
    });
    $("tr[val='"+$(obj).parent().parent().attr("scid")+"']").remove();
    location.reload();
}

function getNewOrderItems() {
    $.ajax({
        type:"post",
        url:"/woniuShop_war_exploded/controller/user/getNewOrder",
        dataType:"json",
        success:function (data) {
            $(".d-number").text("订单号："+data.ordernumber);
            for (var i=0;i<data.lists.length;i++){
                $(".d-goodlist ").append($("<div class=\"g-item\">\n" +
                    "\t\t\t\t\t\t<div class=\"item-img\"><img src=\""+data.lists[i].img+"\" /></div>\n" +
                    "\t\t\t\t\t\t<div class=\"item-name\"><a href=\"good.html\">"+data.lists[i].name+"</a></div>\n" +
                    "\t\t\t\t\t\t<div class=\"item-price s-money\">￥"+data.lists[i].price+"</div>\n" +
                    "\t\t\t\t\t\t<div class=\"item-count\">"+data.lists[i].number+"</div>\n" +
                    "\t\t\t\t\t</div>"));
            }
            $(".d-s-price").text("￥ "+data.totalPrice);
        },
        error:function () {
            $("#o-detail,#gopay").css('display','none');
        }
    });
}

function setOrderAdd() {
    var add_block = $(".a-list");
    $.ajax({
        type: "post",
        url: "/woniuShop_war_exploded/controller/user/getAdds",
        dataType: "json",
        success: function (adds) {
            var addlist = eval(adds);
            for (var i = 0; i < addlist.length; i++) {
                var province = addlist[i].province;
                var city = addlist[i].city;
                var county = addlist[i].county;
                var add = "";
                if (province!=null){province += "省";add+=province;}
                if (city!=null){city += "市";add+=city;}
                if (county!=null){county += "县";add+=county;}
                var newDiv = $("<div class=\"a-item \" addrId='"+addlist[i].id+"' onclick='selectAddr(this)'>\n" +
                    "\t\t\t\t\t\t<div class=\"i-info\">\n" +
                    "\t\t\t\t\t\t\t<span  class=\"i-s-title\">姓名: </span><span class=\"i-s-name\">"+addlist[i].name+"</span>\n" +
                    "\t\t\t\t\t\t\t<span class=\"i-s-title\">电话: </span><span class=\"i-s-phone\">"+addlist[i].phone+"</span>\n" +
                    "\t\t\t\t\t\t</div>\n" +
                    "\t\t\t\t\t\t<div class=\"i-address \">"+ add +"</div>\n" +
                    "\t\t\t\t\t详细地址：" + addlist[i].addr + "</div>\n" +
                    "\t\t\t\t\t</div>");
                if (i==0){
                    newDiv.addClass("active");
                }
                add_block.append(newDiv);
            }
        },
        error:function () {
            location.replace("index.html");
        }
    });
    getNewOrderItems();
}

function findSelectOrder(obj) {
    if (!$(obj).hasClass("selected")){
        $(obj).addClass("selected");
        $(obj).siblings().removeClass("selected");
        var flag=0;
        if ($(obj).text().trim()=="已支付订单"){
            flag=1;
        }
        $.ajax({
            type:"post",
            url:"/woniuShop_war_exploded/controller/user/getSelectedOrder",
            data:{"state":flag},
            dataType:"json",
            success:function (orders) {
                $("#o-detail").css("display","block");
                $("#gopay,.d-total,#address").css("display","none");
                $(".d-goodlist ").empty();
                for (var i=0;i<orders.length;i++){
                    var date = new Date(orders[i].updatetime);
                    var sta = (orders[i].state+"").replace("1","已支付");
                    sta = sta.replace("0","未支付");
                    $(".d-goodlist ").append($("<div class=\"g-item\" orderState='"+orders[i].state+"' oid='"+orders[i].id+"' onclick='getSelectedOrder(this)'>\n" +
                        "\t\t\t\t\t\t<span>订单号："+orders[i].ordernumber+"</span>\n" +
                        "\t\t\t\t\t\t<div class=\"item-price s-money\">总额：￥"+orders[i].paynumber+"</div>\n" +
                        "\t\t\t\t\t\t<span style='margin-left: 50px'>支付状态："+sta+"</span>\n" +
                        "\t\t\t\t\t\t<span style='margin-left: 50px'>操作："+date.toLocaleDateString().replace(/[/]/gi,"-")+"</span>\n" +
                        "\t\t\t\t\t</div>"));
                    }
            },
            error:function () {
                $("#o-detail,#gopay").css('display','none');
            }
        });
    }
}



function getSelectedOrder(obj) {
    if ($(obj).attr("orderState")==0){
        $("#address,#o-detail,#gopay").css("display","block");
        $("#gopay button").text("付款");
        $("#gopay button").click(function () {
            location.href="../controller/pay/pay?oid="+$(obj).attr("oid");
        });
    }else {
        $("#gopay").css("display","block");
        $("#gopay button").text("退款");
    }
    $.ajax({
        type:"post",
        url:"/woniuShop_war_exploded/controller/user/getOrder",
        data:{"oid":$(obj).attr("oid")},
        dataType:"json",
        success:function (data) {
            $(".d-goodlist ").html("");
            $(".d-number").text("订单号："+data.ordernumber);
            for (var i=0;i<data.lists.length;i++){
                $(".d-goodlist ").append($("<div class=\"g-item\">\n" +
                    "\t\t\t\t\t\t<div class=\"item-img\"><img src=\""+data.lists[i].img+"\" /></div>\n" +
                    "\t\t\t\t\t\t<div class=\"item-name\"><a href=\"good.html\">"+data.lists[i].name+"</a></div>\n" +
                    "\t\t\t\t\t\t<div class=\"item-price s-money\">￥"+data.lists[i].price+"</div>\n" +
                    "\t\t\t\t\t\t<div class=\"item-count\">"+data.lists[i].number+"</div>\n" +
                    "\t\t\t\t\t</div>"));
            }
            $(".d-s-price").text("￥ "+data.totalPrice);
        },
        error:function () {
            $("#o-detail,#gopay").css('display','none');
        }
    });
}