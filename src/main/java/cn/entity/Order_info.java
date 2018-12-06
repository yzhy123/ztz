package cn.entity;

import java.util.Date;

public class Order_info {
    private Integer id;
    private String bplace;   //出发地
    private String eplace;   //出发地
    private Date backtime;   //返程时间
    private Date starttime;  //出发时间
    private int totalperson;//总人数
    private String callname; //联系人
    private String calltel;  //联系人姓名
    private int packageid;   //套餐id

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getBplace() {
        return bplace;
    }

    public void setBplace(String bplace) {
        this.bplace = bplace;
    }

    public String getEplace() {
        return eplace;
    }

    public void setEplace(String eplace) {
        this.eplace = eplace;
    }

    public Date getBacktime() {
        return backtime;
    }

    public void setBacktime(Date backtime) {
        this.backtime = backtime;
    }

    public Date getStarttime() {
        return starttime;
    }

    public void setStarttime(Date starttime) {
        this.starttime = starttime;
    }

    public int getTotalperson() {
        return totalperson;
    }

    public void setTotalperson(int totalperson) {
        this.totalperson = totalperson;
    }

    public String getCallname() {
        return callname;
    }

    public void setCallname(String callname) {
        this.callname = callname;
    }

    public String getCalltel() {
        return calltel;
    }

    public void setCalltel(String calltel) {
        this.calltel = calltel;
    }

    public int getPackageid() {
        return packageid;
    }

    public void setPackageid(int packageid) {
        this.packageid = packageid;
    }
}
