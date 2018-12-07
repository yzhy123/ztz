package cn.Test;

import cn.entity.B_User;
import cn.entity.Province;
import cn.entity.User;
import cn.entity.ViewSpot;
import cn.service.*;
import cn.util.IndustrySMS;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;
import java.util.List;
import java.util.Set;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:applicationContext.xml")
public class TestDemo {
    @Resource
    private B_UserService b_userService;
    @Resource
    private UserService userService;
    @Resource
    private SmsService smsService;
    @Resource
    private ProvinceService provinceService;

    @Resource
    private ViewSpotService viewSpotService;


   /* @org.junit.Test
    public void testFindByName(){
        B_User b_user = b_userService.findByName("xizheng");
        if (b_user!=null){
            System.out.println(1);
        }
    }

    @org.junit.Test
    public void testFindRole(){
        Set<String> set = b_userService.findRoleById(1);
        for (String s:set){
            System.out.println(s);
        }
    }

    @org.junit.Test
    public void testFindUser(){
        User user = userService.findByPhone("15952500621");
        if (user!=null){
            System.out.println("1");
        }
    }*/

    @org.junit.Test
    public void testY(){

        smsService.sendMessage("15952500621");
    }

  /*  @org.junit.Test
    public void testPrv(){
        List<Province> list = provinceService.findBySearchSum();
        for (Province p:list){
            System.out.println(p.getPvc_name());
        }
    }*/

    @org.junit.Test
    public void testVie(){
        List<Province> list = provinceService.findBySearchSum();
        for (Province p:list){
            List<ViewSpot> list1 = viewSpotService.findViewByPrvName(p.getPvc_name());
            for(ViewSpot v :list1){
                System.out.println(p.getPvc_name()+":"+v.getV_name());
            }
        }
    }
}
