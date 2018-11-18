package com.top.core.delegates.bottom;

/**
 * 作者：ProZoom
 * 时间：2018/10/28
 * 描述：
 */
public final class BottomTabBean {

    private final CharSequence ICON;
    private final CharSequence TITLE;

    public BottomTabBean(CharSequence icon, CharSequence titLe) {
        ICON = icon;
        TITLE = titLe;
    }

    public CharSequence getICON() {
        return ICON;
    }

    public CharSequence getTITLe() {
        return TITLE;
    }
}
