package cn.controller;

import cn.entity.User;
import cn.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.annotation.Resource;

@Controller
@SessionAttributes("user")
public class UserController {
    @Resource
    private UserService userService;

    @RequestMapping("/register.do")
    @ResponseBody
    public boolean register(User user){
        boolean result = false;
        //userService.addUser(user.getPhone(),user.getPassword());
        if(true){
            result = true;
        }
        System.out.println(user.getPassword());
        System.out.println(user.getPhone());
        return result;
    }
    @RequestMapping("/toLogin.do")
    public String toLogin(Model model,RedirectAttributes attr){
        return "login";
    }

    @RequestMapping("/login.do")
    public String login(User user, Model model, RedirectAttributes attr){
        User user1 = userService.findByPhone(user.getPhone());
        if(null == user1 || !user1.getPassword().equals(user.getPassword())){
            attr.addFlashAttribute("msg","用户名或密码错误！");
            return "redirect:/toLogin.do";
        }
        model.addAttribute("user",user1);
        return "redirect:/index.do";
    }
}
