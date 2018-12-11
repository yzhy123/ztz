package cn.controller;

import cn.entity.BannerImages;
import cn.entity.Package;
import cn.entity.Province;
import cn.entity.ViewSpot;
import cn.service.BannerImagesService;
import cn.service.PackageService;
import cn.service.ProvinceService;
import cn.service.ViewSpotService;
import com.alibaba.fastjson.JSONObject;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class ListController {
    @Resource
    private PackageService packageService;
    @Resource
    private ViewSpotService viewSpotService;
    @Resource
    private ProvinceService provinceService;
    @Resource
    private BannerImagesService bannerImagesService;

    //通过当前位置和所选地点
    @RequestMapping("/list.do")
    public String list(Model model,String cName , Integer vId){
        String name = null;
        try {
            name = URLDecoder.decode(cName,"UTF-8");
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        model.addAttribute("vId",vId);
        model.addAttribute("cName",name);
        System.out.println(name);
        return "list";
    }


    @RequestMapping("page.do")
    @ResponseBody
    public JSONObject getPage(Model model, Integer pageNum, String cName, Integer vId){
        String viewName = packageService.findByViewId(vId);
        PageInfo<Package> pageInfo = packageService.findPackListByViewId(cName, viewName, pageNum, 4);
        System.out.println(pageInfo.getPageSize());
        JSONObject jsonObject = new JSONObject();
        jsonObject.put("packageList",pageInfo.getList());
        jsonObject.put("pageInfo",pageInfo);
        return jsonObject;
    }

}
