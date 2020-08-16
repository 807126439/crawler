package com.zxh.crawlerpersistent.dao;

import com.zxh.dubbo.model.CrawlerContent;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.Map;

@Component
public interface CrawlerContentDao {

    int insert(CrawlerContent record);

    int insertSelective(CrawlerContent record);

    Long countByCondition(Map<String, Object> queryMap);

    List<CrawlerContent> selectListByCondition(Map<String, Object> queryMap);
}