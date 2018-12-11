package cn.service;

import cn.entity.City;
import cn.entity.Province;
import cn.mapper.CityMapper;
import cn.mapper.ProvinceMapper;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

@Service
@Transactional
public class CityServiceImpl implements CityService {

@Resource
private CityMapper cityMapper;


    @Override
    public List<City> findBySearch() {
        return cityMapper.findBySearch();
    }

    @Override
    public List<City> findAll(Integer id) {
        return cityMapper.findAll(id);
    }
}
