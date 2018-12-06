package cn.service;

import cn.entity.B_User;
import cn.entity.User;
import cn.mapper.B_UserMapper;
import cn.mapper.UserMapper;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.Set;

@Service
@Transactional
public class UserServiceImpl implements UserService {
    @Resource
    private UserMapper userMapper;

    public User findByPhone(String phone) {
        return userMapper.findByPhone(phone);
    }
    public void addUser(String phone,String password){
        userMapper.addUser(phone,password);
    }
}
