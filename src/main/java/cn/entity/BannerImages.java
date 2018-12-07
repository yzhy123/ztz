package cn.entity;

public class BannerImages {
    private Integer id;
    private String tname;
    private String turl;
    private String ia;//a标签描述性文字

    public BannerImages() {
    }

    public BannerImages(Integer id, String tname, String turl, String ia) {
        this.id = id;
        this.tname = tname;
        this.turl = turl;
        this.ia = ia;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTname() {
        return tname;
    }

    public void setTname(String tname) {
        this.tname = tname;
    }

    public String getTurl() {
        return turl;
    }

    public void setTurl(String turl) {
        this.turl = turl;
    }

    public String getIa() {
        return ia;
    }

    public void setIa(String ia) {
        this.ia = ia;
    }
}
