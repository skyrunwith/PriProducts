var preNumber = 0;
$(".shuliang").on('input',function(e){
    var dataset = e.target.dataset;
    var number = e.target.value;
    if(parseInt(dataset.stock) >= number) {
        $('#total_' + dataset.id).html(dataset.price * number);
        preNumber = number;
        update();
        $.post("/shouye/upNumbers",{xid:dataset.xid,uid:dataset.uid,number:number});
    }else {
        alert("库存不够");
        e.target.value = preNumber;
    }
});

$("#selectAll").click(function() {
    $(":checkbox[name='ids']").prop("checked", this.checked); // this指代的你当前选择的这个元素的JS对象

   update();
});
$(":checkbox[name='ids']").click(function(e){
    var checks = $("input[name='ids']:checked");
    if(checks.length === $("input[name='ids']").length){
        $("#selectAll").prop("checked", this.checked);
    }else{
        $("#selectAll").prop("checked", false);
    }
    update();
});

function update(){
    $('#checkedProduct').html($("input[name='ids']:checked").length);
    var checks = $("input[name='ids']:checked");
    var total_price = 0;
    var index = 0;
    while (index < checks.length){
        var item = checks[index];
        var id = item.value;
        total_price += parseFloat($('#total_'+ id).html());
        index++;
    }
    $('#total_price').html(total_price);
}

$(".delete").click(function(){
    window.location.reload();
    $.post("/shouye/delete",
        {
            xid:$(this).attr('data-xid'),
            uid:$(this).attr('data-uid')
        }
    ),function(){
        window.location.reload();
    }
});
//批量删除
$("#Delete").click(function(){
    if(confirm('确定要清空购物车吗吗?')){
        window.location.reload();
        $.post("/shouye/deleteall",
            {
                uid:$(this).attr('data-uid')
            }
        )
     }
});


$(".jsan").click(function(){
    var all = $("input[name='ids']:checked");
    if(all.length == 0){
        alert("请先选择购买的商品");
        return false;
    }
    var ids = '';
    for(var i=0;i<all.length;i++){
        ids += $(all[i]).attr('data-xid')+',';
    }
    $("#ids").val(ids);
    $("#buy").submit();
});