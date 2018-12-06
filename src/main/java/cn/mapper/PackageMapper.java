package cn.mapper;

import cn.entity.Package;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface PackageMapper {
    //1.网页头部模糊查询
    public List<Package> findByBplaceAndView(@Param("bplace")String bplace,@Param("view")String view);
}