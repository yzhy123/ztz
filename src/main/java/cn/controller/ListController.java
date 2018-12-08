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
public class ListController {

    @Resource
    private ViewSpotService viewSpotService;
    @Resource
    private ProvinceService provinceService;
    @Resource
    private BannerImagesService bannerImagesService;

    //通过当前位置和所选地点
    @RequestMapping("/list.do")
    public String list(Model model,String bplaceId , Integer viewId){


        return "list";
    }

}
