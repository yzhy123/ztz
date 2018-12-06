package cn.service;

import cn.entity.B_User;
import cn.entity.User;
import org.apache.ibatis.annotations.Param;

import java.util.Set;

public interface UserService {
    //根据手机号找用户
    public User findByPhone(String phone);

    //添加用户
    public void addUser(String phone,String password);
}
