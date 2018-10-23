package com.top.proutilsdemo;

import android.app.Application;

import com.top.proutils.tool.AnTools;

/**
 * 作者：ProZoom
 * 时间：2018/3/15
 * 描述：
 */
public class App extends Application {

    @Override
    public void onCreate() {
        super.onCreate();
        //ProCache proCache = ProCache.get(this);
        AnTools.init(this);
    }
}
