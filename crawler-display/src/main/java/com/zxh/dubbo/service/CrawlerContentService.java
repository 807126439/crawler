package com.zxh.dubbo.service;


import com.zxh.dubbo.common.bean.DataQuery;
import com.zxh.dubbo.model.CrawlerContent;

import java.util.List;

public interface CrawlerContentService {

    void saveContent(CrawlerContent crawlerContent);

//    Map<String, Object> getContentByPage(HttpServletRequest request, DataQuery dq);

    List<CrawlerContent> searchByPage(DataQuery dq);
}
