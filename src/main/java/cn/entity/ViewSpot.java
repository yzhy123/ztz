package cn.entity;

public class ViewSpot {
    private Integer id;
    private String v_address;
    private String v_name;
    private String v_des;
    private String v_price;
    private Integer searchSum;
    private Integer p_id;
    private String img_url;//景点图片地址
    private  Integer type;//景点类型0普通1海岛


    public ViewSpot() {
    }

    public ViewSpot(Integer id, String v_address, String v_name, String v_des, String v_price, Integer searchSum, Integer p_id, String img_url, Integer type) {
        this.id = id;
        this.v_address = v_address;
        this.v_name = v_name;
        this.v_des = v_des;
        this.v_price = v_price;
        this.searchSum = searchSum;
        this.p_id = p_id;
        this.img_url = img_url;
        this.type = type;
    }

    public String getImg_url() {
        return img_url;
    }

    public void setImg_url(String img_url) {
        this.img_url = img_url;
    }

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getV_address() {
        return v_address;
    }

    public void setV_address(String v_address) {
        this.v_address = v_address;
    }

    public Integer getSearchSum() {
        return searchSum;
    }

    public void setSearchSum(Integer searchSum) {
        this.searchSum = searchSum;
    }

    public Integer getP_id() {
        return p_id;
    }

    public void setP_id(Integer p_id) {
        this.p_id = p_id;
    }

    public String getV_name() {
        return v_name;
    }

    public void setV_name(String v_name) {
        this.v_name = v_name;
    }

    public String getV_des() {
        return v_des;
    }

    public void setV_des(String v_des) {
        this.v_des = v_des;
    }

    public String getV_price() {
        return v_price;
    }

    public void setV_price(String v_price) {
        this.v_price = v_price;
    }
}
