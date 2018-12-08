package cn.service;

import cn.entity.Province;

import java.util.List;

public interface ProvinceService {

    public List<Province> findBySearchSum();
    //查找全部省
    public List<Province> findAll();
}
