package cn.mapper;

import cn.entity.Package;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface PackageMapper {
    //1.网页头部模糊查询
    public List<Package> findByBplaceAndView(@Param("bplace")String bplace,@Param("view")String view);
    //通过当前位置和所选地点
    public List<Package> findByBplaceAndView(@Param("bplace")String bplace,@Param("id")Integer id);
    //、2.查询两个付款人数最多的套餐 放在首页右侧的边栏
    public List<Package> findHotPackage();
    //detail页面拿套餐信息
    public Package findDetail(@Param("packageId")Integer paceageId);

    // 根据前台传来的出发地ID和景点ID 查询一个套餐List
    public  List<Package> findPackListByViewId(@Param("cName") String cName ,@Param("viewName") String viewName);


    //根据前台传来的景点ID查询一个景点名字
    public String findByViewId(@Param("vId") Integer vId);

}