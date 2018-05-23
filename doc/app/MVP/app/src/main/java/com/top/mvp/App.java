package com.top.mvp;

import android.app.Application;
import android.content.Context;

/**
 * 作者：李阳
 * 时间：2018/5/23
 * 描述：
 */
public class App extends Application {

    private static App mGlobalApp;
    private Context mContext;

    @Override
    public void onCreate() {
        super.onCreate();
        mGlobalApp = this;
        this.mContext = getApplicationContext();


    }


    /**
     * 获取全局Application
     * @return
     */
    public static synchronized App getInstance() {
        return mGlobalApp;
    }

    /**
     * 获取ApplicationContext
     * @return
     */
    public Context getContext() {
        return mContext;
    }
}
