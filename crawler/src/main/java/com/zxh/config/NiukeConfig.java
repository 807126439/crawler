package com.zxh.config;

public class NiukeConfig {
    public static Integer MAX_OFFSET = 8;

    public static String ORIGN_URL = "https://www.nowcoder.com/ta/leetcode?query=&asc=true&order=&page=";

    //
    public static String RANKLIST_URL = "https://www.nowcoder.com/ta/leetcode/question-ranking?lang=4";

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
