$(document).ready(function(){

});

function findAllDianpu(kid){
    if(kid) {
        window.location.href = "/shouye/shangcheng?kid=" + kid;
    }else{
        window.location.href = "/shouye/shangcheng";
    }
}