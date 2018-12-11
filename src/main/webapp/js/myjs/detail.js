function  showDate() {
    $("#test2").show()
}

function toOrder(packageId) {
    var beginDate = $("[name=date]").val();
    alert(packageId+"----"+beginDate);
    window.location.href="/order.do?packageId="+packageId+"&beginDate="+beginDate;
}
function showMap(hotelId){
    $("#map").show();// 百度地图
    var map = new BMap.Map("map");
    map.centerAndZoom(new BMap.Point(118.78,32),18);
    map.enableScrollWheelZoom(true);
    $.ajax({
        url: "map.do",
        type: "get",
        data: {"hotelId": hotelId},
        dataType: "json",
        success: function (data) {
            if (data != null) {
                map.clearOverlays();
                var new_point = new BMap.Point(data.Hotel.xPoint, data.Hotel.yPoint);
                var marker = new BMap.Marker(new_point);  // 创建标注
                map.addOverlay(marker);              // 将标注添加到地图中
                map.panTo(new_point);
            }
        }
    });
    }