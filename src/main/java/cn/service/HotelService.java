package cn.service;

import cn.entity.Hotel;
import org.apache.ibatis.annotations.Param;

public interface HotelService {
    //根据套餐ID找酒店名
    public Hotel findHotelById(@Param("packageId") Integer packageId);
    //跟酒店ID查找一个酒店对象
    public Hotel getPoint(@Param("hotelId") Integer hotelId);
}
