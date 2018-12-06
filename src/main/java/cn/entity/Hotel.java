package cn.entity;

public class Hotel {
    private Integer id;
    private String h_address;
    private String h_name;
    private double h_price;


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getH_address() {
        return h_address;
    }

    public void setH_address(String h_address) {
        this.h_address = h_address;
    }

    public String getH_name() {
        return h_name;
    }

    public void setH_name(String h_name) {
        this.h_name = h_name;
    }



    public double getH_price() {
        return h_price;
    }

    public void setH_price(double h_price) {
        this.h_price = h_price;
    }
}
