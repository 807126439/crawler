package com.zxh.module.pageProcessor;

import com.zxh.model.FundationRecord;
import com.zxh.utils.UrlUtil;
import org.apache.commons.lang3.StringUtils;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.stereotype.Component;
import us.codecraft.webmagic.Page;
import us.codecraft.webmagic.Site;
import us.codecraft.webmagic.processor.PageProcessor;
import us.codecraft.webmagic.selector.Html;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

@Component
public class FundationProcessor implements PageProcessor {

    private static SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

    private Site site = Site.me().setRetryTimes(3).setSleepTime(1000).setUserAgent("Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

    @Override
    public void process(Page page) {
        String url = page.getUrl().toString();
        UrlUtil.UrlEntity urlEntity = UrlUtil.parse(url);
        String code = urlEntity.params.get("code");
        Integer pageNum = Integer.valueOf(urlEntity.params.get("page"));
        //检测结果，如不为空则页数加一再次获取
        //保存结果
        Html html = page.getHtml();
        Document doc = html.getDocument();
        Elements trs = doc.select("tbody tr");
        List<FundationRecord> records = new ArrayList<FundationRecord>();
        for (Element tr:trs){
            Elements tds =tr.select("td");
            if(tds.size()==1){
                //结束
                return;
            }
            FundationRecord fundationRecord = new FundationRecord();
            fundationRecord.setCode(Integer.valueOf(code));
            try {
                fundationRecord.setDate(sdf.parse(tds.get(0).text()));
            } catch (ParseException e) {
                e.printStackTrace();
            }
            fundationRecord.setNetValue(Float.valueOf(tds.get(1).text()));
            fundationRecord.setAccumulatedNet(Float.valueOf(tds.get(2).text()));
            if (StringUtils.isNotBlank(tds.get(3).text())) {
                fundationRecord.setGrowthRate(Float.valueOf(tds.get(3).text().replaceAll("%", "")));
            }
            fundationRecord.setBuyStatus(tds.get(4).text().equals("开放申购")?1:0);
            fundationRecord.setSellStatus(tds.get(4).text().equals("开放赎回")?1:0);
//            if(StringUtils.isNotBlank(tds.get(6).text())){
//                fundationRecord.setDistribution(Float.valueOf(tds.get(6).text()));
//                //"每份派现金0.1900元"
//            }
            records.add(fundationRecord);
        }
        //保存
        page.putField("records", records);
        //存放下一页
        urlEntity.params.put("page", String.valueOf(pageNum + 1));
        page.addTargetRequest(urlEntity.getUrl());
    }

    @Override
    public Site getSite() {
        return site;
    }
}
