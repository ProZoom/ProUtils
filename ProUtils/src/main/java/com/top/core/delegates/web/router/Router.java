package com.top.core.delegates.web.router;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.support.v4.content.ContextCompat;
import android.webkit.URLUtil;
import android.webkit.WebView;

import com.top.core.delegates.TopDelegate;
import com.top.core.delegates.web.WebDelegate;
import com.top.core.delegates.web.WebDelegateImpl;

/**
 * 作者：ProZoom
 * 时间：2018/11/1
 * 描述：
 */
public class Router {


    public Router() {
    }

    //线程安全
    private static class Holder {
        private static final Router INSTANCE = new Router();
    }

    public static Router getInstance() {
        return Holder.INSTANCE;
    }


    public final boolean handleWebUrl(WebDelegate delegate, String url) {

        if (url.contains("tel:")) {
            callPhone(delegate.getContext(), url);
            return true;
        }

        final TopDelegate topDelegate = delegate.getTopDelegate();

        final WebDelegateImpl webDelegate = WebDelegateImpl.create(url);

        topDelegate.start(webDelegate);

        return true;
    }

    private void loadWebPage(WebView webView, String url) {
        if (webView != null) {
            webView.loadUrl(url);
        } else {
            throw new NullPointerException("webview is null!");
        }
    }

    private void loadLocalPage(WebView webView, String url) {
        loadWebPage(webView, "file:///android_asset/" + url);
    }

    private final void loadPage(WebView webView, String url) {
        if (URLUtil.isNetworkUrl(url) || URLUtil.isAssetUrl(url)) {
            loadWebPage(webView, url);
        } else {
            loadLocalPage(webView, url);
        }
    }

    public final void loadPage(WebDelegate delegate, String uri) {
        loadPage(delegate.getWebView(), uri);
    }

    private void callPhone(Context context, String uri) {
        final Intent intent = new Intent(Intent.ACTION_DIAL);
        final Uri data = Uri.parse(uri);

        intent.setData(data);
        ContextCompat.startActivity(context, intent, null);
    }

}
