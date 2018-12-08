package cn.service;

import cn.entity.Package;

import java.util.List;

public interface PackageService {
    //1.网页头部模糊查询
    public List<Package> findByBplaceAndView(String bplace,String view);
    //通过当前位置和所选地点
    public List<Package> findByBplaceAndView(String bplace,Integer id);
    //（王嘉臣＋）2.查询两个付款人数最多的套餐 放在首页右侧的边栏
    public List<Package> findHotPackage();
}
