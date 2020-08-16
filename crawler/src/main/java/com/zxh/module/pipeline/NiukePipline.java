package com.zxh.module.pipeline;

import com.google.gson.Gson;
import com.zxh.utils.RabbitMQSender;
import org.springframework.amqp.rabbit.core.RabbitAdmin;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;
import us.codecraft.webmagic.ResultItems;
import us.codecraft.webmagic.Task;
import us.codecraft.webmagic.pipeline.Pipeline;

import java.util.HashMap;
import java.util.Map;

@Component
public class NiukePipline implements Pipeline {

    @Autowired
    public RabbitMQSender rabbitMQSender;

    @Value("${niuke-queue-name}")
    public String niukeQueue;
    @Autowired
    public RabbitAdmin rabbitAdmin;

    @Override
    public void process(ResultItems resultItems, Task task) {

        Gson gson = new Gson();
        if(resultItems==null||resultItems.getAll().size()==0){
            return;
        }

        Map<String,String> resultMap = new HashMap<>();

        resultMap.put("title",resultItems.get("title").toString());
        resultMap.put("question",resultItems.get("question").toString());
        resultMap.put("code",resultItems.get("code").toString());

        rabbitMQSender.send(niukeQueue,"niuke",gson.toJson(resultMap));

    }
}
