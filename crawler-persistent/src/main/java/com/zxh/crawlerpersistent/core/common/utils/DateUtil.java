package com.zxh.crawlerpersistent.core.common.utils;

import org.apache.commons.lang.StringUtils;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class DateUtil {

    private final static SimpleDateFormat datetimeFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    private final static SimpleDateFormat dateMinuteFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm");
    private final static SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");

    public static Date autoToDate(String text) {
        Date result = null;
        try {
            if (text.indexOf(":") == -1 && text.length() == 10) {
                result = dateFormat.parse(text);
            } else if (text.indexOf(":") > 0 && text.length() == 16) {
                result = dateMinuteFormat.parse(text);
            } else if (text.indexOf(":") > 0 && text.length() == 19) {
                result = datetimeFormat.parse(text);
            } else if (text.indexOf(":") > 0 && text.length() == 21) {
                text = text.replace(".0", "");
                result = datetimeFormat.parse(text);
            }
        } catch (ParseException ex) {
            ex.printStackTrace();
        }

        return result;
    }

    public static Date dotToDate(String str) {

        Date date = null;
        if (StringUtils.isNotBlank(str)) {
            SimpleDateFormat format = new SimpleDateFormat("yyyy.MM.dd");
            try {
                date = format.parse(str);
            } catch (ParseException e) {
                e.printStackTrace();
            }
        }

        return date;

    }

    /**
     * 日期转换成字符串
     *
     * @param date
     * @return str
     */
    public static String DateToStr(Date date) {

        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String str = format.format(date);
        return str;
    }

    /**
     * 日期转换成字符串
     *
     * @param date
     * @return str
     */
    public static String dateToStrByPattern(Date date, String pattern) {
        // yyyy-MM-dd HH:mm:ss
        SimpleDateFormat format = new SimpleDateFormat(pattern);
        String str = format.format(date);

        return str;

    }

    /**
     * 日期转换成字符串
     *
     * @param date
     * @return str
     */
    public static String dateToStr(Date date) {

        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String str = format.format(date);
        return str;
    }

    public static Date date2Date(Date date) {

        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
        String str = format.format(date);
        Date result = null;
        try {

            result = format.parse(str);

        } catch (ParseException e) {

            e.printStackTrace();
        }

        return result;
    }

    public static String date2Str(Date date) {
        String result = "";
        if (date != null) {
            SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
            result = format.format(date);
        }

        return result;
    }

    public static String date2ChineseStr(Date date) {

        SimpleDateFormat format = new SimpleDateFormat("yyyy年MM月dd日");
        String str = format.format(date);
        return str;
    }

    public static String date2StrByMD(Date date) {

        SimpleDateFormat format = new SimpleDateFormat("MM-dd");
        String str = format.format(date);
        return str;
    }

    /**
     * 字符串转换成日期
     *
     * @param str
     * @return date
     */
    public static Date strToDate(String str) {

        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        Date date = null;
        try {
            date = format.parse(str);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        return date;
    }

    public static Date str2Date(String str) {

        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
        Date date = null;
        try {
            if (str != null) {
                date = format.parse(str);
            }

        } catch (ParseException e) {
            e.printStackTrace();
        }

        return date;

    }

    // 2017.10.17
    public static Date strDotToDate(String str) {

        SimpleDateFormat format = new SimpleDateFormat("yyyy.MM.dd");
        Date date = null;
        try {
            date = format.parse(str);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        return date;
    }

    /**
     * 日期转换成字符串
     *
     * @param date
     * @return str
     */
    public static String dateToStrByShort(Object date) {

        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
        String str = format.format(date);
        return str;
    }

    /**
     * 字符串转换成日期
     *
     * @param str
     * @return date
     */
    public static Date StrToDateByShort(String str) {
        if (StringUtils.isBlank(str)) {
            return null;
        }
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
        Date date = null;
        try {
            date = format.parse(str.toString());
        } catch (ParseException e) {
            e.printStackTrace();
        }
        return date;
    }

    /**
     * 获取当前年份
     *
     * @return
     */
    public static String getNowYear() {

        SimpleDateFormat format = new SimpleDateFormat("yyyy");
        String str = format.format(new Date());
        return str;

    }

    /**
     * 比较两个日期是否相差在范围内
     *
     * @param late
     * @param early
     * @param range
     * @return
     * @author wb_java_zjr
     */
    public static boolean checkDatesIsInRange(Date late, Date early, Long range) {

        long cha = late.getTime() - early.getTime();

        if (cha <= range) {
            return true;
        } else {

            return false;
        }

    }

    /**
     * 加减法日期
     *
     * @param date 日期
     * @param sl   加减量
     * @return
     */
    public static String countDate(Date date, int sl) {

        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        calendar.add(Calendar.DAY_OF_YEAR, sl);

        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");

        return df.format(calendar.getTime());

    }

    /**
     * 根据月份加减日期
     *
     * @param date
     * @param months
     * @return
     */
    public static String countDateByMonth(Date date, int months) {

        Calendar aCalendar = Calendar.getInstance();
        aCalendar.setTime(date);
        aCalendar.add(Calendar.MONTH, months);

        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");

        return df.format(aCalendar.getTime());
    }

    public static Date plusDate(Date date, int sl) {

        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        calendar.add(Calendar.DAY_OF_YEAR, sl);

        return calendar.getTime();

    }

    /**
     * 两个日期相减（oDate-fDate）
     *
     * @param fDate
     * @param oDate
     * @return
     */
    public static int daysOfTwo(Date fDate, Date oDate) {

        Calendar aCalendar = Calendar.getInstance();

        aCalendar.setTime(fDate);

        int day1 = aCalendar.get(Calendar.DAY_OF_YEAR);

        aCalendar.setTime(oDate);

        int day2 = aCalendar.get(Calendar.DAY_OF_YEAR);

        return day2 - day1;

    }

    public static int daysBetween(Date smdate, Date bdate) throws ParseException {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        smdate = sdf.parse(sdf.format(smdate));
        bdate = sdf.parse(sdf.format(bdate));
        Calendar cal = Calendar.getInstance();
        cal.setTime(smdate);
        long time1 = cal.getTimeInMillis();
        cal.setTime(bdate);
        long time2 = cal.getTimeInMillis();
        long between_days = (time2 - time1) / (1000 * 3600 * 24);

        return Integer.parseInt(String.valueOf(between_days));
    }

    /**
     * 设置日期的天数
     *
     * @param day
     * @param date
     * @return
     */
    public static Date getDateBySetDay(int day, Date date) {

        Calendar aCalendar = Calendar.getInstance();
        aCalendar.setTime(date);
        aCalendar.set(Calendar.DAY_OF_MONTH, day);

        return aCalendar.getTime();
    }

    /**
     * 获取年月日数组
     *
     * @param date
     * @return
     */
    public static String[] getYmdArray(Date date) {
        String[] result = new String[3];
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);

        result[0] = calendar.get(Calendar.YEAR) + "";
        result[1] = (calendar.get(Calendar.MONTH) + 1) + "";
        result[2] = calendar.get(Calendar.DAY_OF_MONTH) + "";

        return result;
    }

    /**
     * 获取当天是多少号
     *
     * @param date
     * @return
     */
    public static int getDay(Date date) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);

        return calendar.get(Calendar.DAY_OF_MONTH);
    }

    /**
     * 自动根据日期字符串长度判断转换格式进行转换
     *
     * @param text
     * @return
     */
    public static Date autoConvertDate(String text) {

        SimpleDateFormat datetimeFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        SimpleDateFormat dateMinuteFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm");
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");

        Date result = null;
        if (StringUtils.isNotBlank(text)) {
            try {
                if (text.indexOf(":") == -1 && text.length() == 10) {
                    result = dateFormat.parse(text);
                } else if (text.indexOf(":") > 0 && text.length() == 16) {
                    result = dateMinuteFormat.parse(text);
                } else if (text.indexOf(":") > 0 && text.length() == 19) {
                    result = datetimeFormat.parse(text);
                } else if (text.indexOf(":") > 0 && text.length() == 21) {
                    text = text.replace(".0", "");
                    result = datetimeFormat.parse(text);
                }

            } catch (ParseException ex) {
                ex.printStackTrace();
            }
        }

        return result;
    }

    public static void main(String[] args) {

        System.out.println(Integer.parseInt("001"));
    }

    public static String getNowDateStr() {

        Date date = new Date();
        DateFormat format = new SimpleDateFormat("yyyy-MM-dd");
        return format.format(date); // 2013-01-14
    }
}
