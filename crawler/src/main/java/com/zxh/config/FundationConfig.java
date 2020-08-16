package com.zxh.config;

import java.text.SimpleDateFormat;
import java.util.Date;

public class FundationConfig {

    public static String ORIGN_URL = "http://fund.eastmoney.com/f10/F10DataApi.aspx?";

    private static SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");


    public String code;

    public String type = "lsjz";

    public Integer page = 1;

    public Integer per = 100;

    public Date sdate;

    public Date edate;

    public FundationConfig() {
        super();
    }

    public FundationConfig(String code) {
        this.code = code;
    }


    public String getUrl(Integer page){
        return ORIGN_URL + "type=" + type + "&code=" + code + "&page=" + (page != null ? page : this.page) + "&per=" + per + "&sdate=" + (sdate == null ? "" : sdf.format(sdate)) + "&edate=" + (edate == null ? "" : sdf.format(edate));
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public Integer getPage() {
        return page;
    }

    public void setPage(Integer page) {
        this.page = page;
    }

    public Integer getPer() {
        return per;
    }

    public void setPer(Integer per) {
        this.per = per;
    }

    public Date getSdate() {
        return sdate;
    }

    public void setSdate(Date sdate) {
        this.sdate = sdate;
    }

    public Date getEdate() {
        return edate;
    }

    public void setEdate(Date edate) {
        this.edate = edate;
    }
}
