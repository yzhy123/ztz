package cn.mapper;

import cn.entity.B_User;
import cn.entity.User;
import org.apache.ibatis.annotations.Param;

import java.util.Set;

public interface B_UserMapper {

    //通过用户名查找用户
    public B_User findByName(@Param("name") String name);

    //通过用户ID找用户权限
    public Set<String> findRoleById(@Param("id") Integer id);

    //根据权限ID找资源
    public Set<String> findPermissionByRoleID(@Param("id")Integer roleId);
}
