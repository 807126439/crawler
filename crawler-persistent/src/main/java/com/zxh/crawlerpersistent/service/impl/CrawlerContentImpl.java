package com.zxh.crawlerpersistent.service.impl;

import com.google.gson.Gson;
import com.zxh.crawlerpersistent.core.common.service.BaseService;
import com.zxh.crawlerpersistent.dao.CrawlerContentDao;
import com.zxh.dubbo.common.bean.DataQuery;
import com.zxh.dubbo.model.CrawlerContent;
import com.zxh.dubbo.service.CrawlerContentService;
import org.springframework.amqp.rabbit.annotation.RabbitHandler;
import org.springframework.amqp.rabbit.annotation.RabbitListener;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service("crawlerContentService")
@Transactional
@RabbitListener(queues = "${persistent-queue-name}")
public class CrawlerContentImpl extends BaseService implements CrawlerContentService {
    private final String mDataProp = "mDataProp_";

    public static Gson gson = new Gson();

    @Autowired
    public CrawlerContentDao crawlerContentDao;

    @Override
    public void saveContent(CrawlerContent crawlerContent) {
        this.crawlerContentDao.insert(crawlerContent);
    }

    @RabbitHandler
    public void saveContentFromRabbit(String content) {
        CrawlerContent crawlerContent = gson.fromJson(content, CrawlerContent.class);
        try {
            this.crawlerContentDao.insert(crawlerContent);
        }catch (Exception e){
            e.printStackTrace();
            System.out.println("保存失败");
        }


    }

//    @Override
//    public Map<String, Object> getContentByPage(HttpServletRequest request, DataQuery dq) {
//        this.wrapTableQueryParams(request, dq);
//        Page<CrawlerContent> pageResult = this.searchByPage();
//        return this.handlePageReult(pageResult);
//    }

    @Override
    public List<CrawlerContent> searchByPage(DataQuery dq) {
        Long recTotal = this.crawlerContentDao.countByCondition(dq.assemblePageOffset().getQueryMap());
        dq.assembleOrderInfo(CrawlerContent.class, "");
        List<CrawlerContent> userlist = this.crawlerContentDao.selectListByCondition(dq.getQueryMap());

        //DataQuery.wrapTableNo2(userlist, dq.getStartQuery());
//        new Page<CrawlerContent>(dq.getCurrentPage(), dq.getPageSize(), userlist, recTotal);
        return userlist;
    }

}
