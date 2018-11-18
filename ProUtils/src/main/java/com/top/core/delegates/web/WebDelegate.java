package com.top.core.delegates.web;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.webkit.WebView;

import com.top.core.app.ConfigType;
import com.top.core.app.Top;
import com.top.core.delegates.TopDelegate;
import com.top.core.delegates.web.router.RouteKeys;

import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;

/**
 * 作者：ProZoom
 * 时间：2018/10/31
 * 描述：
 */
public abstract class WebDelegate extends TopDelegate implements IWebViewInitializer {

    private WebView webView = null;
    private final ReferenceQueue<WebView> WEB_VIEW_QUENE = new ReferenceQueue<>();
    private String mUrl = null;
    private boolean mIsWebViewAbailable = false;
    private TopDelegate mTopDelegate=null;

    public abstract IWebViewInitializer setInitializer();

    public WebDelegate() {
    }

    @Override
    public void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        final Bundle args = getArguments();
        mUrl = args.getString(RouteKeys.URL.name());

        initWebView();


    }

    public WebView getWebView() {
        if (webView == null) {
            throw new NullPointerException("webView is Null!");
        }
        return mIsWebViewAbailable ? webView : null;
    }

    public String getUrl() {
        if (mUrl == null) {
            throw new NullPointerException("WebView is null");
        }
        return mUrl;
    }


    @SuppressLint({"JavascriptInterface", "AddJavascriptInterface"})
    private void initWebView() {
        if (webView != null) {
            webView.removeAllViews();
            webView.destroy();
        } else {
            final IWebViewInitializer iWebViewInitializer = setInitializer();
            if (iWebViewInitializer != null) {
                final WeakReference<WebView> webViewWeakReference = new WeakReference<WebView>(new WebView(getContext()), WEB_VIEW_QUENE);

                webView = webViewWeakReference.get();
                webView = iWebViewInitializer.initWebView(webView);
                webView.setWebViewClient(iWebViewInitializer.initWebViewClient());

                webView.setWebChromeClient(iWebViewInitializer.initWebChromeClient());

                final String name= Top.getConfigurations(ConfigType.JAVASCRIPT_INTERFACE);

                webView.addJavascriptInterface(TopWebInterface.create(this), name);

                mIsWebViewAbailable = true;

            } else {
                throw new NullPointerException("Web Init is null");
            }
        }
    }

    public void setTopDelegate(TopDelegate delegate){
        mTopDelegate=delegate;
    }

     public TopDelegate getTopDelegate(){
        if (mTopDelegate==null) {
            mTopDelegate=this;
        }
        return mTopDelegate;
    }

    @Override
    public void onPause() {
        super.onPause();
        if (webView != null) {
            webView.onPause();
        }
    }

    @Override
    public void onResume() {
        super.onResume();
        if (webView != null) {
            webView.onResume();
        }
    }

    @Override
    public void onDestroyView() {
        super.onDestroyView();
        if (webView != null) {
            mIsWebViewAbailable = false;
        }
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        if (webView != null) {
            webView.removeAllViews();
            webView.destroy();
            webView = null;
        }
    }
}
