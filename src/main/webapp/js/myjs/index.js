

function clickHot(id) {
    var name = $("#"+id).html();
    $("#js_cityId").empty();
    $("#js_cityId").html(name);

}

//点击景点名跳转list面，展示对应景点下的套餐list.do
function toList(vid) {
    var provinceName = $("#js_cityId").html();
    window.location.href="/list.do?viewId="+vid+"&bplaceId="+provinceName
}
//点击套餐名，跳转套餐详情页面内detail.do
function toDetail(packageId) {
    window.location.href="/detail.do?id="+packageId
}


function change_province(){

    var opid =document.getElementById("fs").value;
    alert(opid);
    $.ajax({
        "url":"/city.do",
        "type":"post",
        "data":{"opid":opid},
        //"dataType":"html",
        "dataType":"JSON",
        success:function(data){
            $("#city").empty();
            //alert(data);
            $select=$("<select id=\"cit\" onchange=\"change_city()\"><option>---选择城市---</option></select>");
            $(data).each(function(){
                $select.append("<option value="+this.id+">"+this.c_name+"</option>");
            })
            $("#city").append($select);
        }
    })
}
function change_city(){
    var areas =document.getElementById("cit").value;
    //alert(areas);
    $.ajax({
        "url":"CityServlet?action=area",
        "type":"post",
        "data":{"areas":areas},
        "dataType":"JSON",
        success:function(data){
            $("#area").empty();
            //alert(data);
            $select=$("<select id=\"cit\"><option>---选择城市---</option></select>");
            $(data).each(function(){
                $select.append("<option value="+this.id+">"+this.cityName+"</option>");
            })
            $("#area").append($select);
        }

    })
}