package cn.service;

import cn.entity.Package;
import cn.mapper.PackageMapper;
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
        return packageMapper.findByBplaceAndView(bplace,view);
    }

    @Override
    public List<Package> findByBplaceAndView(String bplace, Integer id) {
        return packageMapper.findByBplaceAndView(bplace,id);
    }

    @Override
    public List<Package> findHotPackage() {
        return packageMapper.findHotPackage();
    }
}
