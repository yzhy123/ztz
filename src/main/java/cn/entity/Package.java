package cn.entity;

public class Package {
    private Integer id;
    private String bplace;  //出发地
    private String eplace;  //目的地
    private Integer planeid;
    private Integer trainid;
    private String hotel;
    private Integer totaldays;  //总天数
    private double price;   //总人数
    private Integer left;       //套餐余量
    private Integer status;     //套餐状态  0：下架  1：在售

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

    public Integer getPlaneid() {
        return planeid;
    }

    public void setPlaneid(Integer planeid) {
        this.planeid = planeid;
    }

    public Integer getTrainid() {
        return trainid;
    }

    public void setTrainid(Integer trainid) {
        this.trainid = trainid;
    }

    public String getHotel() {
        return hotel;
    }

    public void setHotel(String hotel) {
        this.hotel = hotel;
    }

    public Integer getTotaldays() {
        return totaldays;
    }

    public void setTotaldays(Integer totaldays) {
        this.totaldays = totaldays;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public Integer getLeft() {
        return left;
    }

    public void setLeft(Integer left) {
        this.left = left;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }
}
