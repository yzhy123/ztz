package cn.service;

import cn.entity.Package;
import cn.entity.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface PackageService {
    //1.网页头部模糊查询
    public List<Package> findByBplaceAndView(String bplace,String view);
}
