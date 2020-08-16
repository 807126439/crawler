package com.zxh.crawlerdisplay.dubbo.service.impl;

import com.alibaba.dubbo.config.annotation.Reference;
import com.zxh.dubbo.common.bean.DataQuery;
import com.zxh.dubbo.model.CrawlerContent;
import com.zxh.dubbo.service.CrawlerContentService;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class CrawlerContentDubboConsumerService {

    @Reference(check = false)
    CrawlerContentService crawlerContentService;

    public List<CrawlerContent> searchByPage(DataQuery dq) {

        return crawlerContentService.searchByPage(dq);
    }
}
