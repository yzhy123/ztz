package cn.controller;

import cn.service.BannerImagesService;
import cn.service.ProvinceService;
import cn.service.ViewSpotService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;

@Controller
public class DetailController {

    @Resource
    private ViewSpotService viewSpotService;
    @Resource
    private ProvinceService provinceService;
    @Resource
    private BannerImagesService bannerImagesService;

    //通过套餐ID
    @RequestMapping("/Detail.do")
    public String detail(Model model, String bplace , Integer id){


        return "detail";
    }

}
