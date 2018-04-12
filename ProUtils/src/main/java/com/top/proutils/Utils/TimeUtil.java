package com.top.proutils.Utils;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;

/**
 * 通用工具类
 */
public class TimeUtil {
    /**
     * 默认的格式化时间时的模式字符串
     */
    private static String fmtPattern = "yyyy-MM-dd HH:mm:ss";
    /**
     * 格式化时间的工具
     */
    private static SimpleDateFormat sdf = new SimpleDateFormat(fmtPattern, Locale.CHINA);
    /**
     * 被格式化的时间对象
     */
    private static Date date = new Date();

    /**
     * 获取格式化后的时间的字符串
     *
     * @param timeMills 以毫秒为单位的时间
     * @return 根据模式字符串格式化后的时间
     */
    public static String getFormatted(long timeMills) {

        return getFormatted("mm:ss", timeMills);

    }

    /**
     * 获取格式化后的时间的字符串
     *
     * @param format    格式化时使用的模式字符串，例如mm:ss
     * @param timeMills 以毫秒为单位的时间
     * @return 根据模式字符串格式化后的时间
     */
    public static String getFormatted(String format, long timeMills) {
        // 应用参数中指定的模式字符串
        if (format != null && !"".equals(format)) {
            sdf.applyPattern(format);
        }
        // 设置被格式化的时间
        date.setTime(timeMills);
        // 执行格式化，并返回
        return sdf.format(date);
    }

    /**
     * 获取当月的 天数
     */
    public static int getCurrentMonthDay() {
        Calendar a = Calendar.getInstance();
        a.set(Calendar.DATE, 1);
        a.roll(Calendar.DATE, -1);
        int maxDate = a.get(Calendar.DATE);
        return maxDate;
    }

    /**
     * 根据日期取得星期几
     *
     * @param date
     * @return
     */
    public static String getWeek(Date date) {
        String[] weeks = {"星期日", "星期一", "星期二", "星期三", "星期四", "星期五", "星期六"};
        Calendar cal = Calendar.getInstance();
        cal.setTime(date);
        int week_index = cal.get(Calendar.DAY_OF_WEEK) - 1;
        if (week_index < 0) {
            week_index = 0;
        }
        return weeks[week_index];
    }

    /**
     * 根据日期 找到对应日期的 星期
     */
    public static int getDayOfWeekByDate(String date) {
        int dayOfweek = -1;
        try {
            SimpleDateFormat myFormatter = new SimpleDateFormat("yyyy-M-d", Locale.CHINA);
            Date myDate = myFormatter.parse(date);
            SimpleDateFormat formatter = new SimpleDateFormat("E", Locale.CHINA);
            String str = formatter.format(myDate);
            switch (str) {
                case "周日":
                    dayOfweek = 0;
                    break;
                case "周一":
                    dayOfweek = 1;
                    break;
                case "周二":
                    dayOfweek = 2;
                    break;
                case "周三":
                    dayOfweek = 3;
                    break;
                case "周四":
                    dayOfweek = 4;
                    break;
                case "周五":
                    dayOfweek = 5;
                    break;
                case "周六":
                    dayOfweek = 6;
                    break;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return dayOfweek;
    }
}
