package com.zxh.crawlerpersistent.core.common.dto;


import com.zxh.crawlerpersistent.core.annotations.DbField;

import java.util.Date;

public class UUIDDTO {

    private String id; // 主键
    private Long sort; // 排序id
    private Date gmtCreate;
    private Date gmtModified = new Date();

    @DbField(name = "ID", text = "唯一标识id")
    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    @DbField(name = "GMT_MODIFIED", text = "更新时间")
    public Date getGmtModified() {
        return gmtModified;
    }

    public void setGmtModified(Date gmtModified) {
        this.gmtModified = gmtModified;
    }

    @DbField(name = "SORT", text = "序号")
    public Long getSort() {
        return sort;
    }

    public void setSort(Long sort) {
        this.sort = sort;
    }

    @DbField(name = "GMT_CREATE", text = "创建时间")
    public Date getGmtCreate() {
        return gmtCreate;
    }

    public void setGmtCreate(Date gmtCreate) {
        this.gmtCreate = gmtCreate;
    }

}
