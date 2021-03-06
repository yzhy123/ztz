package cn.mapper;

import cn.entity.Province;

import javax.validation.constraints.Max;
import java.util.List;

public interface ProvinceMapper {
    //查找全部省
    public List<Province> findAll();
    //通过搜索指数找前8个省名
    public List<Province> findBySearchSum();
}
