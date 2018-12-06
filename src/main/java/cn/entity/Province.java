package cn.entity;

public class Province {
    private Integer id;
    private String pvc_name;
    private Integer c_id;
    private Integer searchSum;
    public Integer getC_id() {
        return c_id;
    }

    public void setC_id(Integer c_id) {
        this.c_id = c_id;
    }

    public Integer getSearchSum() {
        return searchSum;
    }

    public void setSearchSum(Integer searchSum) {
        this.searchSum = searchSum;
    }



    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getPvc_name() {
        return pvc_name;
    }

    public void setPvc_name(String pvc_name) {
        this.pvc_name = pvc_name;
    }
}
