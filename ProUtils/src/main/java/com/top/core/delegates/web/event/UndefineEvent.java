package com.top.core.delegates.web.event;

import com.orhanobut.logger.Logger;

/**
 * 作者：ProZoom
 * 时间：2018/11/1
 * 描述：
 */
public class UndefineEvent extends Event {
    @Override
    public String execute(String params) {
        Logger.e("UndeFindEvent",params);
        return null;
    }
}
