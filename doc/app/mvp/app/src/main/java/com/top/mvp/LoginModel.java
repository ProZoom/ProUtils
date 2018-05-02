package com.top.mvp;

/**
 * 作者：李阳
 * 时间：2018/5/2
 * 描述：
 */
public interface LoginModel {

    void login(String userName,String password,OnLoginFinishedListener listener);
}
