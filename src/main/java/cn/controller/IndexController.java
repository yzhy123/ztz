package cn.controller;

import cn.entity.BannerImages;
import cn.entity.Province;
import cn.entity.ViewSpot;
import cn.service.BannerImagesService;
import cn.service.ProvinceService;
import cn.service.ViewSpotService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class IndexController {

    @Resource
    private ViewSpotService viewSpotService;
    @Resource
    private ProvinceService provinceService;
    @Resource
    private BannerImagesService bannerImagesService;

    //显示前台
    @RequestMapping("list.do")
    public String list(Model model){
        List<Province> provinceList = provinceService.findBySearchSum();
        List<ViewSpot> list =null;
        Map<String,List<ViewSpot>> map = new HashMap<String,List<ViewSpot>>();
        for (Province province:provinceList){
            list = viewSpotService.findViewByPrvName(province.getPvc_name());
            map.put(province.getPvc_name(),list);
        }

        List<ViewSpot> viewList = viewSpotService.findViewFirst(3,0);
        //海岛排行前三
        List<ViewSpot> daoList = viewSpotService.findViewFirst(3,1);
        //海岛排行前十
        List<ViewSpot> daoList1 = viewSpotService.findViewFirst(10,1);


        List<BannerImages> bannerImagesList = bannerImagesService.getAllBannerImg();
        for (BannerImages b:bannerImagesList
             ) {
            System.out.println(b.getTurl());
        }



        model.addAttribute("map",map);
        model.addAttribute("viewList",viewList);
        model.addAttribute("daoList",daoList);
        model.addAttribute("daoList1",daoList1);
        model.addAttribute("bannerImagesList",bannerImagesList);

        return "index";
    }

}
