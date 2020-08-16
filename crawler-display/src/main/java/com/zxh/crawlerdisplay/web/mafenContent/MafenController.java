package com.zxh.crawlerdisplay.web.mafenContent;

import com.zxh.crawlerdisplay.core.common.bean.AjaxJson;
import com.zxh.crawlerdisplay.core.common.controller.BaseController;
import com.zxh.crawlerdisplay.dubbo.service.impl.CrawlerContentDubboConsumerService;
import com.zxh.dubbo.common.bean.DataQuery;
import com.zxh.dubbo.model.CrawlerContent;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@Scope("prototype")
@RequestMapping("mafenController")
public class MafenController extends BaseController {

    @Autowired
    public CrawlerContentDubboConsumerService crawlerContentDubboConsumerService;

    @RequestMapping("getPageDate")
    @ResponseBody
    public List<CrawlerContent> getPageDate(DataQuery dq) {
        return crawlerContentDubboConsumerService.searchByPage(dq);
    }


    @RequestMapping("newestTop20")
    @ResponseBody
    public AjaxJson newestTop20() {
        DataQuery dq = new DataQuery();
        dq.setPageSize(20);
        dq.setSidx("gmtCreate");
        dq.setSord("desc");
        return new AjaxJson(this.OPER_SUCCESS_MESSAGE,AjaxJson.success,crawlerContentDubboConsumerService.searchByPage(dq));
    }

    @RequestMapping("hotestTop20")
    @ResponseBody
    public AjaxJson hotestTop20() {
        DataQuery dq = new DataQuery();
        dq.setPageSize(20);
        dq.setSidx("attention");
        dq.setSord("desc");
        return new AjaxJson(this.OPER_SUCCESS_MESSAGE,AjaxJson.success,crawlerContentDubboConsumerService.searchByPage(dq));
    }


}
