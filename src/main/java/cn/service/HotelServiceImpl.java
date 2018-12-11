package cn.service;

import cn.entity.Hotel;
import cn.mapper.HotelMapper;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;

@Service
@Transactional
public class HotelServiceImpl implements HotelService {

    @Resource
    private HotelMapper hotelMapper;
    public Hotel findHotelById(Integer packageId) {
        return hotelMapper.findHotelById(packageId);
    }

    @Override
    public Hotel getPoint(Integer hotelId) {
        return hotelMapper.getPoint(hotelId);
    }
}
