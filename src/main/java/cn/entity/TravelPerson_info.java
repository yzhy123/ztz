package cn.entity;

public class TravelPerson_info {
    private Integer id;
    private String tname;
    private String typeofid;
    private String numofid;
    private String sex;
    private String validity;  //有效期 只针对护照
    private String phone;
    private Integer orderinfoid;


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTname() {
        return tname;
    }

    public void setTname(String tname) {
        this.tname = tname;
    }

    public String getTypeofid() {
        return typeofid;
    }

    public void setTypeofid(String typeofid) {
        this.typeofid = typeofid;
    }

    public String getNumofid() {
        return numofid;
    }

    public void setNumofid(String numofid) {
        this.numofid = numofid;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getValidity() {
        return validity;
    }

    public void setValidity(String validity) {
        this.validity = validity;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public Integer getOrderinfoid() {
        return orderinfoid;
    }

    public void setOrderinfoid(Integer orderinfoid) {
        this.orderinfoid = orderinfoid;
    }
}
