package com.top.core.delegates.web;

import android.os.Build;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.annotation.RequiresApi;
import android.view.View;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;

import com.top.core.delegates.web.chomeclient.WebChomeClientImpl;
import com.top.core.delegates.web.client.WebViewClientImpl;
import com.top.core.delegates.web.router.RouteKeys;
import com.top.core.delegates.web.router.Router;

/**
 * 作者：ProZoom
 * 时间：2018/11/1
 * 描述：
 */
public class WebDelegateImpl extends WebDelegate {

    public static WebDelegateImpl create(String url){
        final Bundle args=new Bundle();
        args.putString(RouteKeys.URL.name(),url);
        final WebDelegateImpl delegate=new WebDelegateImpl();
        delegate.setArguments(args);
        return delegate;
    }


    @Override
    public IWebViewInitializer setInitializer() {
        return this;
    }

    @Override
    public Object setLayout() {
        return getWebView();
    }

    @Override
    public void onBindView(@Nullable Bundle savedInstanceState, View rootview) {
        if (getUrl()!=null) {
            //用原生方式模拟跳转的
            Router.getInstance().loadPage(this,getUrl());

        }
    }

    @RequiresApi(api = Build.VERSION_CODES.KITKAT)
    @Override
    public WebView initWebView(WebView webView) {
        return new WebViewInitializer().createWebView(webView);
    }

    @Override
    public WebViewClient initWebViewClient() {
        final WebViewClientImpl client=new WebViewClientImpl(this);
        //client.setPageLoadListener(mIPageLoadListener);


        return client;
    }

    @Override
    public WebChromeClient initWebChromeClient() {
        return new WebChomeClientImpl();
    }
}
