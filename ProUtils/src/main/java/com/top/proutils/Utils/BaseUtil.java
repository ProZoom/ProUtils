package com.top.proutils.Utils;

/**
 * 作者：李阳
 * 时间：2018/4/17
 * 描述：
 */
public class BaseUtil {


    private static long lastClickTime;

    /**
     * 按钮是否快速点击
     * @return
     */
    public synchronized static boolean isFastClick() {
        long time = System.currentTimeMillis();
        if (time - lastClickTime < 500) {
            return true;
        }
        lastClickTime = time;
        return false;
    }




}
