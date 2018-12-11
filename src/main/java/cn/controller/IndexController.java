package cn.controller;

import cn.entity.*;
import cn.entity.Package;
import cn.service.*;
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
    @Resource
    private PackageService packageService;
    @Resource
    private CityService cityService;
    //显示前台
    @RequestMapping("/index.do")
    public String index(Model model){
        List<Province> allProvince = provinceService.findAll();
        List<City> cityList = cityService.findBySearch();
        System.out.println(cityList.size());
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
        //日本热门
        List<ViewSpot> JapanList = viewSpotService.findViewFirst(4, 2);
        ViewSpot viewSpot = viewSpotService.getViewSpot();
        List<ViewSpot> viewSpotList = viewSpotService.getViewSpotList();
        //
        List<Package> packageList = packageService.findHotPackage();

        //轮播图
        List<BannerImages> bannerImagesList = bannerImagesService.getAllBannerImg();

        model.addAttribute("allProvince",allProvince);
        model.addAttribute("provinceList",provinceList);
        model.addAttribute("cityList",cityList);
        model.addAttribute("map",map);
        model.addAttribute("viewList",viewList);
        model.addAttribute("viewSpot",viewSpot);
        model.addAttribute("viewSpotList",viewSpotList);
        model.addAttribute("daoList",daoList);
        model.addAttribute("daoList1",daoList1);
        model.addAttribute("JapanList",JapanList);
        model.addAttribute("bannerImagesList",bannerImagesList);
        model.addAttribute("packageList",packageList);

        return "index";
    }

   /* //三级联动
    @RequestMapping("/city.do")
    @ResponseBody
    public String city(Integer opid){
        List<City> cityList = cityService.findAll(opid);
        String allStr = JSON.toJSONString(cityList);
        System.out.println(allStr);
        return allStr;
    }*/

}
