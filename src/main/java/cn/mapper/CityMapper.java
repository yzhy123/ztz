package cn.mapper;

import cn.entity.City;
import cn.entity.Province;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface CityMapper {
    //根据搜索指数找热门省
    public List<City> findBySearch();
    //根据所在省ID找市
    public List<City> findAll(@Param("id") Integer id);



}
