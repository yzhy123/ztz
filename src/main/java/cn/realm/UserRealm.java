package cn.realm;

import cn.entity.B_User;
import cn.service.B_UserService;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.util.ByteSource;

import javax.annotation.Resource;

public class UserRealm extends AuthorizingRealm {
    @Resource
    private B_UserService b_userService;
    /*为当前登录的用户授权*/
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
        //获取用户名
        String userName=(String)principals.getPrimaryPrincipal();
        SimpleAuthorizationInfo authorizationInfo=new SimpleAuthorizationInfo();
        B_User b_user = new B_User();
        b_user.setUsername(userName);
        //进行授权角色
        authorizationInfo.setRoles(b_userService.findRoleById(b_user.getId()));
        //进行授权权限
        authorizationInfo.setStringPermissions(b_userService.findPermissionByRoleID(b_user.getId()));
        return authorizationInfo;
    }

    /*认证*/
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
        // 获取用户名称
        String username = (String) token.getPrincipal();
        B_User b_user = b_userService.findByName(username);
        if (b_user == null) {
            // 用户名不存在抛出异常
            System.out.println("认证：当前登录的用户不存在");
            throw new UnknownAccountException();
            }
            String pwd = b_user.getPassword();
        System.out.println("pwd:"+pwd);
        return new SimpleAuthenticationInfo(username, pwd,getName());
    }
}
