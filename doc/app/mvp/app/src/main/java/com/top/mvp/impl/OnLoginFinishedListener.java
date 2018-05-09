package com.top.mvp.impl;

/**
 * 作者：李阳
 * 时间：2018/5/2
 * 描述：登陆事件监听
 */
public interface OnLoginFinishedListener {


    void onUsernameError();

    void onPasswordError();

    void onSuccess();

}
