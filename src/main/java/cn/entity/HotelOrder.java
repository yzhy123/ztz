package cn.entity;

import org.apache.ibatis.annotations.Param;

import java.util.Date;

public class HotelOrder {
    private Integer id;
    private String ho_name;
    private String ho_tel;
    private String ho_idCard;
    private Date arriveTime;
    private Date leaveTime;
    private double ho_price;
    private String type;                //房间类型


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getHo_name() {
        return ho_name;
    }

    public void setHo_name(String ho_name) {
        this.ho_name = ho_name;
    }

    public String getHo_tel() {
        return ho_tel;
    }

    public void setHo_tel(String ho_tel) {
        this.ho_tel = ho_tel;
    }

    public String getHo_idCard() {
        return ho_idCard;
    }

    public void setHo_idCard(String ho_idCard) {
        this.ho_idCard = ho_idCard;
    }

    public Date getArriveTime() {
        return arriveTime;
    }

    public void setArriveTime(Date arriveTime) {
        this.arriveTime = arriveTime;
    }

    public Date getLeaveTime() {
        return leaveTime;
    }

    public void setLeaveTime(Date leaveTime) {
        this.leaveTime = leaveTime;
    }

    public double getHo_price() {
        return ho_price;
    }

    public void setHo_price(double ho_price) {
        this.ho_price = ho_price;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }
}
