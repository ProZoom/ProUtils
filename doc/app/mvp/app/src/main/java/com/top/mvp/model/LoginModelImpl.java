package com.top.mvp.model;


import android.os.Handler;
import android.text.TextUtils;

import com.top.mvp.impl.OnLoginFinishedListener;

/**
 * 作者：李阳
 * 时间：2018/5/2
 * 描述：登陆接口实现类
 */
public class LoginModelImpl implements LoginModel {
    @Override
    public void login(final String userName, final String password, final OnLoginFinishedListener listener) {
        new Handler().postDelayed(new Runnable() {
            @Override
            public void run() {
                boolean error=false;
                if (TextUtils.isEmpty(userName)) {
                    listener.onUsernameError();
                    error=true;
                }
                if (TextUtils.isEmpty(password)) {
                    listener.onPasswordError();
                    error=true;
                }

                if(!error){
                    listener.onSuccess();
                }

            }
        },3000);
    }
}
