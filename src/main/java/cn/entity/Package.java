package cn.entity;

public class Package {
    private Integer id;
    private String bplace;  //出发地
    private String eplace;  //目的地
    private Integer planeid;
    private Integer trainid;
    private Integer hotelid;
    private Integer totaldays;  //总天数
    private double price;   //总人数
    private Integer left;       //套餐余量
    private Integer status;     //套餐状态  0：下架  1：在售
    private String title;//套餐标题
    private String package_dec;//套餐描述
    private String tip;//套餐标题下的小提示
    private String img_url;//套餐的图片地址
    private Integer p_pay_sum;//付款的人数
    private Integer p_comment_sum;//点评过的人数

    public Package() {
    }

    public Package(Integer id, String bplace, String eplace, Integer planeid, Integer trainid, Integer hotelid, Integer totaldays, double price, Integer left, Integer status, String title, String package_dec, String tip, String img_url, Integer p_pay_sum, Integer p_comment_sum) {
        this.id = id;
        this.bplace = bplace;
        this.eplace = eplace;
        this.planeid = planeid;
        this.trainid = trainid;
        this.hotelid = hotelid;
        this.totaldays = totaldays;
        this.price = price;
        this.left = left;
        this.status = status;
        this.title = title;
        this.package_dec = package_dec;
        this.tip = tip;
        this.img_url = img_url;
        this.p_pay_sum = p_pay_sum;
        this.p_comment_sum = p_comment_sum;
    }

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

    public Integer getHotelid() {
        return hotelid;
    }

    public void setHotelid(Integer hotelid) {
        this.hotelid = hotelid;
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

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getPackage_dec() {
        return package_dec;
    }

    public void setPackage_dec(String package_dec) {
        this.package_dec = package_dec;
    }

    public String getTip() {
        return tip;
    }

    public void setTip(String tip) {
        this.tip = tip;
    }

    public String getImg_url() {
        return img_url;
    }

    public void setImg_url(String img_url) {
        this.img_url = img_url;
    }

    public Integer getP_pay_sum() {
        return p_pay_sum;
    }

    public void setP_pay_sum(Integer p_pay_sum) {
        this.p_pay_sum = p_pay_sum;
    }

    public Integer getP_comment_sum() {
        return p_comment_sum;
    }

    public void setP_comment_sum(Integer p_comment_sum) {
        this.p_comment_sum = p_comment_sum;
    }
}
