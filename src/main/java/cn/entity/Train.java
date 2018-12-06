package cn.entity;

import java.util.Date;

public class Train {
    private Integer id;
    private String bplace;
    private String eplace;
    private double price;
    private Date btime;
    private Date etime;

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

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public Date getBtime() {
        return btime;
    }

    public void setBtime(Date btime) {
        this.btime = btime;
    }

    public Date getEtime() {
        return etime;
    }

    public void setEtime(Date etime) {
        this.etime = etime;
    }
}
