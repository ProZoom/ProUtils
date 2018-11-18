package com.top.core.delegates.web.client;

import android.webkit.WebView;

import com.orhanobut.logger.Logger;
import com.top.core.delegates.web.WebDelegate;
import com.top.core.delegates.web.router.Router;

/**
 * 作者：ProZoom
 * 时间：2018/11/1
 * 描述：
 */
public class WebViewClientImpl extends android.webkit.WebViewClient {

    private final WebDelegate DELEGATE;

    public WebViewClientImpl(WebDelegate delegate) {
        DELEGATE = delegate;


    }


    @Override
    public boolean shouldOverrideUrlLoading(WebView view, String url) {
        Logger.d("shouldOverrideUrlLoading",url);

        return Router.getInstance().handleWebUrl(DELEGATE,url);
    }
}
