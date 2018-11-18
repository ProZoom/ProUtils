package com.top.core.delegates;

/**
 * 作者：ProZoom
 * 时间：2018/10/18
 * 描述：
 */
public abstract class TopDelegate extends PermissionCheckerDelegate {

    public <T extends TopDelegate> T getParentDelegate() {
        return (T) getParentFragment();
    }
}
