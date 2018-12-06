package cn.service;

import cn.entity.B_User;
import org.apache.ibatis.annotations.Param;

import java.util.Set;

public interface B_UserService {
    //通过用户名密码查找用户
    public B_User findByName(String name);

    //通过用户ID找用户权限
    public Set<String> findRoleById(Integer id);

    //根据权限ID找资源
    public Set<String> findPermissionByRoleID(Integer roleId);
}
