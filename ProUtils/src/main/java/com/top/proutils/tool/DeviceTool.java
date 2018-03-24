package com.top.proutils.tool;

import android.app.Activity;
import android.content.Context;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.WindowManager;

import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.util.Enumeration;

/**
 * 作者：ProZoom
 * 时间：2018/3/16
 * 描述：设备相关工具类
 */
public class DeviceTool {

    private static final String TAG = "DeviceTool";
    private static volatile DeviceTool instance;// !!必须要加volatile限制指令重排序，不然这是双重检验的漏洞
    private static final Object lock = new Object();


    public DeviceTool() {

    }

    //单例模式，懒汉氏
    public static DeviceTool instance() {
        if (instance == null) {
            synchronized (lock) {
                if (instance == null) {
                    instance = new DeviceTool();
                }
            }
        }
        return instance;
    }


    /**
     * @return
     */
    public String getLocalIPAddress() {

        try {
            for (Enumeration<NetworkInterface> en = NetworkInterface.getNetworkInterfaces(); en.hasMoreElements(); ) {
                NetworkInterface inf = en.nextElement();
                for (Enumeration<InetAddress> emumIpAddr = inf.getInetAddresses(); emumIpAddr.hasMoreElements(); ) {
                    InetAddress inetAddress = emumIpAddr.nextElement();
                    if (!inetAddress.isLoopbackAddress()) {
                        return inetAddress.getHostAddress().toString();
                    }
                }
            }
        } catch (SocketException e) {
            e.printStackTrace();
            Log.i(TAG, "获取IP失败---->" + e.toString());
            return "0.0.0.0";
        }
        return "0.0.0.0";
    }

    /**
     * 获取手机屏幕信息
     *
     * @param activity
     * @return
     */
    public DisplayMetrics getScreenInfos(Activity activity) {
        // DisplayMetrics 一个描述普通显示信息的结构，例如显示大小、密度、字体尺寸
        DisplayMetrics displaysMetrics = new DisplayMetrics();
        // 获取手机窗口的Display 来初始化DisplayMetrics 对象
        // getManager()获取显示定制窗口的管理器。
        // 获取默认显示Display对象
        // 通过Display 对象的数据来初始化一个DisplayMetrics 对象
        activity.getWindowManager().getDefaultDisplay()
                .getMetrics(displaysMetrics);
        return displaysMetrics;
    }

    /**
     * 获取屏幕密度
     *
     * @param context
     * @return
     */
    public float getScreenDensity(Context context) {

        //获取系统的窗口管理服务
        WindowManager wm = (WindowManager) context.getSystemService(Context.WINDOW_SERVICE);

        DisplayMetrics dm = new DisplayMetrics();

        if (wm != null) {
            wm.getDefaultDisplay().getMetrics(dm);
        }

        int widthPixels = dm.widthPixels;
        int heightPixels = dm.heightPixels;

        return dm.density;
    }

    /**
     * 获取屏幕像素
     *
     * @param context
     * @return Pix[0]:屏幕宽度像素
     * Pix[1[:屏幕高度像素
     */
    public float[] getScreenPix(Context context) {
        float[] pix = new float[]{0, 0};
        //获取系统的窗口管理服务
        WindowManager wm = (WindowManager) context.getSystemService(Context.WINDOW_SERVICE);
        DisplayMetrics dm = new DisplayMetrics();
        if (wm != null) {
            wm.getDefaultDisplay().getMetrics(dm);
        }
        pix[0] = dm.widthPixels;
        pix[1] = dm.heightPixels;
        return pix;
    }

    /**
     * 获取屏幕
     *
     * @param context
     * @return dip[0]:屏幕宽度
     * dip[1[:屏幕高度像素
     */
    public float[] getScreenDip(Context context) {
        float[] dix = new float[]{0, 0};
        //获取系统的窗口管理服务
        WindowManager wm = (WindowManager) context.getSystemService(Context.WINDOW_SERVICE);
        DisplayMetrics dm = new DisplayMetrics();
        if (wm != null) {
            wm.getDefaultDisplay().getMetrics(dm);
        }
        dix[0] = dm.widthPixels / getScreenDensity(context);
        dix[1] = dm.heightPixels / getScreenDensity(context);
        return dix;
    }

 /**
     * 获取状态栏高度
     * @param context
     * @return
     */
    public int getStatusBarHeight(Context context) {

        int statusHeight = -1;
        try {
            Class clazz = Class.forName("com.android.internal.R$dimen");
            Object object = clazz.newInstance();
            int height = Integer.parseInt(clazz.getField("status_bar_height")
                    .get(object).toString());
            statusHeight = context.getResources().getDimensionPixelSize(height);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return statusHeight;
    }

    /**
     * 根据手机的分辨率从 dip 的单位 转成为 px(像素)
     * @param context
     * @param dpValue
     * @return
     */
    public int dip2px(Context context, float dpValue) {
        final float scale = context.getResources().getDisplayMetrics().density;
        return (int) (dpValue * scale + 0.5f);
    }

    /**
     * 根据手机的分辨率从 px(像素) 的单位 转成为 dp
     * @param context
     * @param pxValue
     * @return
     */
    public int px2dip(Context context, float pxValue) {
        final float scale = context.getResources().getDisplayMetrics().density;
        return (int) (pxValue / scale + 0.5f);
    }


    /**
     * 获取手机型号
     *
     * @return
     */
    public String getPhoneModel() {
        return android.os.Build.MODEL;
    }

    /**
     * 获取IMEI
     *
     * @param context
     * @return
     */
    public String getIMEI(Context context) {

        //获取sim管理器
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService(Context.TELEPHONY_SERVICE);

        //获取imei
        String imei = telephonyManager.getDeviceId();

        if (TextUtils.isEmpty(imei)) {
            return "0-0-0";
        }
        return imei;
    }

    /**
     * 获取系统Mac地址
     *
     * @param context
     * @return
     */
    public String getMac(Context context) {
        WifiManager wifiManager = (WifiManager) context.getSystemService(Context.WIFI_SERVICE);

        WifiInfo wifiInfo = wifiManager.getConnectionInfo();

        String macAddress = wifiInfo.getMacAddress();

        if (TextUtils.isEmpty(macAddress)) {
            macAddress = "";
        }

        return macAddress;
    }


}
