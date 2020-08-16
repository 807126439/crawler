package com.spr.ftr.es.handler;


import com.google.gson.Gson;
import com.spr.ftr.es.client.ElasticsearchClientBase;
import org.elasticsearch.action.index.IndexResponse;
import org.elasticsearch.common.xcontent.XContentBuilder;
import org.elasticsearch.common.xcontent.XContentFactory;
import org.springframework.amqp.rabbit.annotation.RabbitHandler;
import org.springframework.amqp.rabbit.annotation.RabbitListener;
import org.springframework.stereotype.Service;

import java.io.IOException;
import java.util.HashMap;
import java.util.UUID;

@RabbitListener(queues = "${niuke-es-queue}")
@Service
public class NiukeHandler extends ElasticsearchClientBase {

    private  static final Gson gson = new Gson();

    private  static final String niuke_Indices="niuke_index";

    private  static final String niuke_IndexType="niuke_type";

    //监听rabbitmq任务，添加索引
    @RabbitHandler
    public void saveContentFromRabbit(String content) throws IOException {
//        CrawlerContent dto = gson.fromJson(content, CrawlerContent.class);
        HashMap<String,String>  result = gson.fromJson(content, HashMap.class);

        XContentBuilder builder = XContentFactory.jsonBuilder();

        builder.startObject();

        builder.field("title", result.get("title"));
        builder.field("question", result.get("question"));
        builder.field("code", result.get("code"));
        builder.endObject();
        IndexResponse response = getClient().prepareIndex(niuke_Indices, niuke_IndexType, UUID.randomUUID().toString()).setSource(builder).get();
        System.out.println(response.toString());

    }
}
