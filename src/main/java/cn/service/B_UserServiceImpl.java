package cn.service;

import cn.entity.B_User;
import cn.mapper.B_UserMapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.Set;

@Service
@Transactional
public class B_UserServiceImpl implements B_UserService {
    @Resource
    private B_UserMapper b_userMapper;

    public B_User findByName(String name){
        return b_userMapper.findByName(name);
    }

    public Set<String> findRoleById(Integer id) {
        return b_userMapper.findRoleById(id);
    }

    public Set<String> findPermissionByRoleID(Integer roleId) {
        return b_userMapper.findPermissionByRoleID(roleId);
    }
}
