package cn.entity;

public class Insurance {
    private Integer id;   //保险
    private String i_name;
    private double i_price;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getI_name() {
        return i_name;
    }

    public void setI_name(String i_name) {
        this.i_name = i_name;
    }

    public double getI_price() {
        return i_price;
    }

    public void setI_price(double i_price) {
        this.i_price = i_price;
    }
}
