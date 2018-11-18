package com.top.proutilsdemo.presenter;

import android.app.Activity;
import android.content.Context;

import com.top.tool.AnTools;

/**
 * 作者：ProZoom
 * 时间：2018/3/16
 * 描述：
 */
public class AnToolProducer {

    private Context mContext;

    public AnToolProducer(Context mContext) {
        this.mContext = mContext;

    }

    public String buildDeviceInfos() {

        StringBuilder sb = new StringBuilder();

        sb.append("\n手机型号：" + AnTools.device().getPhoneModel())
                .append("\n\n屏幕尺寸信息：" + AnTools.device().getScreenInfos((Activity) mContext))
                .append("\n屏幕像素：" + AnTools.device().getScreenPix(mContext)[0] + "-" + AnTools.device().getScreenPix(mContext)[1])
                .append("\n屏幕dp：" + AnTools.device().getScreenDip(mContext)[0] + "-" + AnTools.device().getScreenDip(mContext)[1])
                .append("\n\nIMEI:" + AnTools.device().getIMEI(mContext))
                .append("\n\nMac:" + AnTools.device().getMac(mContext));

        return sb.toString();

    }



    public String buildSysInfos() {
        StringBuilder sb = new StringBuilder();

        sb.append("\n获取app版本："+AnTools.app().getAppVersion(mContext))
                .append("\n获取app名称："+AnTools.app().getAppVersionName(mContext))
                .append("\n网络是否可用："+AnTools.app().isNetworkAvailable(mContext))
                .append("\nWifi是否可用："+AnTools.app().isWifi(mContext));

        return sb.toString();
    }

}
