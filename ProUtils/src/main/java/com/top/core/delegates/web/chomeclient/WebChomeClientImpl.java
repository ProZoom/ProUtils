package com.top.core.delegates.web.chomeclient;

import android.webkit.JsResult;
import android.webkit.WebChromeClient;
import android.webkit.WebView;

/**
 * 作者：ProZoom
 * 时间：2018/11/1
 * 描述：
 */
public class WebChomeClientImpl extends WebChromeClient {


    @Override
    public boolean onJsAlert(WebView view, String url, String message, JsResult result) {
        return super.onJsAlert(view, url, message, result);
    }
}
