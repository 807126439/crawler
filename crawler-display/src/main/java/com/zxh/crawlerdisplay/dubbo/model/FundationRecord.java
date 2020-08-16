package com.zxh.crawlerdisplay.dubbo.model;

import java.util.Date;

public class FundationRecord {
    private Integer id;

    private Integer code;

    private Date date;

    private Float netValue;

    private Float accumulatedNet;

    private Float growthRate;

    private Integer buyStatus;

    private Integer sellStatus;

    private Float distribution;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getCode() {
        return code;
    }

    public void setCode(Integer code) {
        this.code = code;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public Float getNetValue() {
        return netValue;
    }

    public void setNetValue(Float netValue) {
        this.netValue = netValue;
    }

    public Float getAccumulatedNet() {
        return accumulatedNet;
    }

    public void setAccumulatedNet(Float accumulatedNet) {
        this.accumulatedNet = accumulatedNet;
    }

    public Float getGrowthRate() {
        return growthRate;
    }

    public void setGrowthRate(Float growthRate) {
        this.growthRate = growthRate;
    }

    public Integer getBuyStatus() {
        return buyStatus;
    }

    public void setBuyStatus(Integer buyStatus) {
        this.buyStatus = buyStatus;
    }

    public Integer getSellStatus() {
        return sellStatus;
    }

    public void setSellStatus(Integer sellStatus) {
        this.sellStatus = sellStatus;
    }

    public Float getDistribution() {
        return distribution;
    }

    public void setDistribution(Float distribution) {
        this.distribution = distribution;
    }
}