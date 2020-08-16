package com.zxh.crawlerpersistent.dao;


import com.zxh.crawlerpersistent.model.FundationRecord;
import org.springframework.stereotype.Component;

@Component
public interface FundationRecordDao {
    int insert(FundationRecord record);

    int insertSelective(FundationRecord record);
}