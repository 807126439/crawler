package com.zxh.module.pageProcessor;

import com.zxh.config.NiukeConfig;
import com.zxh.utils.RedisUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import us.codecraft.webmagic.Page;
import us.codecraft.webmagic.Site;
import us.codecraft.webmagic.processor.PageProcessor;
import us.codecraft.webmagic.selector.Selectable;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Component
public class NiukeProcessor implements PageProcessor {

    @Autowired
    private RedisUtil redisUtil;

    // 部分一：抓取网站的相关配置，包括编码、抓取间隔、重试次数等
    private Site site = Site.me().setRetryTimes(3).setSleepTime(1000).setUserAgent("Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0")
            .addCookie("cookie","NOWCODERCLINETID=14D30E22A9C60E29B0FB361143FC7BD4; grwng_uid=11ed785d-f3ce-4f97-86d2-873a8b8f2fc5; NOWCODERUID=F28EC02500A6D3D984BB745710FEFA63; t=6E72FA87F22E36431021154657D169A6; gr_user_id=bc0f93a8-41d3-4b1f-8be8-d042b0538311; c196c3667d214851b11233f5c17f99d5_gr_session_id_072a0e78-20ff-4e2c-bf59-1b237c5d79a4=true; c196c3667d214851b11233f5c17f99d5_gr_session_id=072a0e78-20ff-4e2c-bf59-1b237c5d79a4; c196c3667d214851b11233f5c17f99d5_gr_last_sent_sid_with_cs1=072a0e78-20ff-4e2c-bf59-1b237c5d79a4; c196c3667d214851b11233f5c17f99d5_gr_last_sent_cs1=8082849; c196c3667d214851b11233f5c17f99d5_gr_cs1=8082849; Hm_lvt_a808a1326b6c06c437de769d1b85b870=1583245650,1583595353,1583942201,1584844296; Hm_lpvt_a808a1326b6c06c437de769d1b85b870=1584844324; SERVERID=547d00d82311952605c62ceac64f21fd|1584844337|1584844302");

    public  Map<String,String> analiyseString(String url){
        Map<String,String> entityMap = new HashMap<>();
        String[] parts = url.split("/");
        String part2 = parts[2];
        entityMap.put("uuid",part2.substring(0,part2.indexOf("?")));

        String paramsStr = url.substring(url.indexOf("?")+1,url.length());
        String[] params =paramsStr.split("&");
        entityMap.put("tpId",params[0]);
        entityMap.put("tqId",params[1]);
        return entityMap;
    };

    @Override
    public void process(Page page) {
        //处理列表内容
        String lastUrl = page.getUrl().toString();
        Integer nextOffset;
        String pageId;
        if(page.getUrl().toString().startsWith("https://www.nowcoder.com/ta/leetcode?")){
            //下一列表
            //一级列表
            if ( (nextOffset = NiukeConfig.getCurrOffset())!=null){
                lastUrl = lastUrl.replaceAll("&page=[0-9]*","");
                lastUrl+="&page="+ nextOffset;
                page.addTargetRequest(lastUrl);
            }
            //列表内的地址
            List<Selectable> questionList = page.getHtml().xpath("//table/tbody/tr").nodes();
            List<Map<String,String>> questionUrls = new ArrayList<>();
            if(questionList!=null && !questionList.isEmpty()){
                for (int i = 1; i < questionList.size(); i++) {
                    String url = questionList.get(i).xpath("//tr/td[2]/a/@href").toString();
                    Map<String,String> entityMap = analiyseString(url);
                    questionUrls.add(entityMap);
                }
            }

            //获取排行列表
            questionUrls.forEach(k -> {
                page.addTargetRequest(NiukeConfig.RANKLIST_URL+"&"+k.get("tpId")+"&"+k.get("tqId")+"&uuid="+k.get("uuid"));
            });
//            page.addTargetRequest(NiukeConfig.RANKLIST_URL+"&"+questionUrls.get(0).get("tpId")+"&"+questionUrls.get(0).get("tqId")+"&uuid="+questionUrls.get(0).get("uuid"));


        }else if(page.getUrl().regex("^https://www.nowcoder.com/ta/leetcode/question-ranking").match()){
            List<Selectable> answlerList = page.getHtml().xpath("//table/tbody/tr").nodes();
            if(answlerList!=null && !answlerList.isEmpty()){
                String url = answlerList.get(1).xpath("//tr/td[7]/a/@href").toString();
                page.addTargetRequest(url);
                url = answlerList.get(2).xpath("//tr/td[7]/a/@href").toString();
                page.addTargetRequest(url);
            }


            //收集信息

        }else{
            //获取答案内容
            String title = page.getHtml().xpath("//span[@class='crumbs-end js-question-title']/text(0)").toString();
            String question = page.getHtml().xpath("//div[@class='subject-question']").toString();
            String code = page.getHtml().xpath("//pre[@class='prettyprint lang-java']/text(0)").toString();

            System.out.println("title="+title);
            System.out.println("question="+question);
            System.out.println("code="+code);

            page.putField("title",title);
            page.putField("question",question);
            page.putField("code",code);

        }

    }

    @Override
    public Site getSite() {
        return site;
    }
}
