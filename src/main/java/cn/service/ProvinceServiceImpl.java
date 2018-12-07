package cn.service;

import cn.entity.Package;
import cn.entity.Province;
import cn.mapper.ProvinceMapper;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;
@Service
@Transactional
public class ProvinceServiceImpl implements ProvinceService {

@Resource
private ProvinceMapper provinceMapper;

    public List<Province> findBySearchSum() {
        return provinceMapper.findBySearchSum();
    }
}
