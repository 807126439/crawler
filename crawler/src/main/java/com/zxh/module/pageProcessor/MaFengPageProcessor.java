package com.zxh.module.pageProcessor;

import com.zxh.config.MafengConfig;
import com.zxh.entity.MafengListAjax;
import com.zxh.utils.RedisUtil;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import us.codecraft.webmagic.Page;
import us.codecraft.webmagic.Site;
import us.codecraft.webmagic.processor.PageProcessor;
import us.codecraft.webmagic.selector.Html;

import java.util.List;

@Component
public class MaFengPageProcessor implements PageProcessor {

    @Autowired
    private RedisUtil redisUtil;

    // 部分一：抓取网站的相关配置，包括编码、抓取间隔、重试次数等
    private Site site = Site.me().setRetryTimes(3).setSleepTime(10000).setUserAgent("Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

    @Override
    public void process(Page page) {
        //处理列表内容
        String lastUrl = page.getUrl().toString();
        Integer nextOffset;
        String pageId;
        if(page.getUrl().regex("^http://www.mafengwo.cn/together/travel/more").match()){
            //下一列表
            if ( (nextOffset = MafengConfig.getCurrOffset())!=null){
                lastUrl = lastUrl.replaceAll("&offset=[0-9]*","");
                lastUrl+="&offset="+ nextOffset;
                page.addTargetRequest(lastUrl);
            }
            //列表内的地址
            page.getHtml();
            MafengListAjax result =  page.getJson().toObject(MafengListAjax.class);
            Html listHtml = new Html(result.getData().get(0).get("html"));
            Document doc = listHtml.getDocument();
            List<Element> elementList = doc.select(".item");
            for(Element e:elementList){
                Elements maleElement = e.getElementsByClass("male");
                String url = e.child(0).attr("href");
                pageId = url.split("detail/")[1].split(".html")[0];
                //使用redis去重
                if(redisUtil.sSet("mafeng_list",pageId)==1){
                    page.addTargetRequest(url+"?male="+(maleElement.size()>0?0:1));
                }
            }
        }else{
            //收集信息
            page.putField("url",page.getUrl().get());
            page.putField("male",page.getUrl().get().split("male=")[1]);
            page.putField("name",page.getHtml().xpath("//a[@class='name']/text(0)"));
            page.putField("title",page.getHtml().xpath("//div[@class='title']/text(0)"));
            page.putField("startDate",page.getHtml().xpath("//div[@class='summary']/ul/li[1]/span/text(0)"));
            page.putField("duration",page.getHtml().xpath("//div[@class='summary']/ul/li[2]/span/text(0)"));
            page.putField("destination",page.getHtml().xpath("//div[@class='summary']/ul/li[3]/span/text(0)"));
            page.putField("leaveFrom",page.getHtml().xpath("//div[@class='summary']/ul/li[4]/span/text(0)"));
            page.putField("introduction",page.getHtml().xpath("//div[@class='desc _j_description']"));
            page.putField("pageId",page.getUrl().get().split("detail/")[1].split(".html")[0]);

            page.putField("browsed",page.getHtml().xpath("//div[@class='total']/span[1]/text(0)"));
            page.putField("sign",page.getHtml().xpath("//div[@class='total']/span[2]/text(0)"));
            page.putField("attention",Integer.parseInt(page.getHtml().xpath("//div[@class='total']/span[2]/text(0)").toString())+Integer.parseInt(page.getHtml().xpath("//div[@class='total']/span[3]/text(0)").toString()));

        }

    }

    @Override
    public Site getSite() {
        return site;
    }
}
