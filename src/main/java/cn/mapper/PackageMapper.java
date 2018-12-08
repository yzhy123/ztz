package cn.mapper;

import cn.entity.Package;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface PackageMapper {
    //1.网页头部模糊查询
    public List<Package> findByBplaceAndView(@Param("bplace")String bplace,@Param("view")String view);
    //通过当前位置和所选地点
    public List<Package> findByBplaceAndView(@Param("bplace")String bplace,@Param("id")Integer id);
    //（王嘉臣＋）2.查询两个付款人数最多的套餐 放在首页右侧的边栏
    public List<Package> findHotPackage();
}