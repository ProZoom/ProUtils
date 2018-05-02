package com.top.mvp;

/**
 * 作者：李阳
 * 时间：2018/5/2
 * 描述：登陆View的接口，实现类也就是登陆的activity
 */
public interface LoginView {

    void showProgress();

    void hideProgress();

    void setUserNameError();

    void setPasswordError();

    void navigateToHome();

}
