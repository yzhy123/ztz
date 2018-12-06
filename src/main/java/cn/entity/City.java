package cn.entity;

public class City {
    private Integer id;
    private String c_name;
    private Integer pvc_id;   //省id

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getC_name() {
        return c_name;
    }

    public void setC_name(String c_name) {
        this.c_name = c_name;
    }

    public Integer getPvc_id() {
        return pvc_id;
    }

    public void setPvc_id(Integer pvc_id) {
        this.pvc_id = pvc_id;
    }
}
