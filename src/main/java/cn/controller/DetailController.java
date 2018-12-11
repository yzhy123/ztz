package cn.controller;

import cn.entity.Hotel;
import cn.entity.Package;
import cn.service.*;
import com.alibaba.fastjson.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;

@Controller
public class DetailController {
    @Resource
    private HotelService hotelService;
    @Resource
    private ViewSpotService viewSpotService;
    @Resource
    private ProvinceService provinceService;
    @Resource
    private BannerImagesService bannerImagesService;

    @Resource
    private PackageService packageService;

    //通过套餐ID
    @RequestMapping("/detail.do")
    public String detail(Model model,Integer packageId){
        Package aPackage = packageService.findDetail(packageId);
        Hotel hotel = hotelService.findHotelById(aPackage.getId());
        model.addAttribute("aPackage",aPackage);
        model.addAttribute("hotel",hotel);
        return "detail";
    }
    @RequestMapping("/map.do")
    @ResponseBody
    public JSONObject getPoint(Integer hotelId){
        Hotel Hotel = hotelService.getPoint(hotelId);
        JSONObject jsonObject = new JSONObject();
        jsonObject.put("Hotel",Hotel);
        return jsonObject;
    }

}