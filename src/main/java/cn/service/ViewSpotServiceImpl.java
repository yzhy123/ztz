package cn.service;

import cn.entity.Province;
import cn.entity.ViewSpot;
import cn.mapper.ViewSpotMapper;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;
@Service
@Transactional
public class ViewSpotServiceImpl implements ViewSpotService {

    @Resource
    private ViewSpotMapper viewSpotMapper;


    public List<ViewSpot> findViewByPrvName(String name){
        return viewSpotMapper.findViewByPrvName(name);
    }

    @Override
    public List<ViewSpot> findViewFirst(Integer num, Integer type) {
        return viewSpotMapper.findViewFirst(num,type);
    }

    @Override
    public List<ViewSpot> findViewAround(String name) {
        return viewSpotMapper.findViewAround(name);
    }
    @Override
    public ViewSpot getViewSpot() {
        return viewSpotMapper.getViewSpot();
    }

    @Override
    public List<ViewSpot> getViewSpotList() {
        return viewSpotMapper.getViewSpotList();
    }


}
