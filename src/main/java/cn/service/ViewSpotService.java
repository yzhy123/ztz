package cn.service;

import cn.entity.Province;
import cn.entity.ViewSpot;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ViewSpotService {

    //通过省名热点排行名找景点
    public List<ViewSpot> findViewByPrvName(String name);

    //通过热点排行找前几名(num:前几名   type：0:普通  1：海岛)
    public List<ViewSpot> findViewFirst(Integer num,Integer type);


}
