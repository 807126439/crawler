package com.zxh.controller;

import com.google.common.util.concurrent.ThreadFactoryBuilder;
import com.zxh.common.AjaxJson;
import com.zxh.config.FundationConfig;
import com.zxh.config.MafengConfig;
import com.zxh.config.NiukeConfig;
import com.zxh.module.pageProcessor.FundationProcessor;
import com.zxh.module.pageProcessor.MaFengPageProcessor;
import com.zxh.module.pageProcessor.NiukeProcessor;
import com.zxh.module.pipeline.FundationPipline;
import com.zxh.module.pipeline.MafengPipline;
import com.zxh.module.pipeline.NiukePipline;
import com.zxh.utils.RedisUtil;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import us.codecraft.webmagic.Spider;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Set;
import java.util.concurrent.*;

@Controller
//@EnableScheduling
public class CrawlerController {

    private static ThreadFactory namedThreadFactory = new ThreadFactoryBuilder().setNameFormat("thread-call-runner-%d").build();
    private static ExecutorService executorService = new ThreadPoolExecutor(2,3,0L, TimeUnit.MILLISECONDS,new LinkedBlockingQueue<Runnable>(),namedThreadFactory);
    @Autowired
    public MafengPipline mafengPipline;
    @Autowired
    public MaFengPageProcessor maFengPageProcessor;
    @Autowired
    public FundationPipline fundationPipline;
    @Autowired
    public FundationProcessor fundationProcessor;
    @Autowired
    public NiukeProcessor niukeProcessor;
    @Autowired
    public NiukePipline niukePipline;
    @Autowired
    private RedisUtil redisUtil;

    @RequestMapping("/startNiukeCrawl")
    @ResponseBody
    public String startNiukeCrawl(){
        Runnable runnable = new Runnable() {
            @Override
            public void run() {
                Spider spider = (Spider.create(niukeProcessor).addUrl(NiukeConfig.ORIGN_URL).addPipeline(niukePipline));
                spider.thread(1).run();
            }
        };
        executorService.submit(runnable);
        return "Crawl started";
    }

    @RequestMapping("/startMafengCrawl")
    @ResponseBody
    public String startMafengCrawl(){
        Runnable runnable = new Runnable() {
            @Override
            public void run() {
                Spider spider = (Spider.create(maFengPageProcessor).addUrl(MafengConfig.ORIGN_URL).addPipeline(mafengPipline));
                spider.thread(1).run();
            }
        };
        executorService.submit(runnable);
        return "Crawl started";
    }

    @RequestMapping("/startFundationCrawl")
    @ResponseBody
    public AjaxJson startFundationCrawl(@RequestParam(required = true) String code,String sdate,String edate) throws ParseException {
        FundationConfig fundationConfig = new FundationConfig(code);
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        if(StringUtils.isNotBlank(sdate)){
            fundationConfig.setSdate(sdf.parse(sdate));
        }
        if(StringUtils.isNotBlank(edate)){
            fundationConfig.setEdate(sdf.parse(edate));
        }
        //将code储存进redis,定时更新并且防止重复抓取
        if (redisUtil.sHasKey("codes", code)) {
            return new AjaxJson("该编号已抓取",AjaxJson.error);
        } else {
            redisUtil.sSet("codes", code);
            Spider spider = (Spider.create(fundationProcessor).addUrl(fundationConfig.getUrl(1)).addPipeline(fundationPipline));
            spider.thread(1).run();
            return new AjaxJson("Crawl started",AjaxJson.success);
        }
    }

    @RequestMapping("/delCache")
    @ResponseBody
    public String delCache(){
        redisUtil.del("codes");
        return "Cache deleted";
    }

    @RequestMapping("/delFundation")
    @ResponseBody
    public String delFundation(@RequestParam(required = true) String code) {
        redisUtil.setRemove("codes", code);
        return "Del success";
    }

//    @Scheduled(cron = "0 0 9 * * ?")
    public void scheduledCrawl(){
        Spider spider = (Spider.create(maFengPageProcessor).addUrl(MafengConfig.ORIGN_URL).addPipeline(mafengPipline));
        spider.thread(1).run();
    }

//    @Scheduled(cron = "0 0 9 * * ?")
    public void scheduledFundationCrawl() {
        //获取列表
        Set<Object> codes = redisUtil.sGet("codes");
        String[] urlList = new String[codes.size()];
        int i = 0;
        FundationConfig fundationConfig = new FundationConfig();
        fundationConfig.setEdate(new Date(System.currentTimeMillis() - 86400000));
        fundationConfig.setSdate(new Date(System.currentTimeMillis() - 86400000));
        for (Object o : codes) {
            fundationConfig.setCode(String.valueOf(o));
            urlList[i] = fundationConfig.getUrl(1);
        }

        Spider spider = (Spider.create(fundationProcessor).addUrl(urlList).addPipeline(fundationPipline));
        spider.thread(1).run();
    }
}
