package com.zxh.utils;

import java.util.HashMap;
import java.util.Map;

public class UrlUtil {
    public static class UrlEntity {
        /**
         * 基础url
         */
        public String baseUrl;
        /**
         * url参数
         */
        public Map<String, String> params;
        /**
         * 反向组合输出url
         */
        public String getUrl(){
            if(params==null||params.size()==0){
                return baseUrl;
            }else{
                StringBuilder sb =new StringBuilder();
                sb.append(baseUrl);
                for(Map.Entry e:params.entrySet()){
                    sb.append("&"+e.getKey()+"="+e.getValue());
                }
                return sb.toString().replaceFirst("&","?");
            }
        };
    }
    /**
     * 解析url
     * @param url
     * @return
     */
    public static UrlEntity parse(String url) {
        UrlEntity entity = new UrlEntity();
        if (url == null) {
            return entity;
        }
        url = url.trim();
        if (url.equals("")) {
            return entity;
        }
        String[] urlParts = url.split("\\?");
        entity.baseUrl = urlParts[0];
        //没有参数
        if (urlParts.length == 1) {
            return entity;
        }
        //有参数
        String[] params = urlParts[1].split("&");
        entity.params = new HashMap<>();
        for (String param : params) {
            String[] keyValue = param.split("=");
            if (keyValue.length == 2) {
                entity.params.put(keyValue[0], keyValue[1]);
            } else {
                entity.params.put(keyValue[0], "");
            }

        }
        return entity;
    }
}
