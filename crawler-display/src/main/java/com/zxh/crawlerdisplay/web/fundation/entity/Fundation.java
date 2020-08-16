package com.zxh.crawlerdisplay.web.fundation.entity;


import com.zxh.crawlerdisplay.core.annotations.DbField;

import java.util.Date;

public class Fundation {

    private int id;
    private int code;
    private String fundationName;
    private short crawlStatus;
    private Date gmtCreate;
    private Date gmtModify;


    public Fundation() {
    }

    @DbField(name = "crawl_status")
    public short getCrawlStatus() {
        return crawlStatus;
    }

    public void setCrawlStatus(short crawlStatus) {
        this.crawlStatus = crawlStatus;
    }

    @DbField(name = "id")
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @DbField(name = "code")
    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }

    @DbField(name = "fundation_name")
    public String getFundationName() {
        return fundationName;
    }

    public void setFundationName(String fundationName) {
        this.fundationName = fundationName;
    }

    @DbField(name = "gmt_create")
    public Date getGmtCreate() {
        return gmtCreate;
    }

    public void setGmtCreate(Date gmtCreate) {
        this.gmtCreate = gmtCreate;
    }

    @DbField(name = "gmt_modify")
    public Date getGmtModify() {
        return gmtModify;
    }

    public void setGmtModify(Date gmtModify) {
        this.gmtModify = gmtModify;
    }

}