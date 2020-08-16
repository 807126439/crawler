package com.zxh.module.pipeline;

import com.google.gson.Gson;
import com.zxh.model.FundationRecord;
import com.zxh.utils.RabbitMQSender;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;
import us.codecraft.webmagic.ResultItems;
import us.codecraft.webmagic.Task;
import us.codecraft.webmagic.pipeline.Pipeline;

import java.util.List;

@Component
public class FundationPipline implements Pipeline {

    @Autowired
    public RabbitMQSender rabbitMQSender;

    @Value("${fundationRecord-queue-name}")
    public String fundationQueue;

    @Override
    public void process(ResultItems resultItems, Task task) {
        Gson gson = new Gson();
        List<FundationRecord> records = resultItems.get("records");
        if(records!=null&&records.size()>0){
            for (FundationRecord record : records) {
                rabbitMQSender.send(fundationQueue, gson.toJson(record, FundationRecord.class));
            }
        }
    }
}
