package cn.mapper;

import cn.entity.Province;
import cn.entity.ViewSpot;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ViewSpotMapper {

   //通过省名热点排行名找景点
    public List<ViewSpot> findViewByPrvName(@Param("name")String name);

    //通过热点排行找前几名(num:前几名   type：0:普通  1：海岛)
    public List<ViewSpot> findViewFirst(@Param("num") Integer num,@Param("type")Integer type);

    //周边游热点推送(根据所在点地名)
    public List<ViewSpot> findViewAround(@Param("name") String name);

    //1.讲搜索指数最高的景点 放在首页
    public ViewSpot getViewSpot();
    //2.....搜索指数第2,3，4的放在搜索指数最高的下方
    public List<ViewSpot> getViewSpotList();


}
