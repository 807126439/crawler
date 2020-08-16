package com.zxh.service;

import com.zxh.config.FundationConfig;
import com.zxh.config.MafengConfig;
import com.zxh.module.pageProcessor.FundationProcessor;
import com.zxh.module.pageProcessor.MaFengPageProcessor;
import com.zxh.module.pipeline.MafengPipline;
import us.codecraft.webmagic.Spider;

public class CrawlerStrater {

//    public void startCrawler(){
//        Spider.create(new GithubRepoPageProcessor())
//                //从https://github.com/code4craft开始抓
//                .addUrl("https://github.com/code4craft")
//                //设置Scheduler，使用Redis来管理URL队列
//                .setScheduler(new RedisScheduler("localhost"))
//                //设置Pipeline，将结果以json方式保存到文件
//                .addPipeline(new JsonFilePipeline("D:\\data\\webmagic"))
//                //开启5个线程同时执行
//                .thread(5)
//                //启动爬虫
//                .run();
//    }

    public static void main(String[] args) {
        Spider spider = (Spider.create(new MaFengPageProcessor()).addUrl(MafengConfig.ORIGN_URL).addPipeline(new MafengPipline()));
//        Spider spider = (Spider.create(new FundationProcessor()).addUrl(FundationConfig.ORIGN_URL));
        spider.thread(1).run();
    }
}
