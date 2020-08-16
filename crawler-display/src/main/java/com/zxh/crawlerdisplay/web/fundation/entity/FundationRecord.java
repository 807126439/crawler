package com.zxh.crawlerdisplay.web.fundation.entity;


import com.zxh.crawlerdisplay.core.annotations.DbField;

import java.util.Date;

public class FundationRecord {
    private int id;
    private int code;
    private Date date;
    private float netValue;
    private float accumulatedNet;
    private float growthRate;
    private int buyStatus;
    private int sellStatus;
    private float distribution;

    public FundationRecord() {
    }

    @DbField(name = "id" ,show = false)
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

    @DbField(name = "date")
    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    @DbField(name = "net_value")
    public float getNetValue() {
        return netValue;
    }

    public void setNetValue(float netValue) {
        this.netValue = netValue;
    }

    @DbField(name = "accumulated_net")
    public float getAccumulatedNet() {
        return accumulatedNet;
    }

    public void setAccumulatedNet(float accumulatedNet) {
        this.accumulatedNet = accumulatedNet;
    }

    @DbField(name = "growth_rate")
    public float getGrowthRate() {
        return growthRate;
    }

    public void setGrowthRate(float growthRate) {
        this.growthRate = growthRate;
    }

    @DbField(name = "buy_status")
    public int getBuyStatus() {
        return buyStatus;
    }

    public void setBuyStatus(int buyStatus) {
        this.buyStatus = buyStatus;
    }

    @DbField(name = "sell_status")
    public int getSellStatus() {
        return sellStatus;
    }

    public void setSellStatus(int sellStatus) {
        this.sellStatus = sellStatus;
    }

    @DbField(name = "distribution")
    public float getDistribution() {
        return distribution;
    }

    public void setDistribution(float distribution) {
        this.distribution = distribution;
    }

}