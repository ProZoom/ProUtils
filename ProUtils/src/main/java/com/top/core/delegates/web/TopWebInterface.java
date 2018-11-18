package com.top.core.delegates.web;

import android.webkit.JavascriptInterface;

import com.alibaba.fastjson.JSON;
import com.top.core.delegates.web.event.Event;
import com.top.core.delegates.web.event.EventManager;

/**
 * 作者：ProZoom
 * 时间：2018/11/1
 * 描述：
 */
public final class TopWebInterface {

    private final WebDelegate DELEATE;

    public TopWebInterface(WebDelegate DELEATE) {
        this.DELEATE = DELEATE;
    }

    static TopWebInterface create(WebDelegate delegate)  {
        return new TopWebInterface(delegate);
    }


    @SuppressWarnings("unused")
    @JavascriptInterface
    public String event(String params){
        final String action= JSON.parseObject(params).getString("action");

        final Event event=EventManager.getInstance().createEvent(action);

        if (event!=null) {
            event.setAction(action);
            event.setDelegate(DELEATE);
            event.setContext(DELEATE.getContext());
            event.setUrl(DELEATE.getUrl());
            return event.execute(params);
        }

        return null;////
    }
}
