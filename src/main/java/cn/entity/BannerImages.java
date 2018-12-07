package cn.entity;

public class BannerImages {
    private Integer id;
    private String tname;
    private String turl;

    public BannerImages() {
    }

    public BannerImages(Integer id, String tname, String turl) {
        this.id = id;
        this.tname = tname;
        this.turl = turl;
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
}
