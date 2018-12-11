package cn.entity;

public class City {
    private Integer id;
    private String cityName;
    private Integer pvc_id;   //省id

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCityName() {
        return cityName;
    }

    public void setCityName(String cityName) {
        this.cityName = cityName;
    }

    public Integer getPvc_id() {
        return pvc_id;
    }

    public void setPvc_id(Integer pvc_id) {
        this.pvc_id = pvc_id;
    }
}
