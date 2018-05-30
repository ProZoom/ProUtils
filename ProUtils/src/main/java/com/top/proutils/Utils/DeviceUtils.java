package com.top.proutils.Utils;

import android.content.Context;
import android.util.DisplayMetrics;
import android.util.Log;

/**
 * 设备属性相关工具类
 * Created by tsy on 16/7/25.
 */
public class DeviceUtils {

    private static final String TAG ="DeviceUtils";
    /**
     * 获取设备密度
     * @param context 全局context
     * @return 设备dpi
     */
    public static int getDeviceDpi(Context context) {
        DisplayMetrics dm = context.getResources().getDisplayMetrics();
        Log.i(TAG,"设备密度---"+dm.densityDpi);
        return dm.densityDpi;
    }

    /**
     * 获取设备宽 高 单位像素
     * @param context 全局context
     * @return int[]
     *      [0] 设备宽(像素)
     *      [1] 设备高(像素)
     */
    public static int[] getDeviceSize(Context context) {
        DisplayMetrics dm = context.getResources().getDisplayMetrics();
        Log.i(TAG,"设备宽单位像素---"+dm.widthPixels+"设备高单位像素---"+dm.heightPixels);
        return new int[]{dm.widthPixels, dm.heightPixels};
    }

    /**
     * 根据手机的分辨率从从dp转成为px(像素)
     * @param context 全局context
     * @param dpValue dp值
     * @return px像素值
     */
    public static int dip2px(Context context, float dpValue) {
        final float scale = context.getResources().getDisplayMetrics().density;

        return (int) (dpValue * scale + 0.5f);
    }

    /**
     * 根据手机的分辨率从 px(像素) 的单位 转成为 dp
     * @param context 全局context
     * @param pxValue px像素值
     * @return dp值
     */
    public static int px2dip(Context context, float pxValue) {
        final float scale = context.getResources().getDisplayMetrics().density;
        return (int) (pxValue / scale + 0.5f);
    }
}
