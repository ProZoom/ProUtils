package com.top.mvp.model;

import com.top.mvp.impl.OnLoginFinishedListener;

/**
 * 作者：李阳
 * 时间：2018/5/2
 * 描述：
 */
public interface LoginModel {

    void login(String userName,String password,OnLoginFinishedListener listener);
}