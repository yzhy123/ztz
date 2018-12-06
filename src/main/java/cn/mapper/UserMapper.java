package cn.mapper;

import cn.entity.User;
import org.apache.ibatis.annotations.Param;

public interface UserMapper {
    //根据手机号找用户
    public User findByPhone(@Param("phone")String phone);

    //添加用户
    public void addUser(@Param("phone")String phone,@Param("password")String password);


}
