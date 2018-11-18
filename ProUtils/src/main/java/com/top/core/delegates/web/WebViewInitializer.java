package com.top.core.delegates.web;

import android.annotation.SuppressLint;
import android.os.Build;
import android.support.annotation.RequiresApi;
import android.view.View;
import android.webkit.WebSettings;
import android.webkit.WebView;

/**
 * 作者：ProZoom
 * 时间：2018/11/1
 * 描述：
 */
public class WebViewInitializer {


    @SuppressLint("SetJavaScriptEnabled")
    @RequiresApi(api = Build.VERSION_CODES.KITKAT)
    public WebView createWebView(WebView webView){

        WebView.setWebContentsDebuggingEnabled(true);

        //不能横向滚动
        webView.setHorizontalScrollBarEnabled(false);

        //不能纵向滚动
        webView.setVerticalScrollBarEnabled(false);

        // 允许截图
        webView.setDrawingCacheEnabled(true);

        //屏蔽长按事件
        webView.setOnLongClickListener(new View.OnLongClickListener() {
            @Override
            public boolean onLongClick(View v) {
                return true;
            }
        });

        //初始化Websettings
        final WebSettings settings=webView.getSettings();
        final String ua=settings.getUserAgentString();
        settings.setUserAgentString(ua+"top");
        settings.setJavaScriptEnabled(true);
        //隐藏缩放控件
        settings.setBuiltInZoomControls(false);
        settings.setDisplayZoomControls(false);
        // 禁止缩放
        settings.setSupportZoom(false);
        //文件权限
        settings.setAllowContentAccess(true);
        settings.setAllowFileAccessFromFileURLs(true);
        settings.setAllowUniversalAccessFromFileURLs(true);
        settings.setAllowFileAccess(true);

        //缓存相关
        settings.setAppCacheEnabled(true);
        settings.setDomStorageEnabled(true);
        settings.setDatabaseEnabled(true);
        settings.setCacheMode(WebSettings.LOAD_DEFAULT);

        return webView;
    }

}
