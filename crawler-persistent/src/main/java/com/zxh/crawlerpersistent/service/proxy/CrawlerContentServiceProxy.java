package com.zxh.crawlerpersistent.service.proxy;

import com.alibaba.dubbo.config.annotation.Service;
import com.google.gson.Gson;
import com.zxh.crawlerpersistent.core.common.service.BaseService;
import com.zxh.crawlerpersistent.dao.CrawlerContentDao;
import com.zxh.dubbo.common.bean.DataQuery;
import com.zxh.dubbo.model.CrawlerContent;
import com.zxh.dubbo.service.CrawlerContentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
@Service
public class CrawlerContentServiceProxy extends BaseService implements CrawlerContentService {
    private final String mDataProp = "mDataProp_";

    public static Gson gson = new Gson();

    @Autowired
    public CrawlerContentDao crawlerContentDao;


    @Override
    public void saveContent(CrawlerContent crawlerContent) {

    }

    @Override
    public List<CrawlerContent> searchByPage(DataQuery dq) {
        Long recTotal = this.crawlerContentDao.countByCondition(dq.assemblePageOffset().getQueryMap());
        dq.assembleOrderInfo(CrawlerContent.class, "");
        //类没设置注解
        dq.getQueryMap().put("sidx",dq.getSidx());
        dq.getQueryMap().put("sord",dq.getSord());
        List<CrawlerContent> userlist = this.crawlerContentDao.selectListByCondition(dq.getQueryMap());

        //DataQuery.wrapTableNo2(userlist, dq.getStartQuery());
//        new Page<CrawlerContent>(dq.getCurrentPage(), dq.getPageSize(), userlist, recTotal);
        return userlist;
    }

//    @Override
//    public Map<String, Object> getContentByPage(HttpServletRequest request, DataQuery dq) {
//
//        this.wrapTableQueryParams(request, dq);
//
//        Page<CrawlerContent> pageResult = this.searchByPage(dq);
//
//        return this.handlePageReult(pageResult);
//    }
}
