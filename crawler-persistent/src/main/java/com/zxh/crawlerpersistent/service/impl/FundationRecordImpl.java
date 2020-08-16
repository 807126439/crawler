package com.zxh.crawlerpersistent.service.impl;

import com.google.gson.Gson;
import com.zxh.crawlerpersistent.dao.FundationRecordDao;
import com.zxh.crawlerpersistent.model.FundationRecord;
import com.zxh.crawlerpersistent.service.FundationRecordService;
import org.springframework.amqp.rabbit.annotation.RabbitHandler;
import org.springframework.amqp.rabbit.annotation.RabbitListener;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service("fundationRecordService")
@Transactional
@RabbitListener(queues = "${fundationRecord-queue-name}")
public class FundationRecordImpl implements FundationRecordService {

    private  static final Gson gson = new Gson();

    @Autowired
    public FundationRecordDao fundationRecordDao;


    public void saveContent(FundationRecord fundationRecord) {
        this.fundationRecordDao.insert(fundationRecord);
    }

    @RabbitHandler
    public void saveContentFromRabbit(String content) {
        FundationRecord fundationRecord = gson.fromJson(content, FundationRecord.class);
        this.fundationRecordDao.insert(fundationRecord);
    }
}
