package com.zxh.crawlerdisplay.web.fundation.dto;


import com.zxh.crawlerdisplay.core.annotations.DbField;

import java.util.Date;

public class FundationDTO {

    public static final short CRAWL_STATUS_ORIGINAL = 0;
    public static final short CRAWL_STATUS_BEGIN = 1;
    public static final short CRAWL_STATUS_FINISH = 2;
    public static final short CRAWL_STATUS_FAIL = 3;

    private int id;
    private int code;
    private String fundationName;
    private short crawlStatus;
    private Date gmtCreate;
    private Date gmtModify;


    public FundationDTO() {
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