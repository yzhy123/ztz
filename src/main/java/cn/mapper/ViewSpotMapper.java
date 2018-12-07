package cn.mapper;

import cn.entity.ViewSpot;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ViewSpotMapper {

   //通过省名热点排行名找景点
    public List<ViewSpot> findViewByPrvName(@Param("name")String name);

    //通过热点排行找前几名(num:前几名   type：0:普通  1：海岛)
    public List<ViewSpot> findViewFirst(@Param("num") Integer num,@Param("type")Integer type);



}
