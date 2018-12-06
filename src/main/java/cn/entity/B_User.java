package cn.entity;

import java.util.List;
import java.util.Set;

public class B_User {
    private Integer id;
    private String username;
    private String password;
    private Integer roleId;

    public B_User() {
    }

    public B_User(Integer id, String username, String password) {
        this.id = id;
        this.username = username;
        this.password = password;
    }


    public Integer getRoleId() {
        return roleId;
    }

    public void setRoleId(Integer roleId) {
        this.roleId = roleId;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
