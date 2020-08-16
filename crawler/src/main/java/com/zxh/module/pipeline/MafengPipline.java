package com.zxh.module.pipeline;

import com.google.gson.Gson;
import com.zxh.model.CrawlerContent;
import com.zxh.utils.RabbitMQSender;
import org.springframework.amqp.rabbit.core.RabbitAdmin;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;
import us.codecraft.webmagic.ResultItems;
import us.codecraft.webmagic.Task;
import us.codecraft.webmagic.pipeline.Pipeline;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

@Component
public class MafengPipline implements Pipeline {

    @Autowired
    public RabbitMQSender rabbitMQSender;

    @Value("${mafeng-queue-name}")
    public String mafengQueue;
    @Autowired
    public RabbitAdmin rabbitAdmin;

    @Override
    public void process(ResultItems resultItems, Task task) {

        Gson gson = new Gson();
        if(resultItems==null||resultItems.getAll().size()==0){
            return;
        }


        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

        CrawlerContent crawlerContent = new CrawlerContent();
        crawlerContent.setUrl(resultItems.get("url").toString());
        crawlerContent.setMale(Integer.valueOf(resultItems.get("male").toString()));
        crawlerContent.setName(resultItems.get("name").toString());
        crawlerContent.setTitle(resultItems.get("title").toString());

        try {
            Date startDate = sdf.parse(resultItems.get("startDate").toString().replaceAll("出发时间：",""));
            crawlerContent.setStartdate(startDate);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        crawlerContent.setDuration(Integer.valueOf(resultItems.get("duration").toString().replaceAll("大约：","").replaceAll("天","")));
        crawlerContent.setDestination(resultItems.get("destination").toString().replaceAll("目的地：",""));
        crawlerContent.setLeavefrom(resultItems.get("leaveFrom").toString().replaceAll("出发地：",""));
        crawlerContent.setPageId(Long.valueOf(resultItems.get("pageId").toString()));
        crawlerContent.setIntroduction(resultItems.get("introduction").toString());
        crawlerContent.setGmtCreate(new Date());

        crawlerContent.setBrowsed(Integer.parseInt(resultItems.get("browsed").toString()));
        crawlerContent.setSign(Integer.parseInt(resultItems.get("sign").toString()));
        crawlerContent.setAttention(Integer.parseInt(resultItems.get("attention").toString()));

        //this.crawlerContentService.saveContent(crawlerContent);
        rabbitMQSender.send(mafengQueue,"mafeng",gson.toJson(crawlerContent));

//        System.out.println(resultItems.get("url").toString());
//        System.out.println(resultItems.get("male").toString());
//        System.out.println(resultItems.get("name").toString());
//        System.out.println(resultItems.get("title").toString());
//        System.out.println(resultItems.get("startDate").toString());
//        System.out.println(resultItems.get("duration").toString());
//        System.out.println(resultItems.get("destination").toString());
//        System.out.println(resultItems.get("leaveFrom").toString());
//        System.out.println(resultItems.get("pageId").toString());
        //introduction

    }
}
