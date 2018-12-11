package cn.service;

import cn.entity.Package;
import com.github.pagehelper.PageInfo;

import java.util.List;

public interface PackageService {
    //1.网页头部模糊查询
    public List<Package> findByBplaceAndView(String bplace,String view);
    //通过当前位置和所选地点
    public List<Package> findByBplaceAndView(String bplace,Integer id);
    //2.查询两个付款人数最多的套餐 放在首页右侧的边栏
    public List<Package> findHotPackage();
    //detail页面拿套餐信息
    public Package findDetail(Integer packageId);


    //根据前台传来的出发地ID和景点ID 查询一个套餐List
    public PageInfo<Package> findPackListByViewId(String cName
            , String viewName, Integer pageNum, Integer pageSize);
    //根据前台传来的景点ID查询一个景点名字
    public String findByViewId(Integer vId);
}
