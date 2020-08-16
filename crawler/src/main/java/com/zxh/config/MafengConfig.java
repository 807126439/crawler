package com.zxh.config;

public class MafengConfig {
    public static Integer MAX_OFFSET = 84;

    public static String ORIGN_URL = "http://www.mafengwo.cn/together/travel/more?flag=3&offset=0&mddid=0&timeFlag=1&timestart=";

    private volatile static Integer CURR_OFFSET=0;

    public static synchronized Integer getCurrOffset(){
        CURR_OFFSET++;
        if (CURR_OFFSET>MAX_OFFSET){
            return null;
        }else{
            return CURR_OFFSET;
        }
    }
}
