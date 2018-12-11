package cn.service;

import cn.entity.Package;
import cn.mapper.PackageMapper;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

@Service
@Transactional
public class PackageServiceImpl implements PackageService {
    @Resource
    private PackageMapper packageMapper;

    public List<Package> findByBplaceAndView(String bplace, String view) {
        return packageMapper.findByBplaceAndView(bplace, view);
    }

    @Override
    public List<Package> findByBplaceAndView(String bplace, Integer id) {
        return packageMapper.findByBplaceAndView(bplace, id);
    }

    @Override
    public List<Package> findHotPackage() {
        return packageMapper.findHotPackage();
    }

    @Override
    public Package findDetail(Integer packageId) {
        return packageMapper.findDetail(packageId);
    }


    @Override
    //根据前台传来的出发地ID和景点ID 查询一个套餐List
    public PageInfo<Package> findPackListByViewId(String cName, String viewName, Integer pageNum, Integer pageSize) {
        PageHelper.startPage(pageNum, pageSize);
        List<Package> list = packageMapper.findPackListByViewId(cName, viewName);
        PageInfo pageInfo = new PageInfo(list);
        return pageInfo;
    }

    @Override
    public String findByViewId(Integer vId) {
        String viewName = packageMapper.findByViewId(vId);
        return viewName;
    }
}
