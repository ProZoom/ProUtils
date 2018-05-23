package com.top.proutilsdemo.view.impl;

/**
 * 作者：李阳
 * 时间：2018/5/23
 * 描述：
 */
public interface BaseView<T> {

        void setPresenter(T presenter);//对View中的Presenter进行初始化

}
