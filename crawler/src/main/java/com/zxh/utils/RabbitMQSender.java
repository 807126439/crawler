package com.zxh.utils;

import org.springframework.amqp.core.AmqpTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class RabbitMQSender {

    @Autowired
    private AmqpTemplate rabbitmqTemplate;

    //直接发送到队列
    public void send(String queueName,String content){

        this.rabbitmqTemplate.convertAndSend(queueName, content);

    }

    //交换器
    public void send(String exChange,String routinKey,String content){

        this.rabbitmqTemplate.convertAndSend(exChange, routinKey,content);

    }
}
