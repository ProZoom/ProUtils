package com.top.proutilsdemo.business.AppInfos;

import android.graphics.drawable.Drawable;

/**
 * 作者：李阳
 * 时间：2018/5/24
 * 描述：
 */
public class AppInfosBean {

    public String appName; // 应用名
    public String packageName; // 包名
    public String versionName; // 版本名
    public int versionCode = 0; // 版本号
    public Drawable appIcon = null; // 应用图标
    public int appRom;//占用内存
    public int appStore;//应用存储

    public String getAppName() {
        return appName;
    }

    public void setAppName(String appName) {
        this.appName = appName;
    }

    public String getPackageName() {
        return packageName;
    }

    public void setPackageName(String packageName) {
        this.packageName = packageName;
    }

    public String getVersionName() {
        return versionName;
    }

    public void setVersionName(String versionName) {
        this.versionName = versionName;
    }

    public int getVersionCode() {
        return versionCode;
    }

    public void setVersionCode(int versionCode) {
        this.versionCode = versionCode;
    }

    public Drawable getAppIcon() {
        return appIcon;
    }

    public void setAppIcon(Drawable appIcon) {
        this.appIcon = appIcon;
    }

    public int getAppRom() {
        return appRom;
    }

    public void setAppRom(int appRom) {
        this.appRom = appRom;
    }

    public int getAppStore() {
        return appStore;
    }

    public void setAppStore(int appStore) {
        this.appStore = appStore;
    }


    @Override
    public String toString() {
        return "AppInfosBean{" +
                "appName='" + appName + '\'' +
                ", packageName='" + packageName + '\'' +
                ", versionName='" + versionName + '\'' +
                ", versionCode=" + versionCode +
                ", appIcon=" + appIcon +
                ", appRom=" + appRom +
                ", appStore=" + appStore +
                '}';
    }
}
