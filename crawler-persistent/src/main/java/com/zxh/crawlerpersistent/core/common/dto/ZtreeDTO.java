package com.zxh.crawlerpersistent.core.common.dto;

public class ZtreeDTO {

    private String id;

    private String pId;

    private String name;

    private Boolean isParent;

    private String icon;

    private Short flag;

    public ZtreeDTO(String id, String pId, String name) {
        super();
        this.id = id;
        this.pId = pId;
        this.name = name;
    }

    public ZtreeDTO() {
        super();
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getpId() {
        return pId;
    }

    public void setpId(String pId) {
        this.pId = pId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Boolean getIsParent() {
        return isParent;
    }

    public void setIsParent(Boolean isParent) {
        this.isParent = isParent;
    }

    public Short getFlag() {
        return flag;
    }

    public void setFlag(Short flag) {
        this.flag = flag;
    }

    public String getIcon() {
        return icon;
    }

    public void setIcon(String icon) {
        this.icon = icon;
    }

}
