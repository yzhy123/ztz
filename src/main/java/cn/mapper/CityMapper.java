package cn.mapper;

import cn.entity.City;

import java.util.List;

public interface CityMapper {
    //根据省的Id找市
    public List<City> findCityById(Integer ProvinceId);
}
