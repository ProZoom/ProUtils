package com.top.base;

import android.app.Activity;
import android.os.Bundle;
import android.view.Gravity;
import android.view.Window;
import android.view.WindowManager;

import org.greenrobot.eventbus.EventBus;

/**
 * 作者：李阳
 * 时间：2018/9/4
 * 描述：
 */
public class KeepAliveActivity extends Activity {


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        //只有左上角的一个点，主要为了使用户无感知
        Window window = getWindow();
        window.setGravity(Gravity.LEFT | Gravity.TOP);

        WindowManager.LayoutParams params = window.getAttributes();
        params.x = 0;
        params.y = 0;
        params.height = 1;
        params.width = 1;
        window.setAttributes(params);

        //通过EventBus来接收消息
        EventBus.getDefault().register(this);
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        EventBus.getDefault().unregister(this);
    }

    // EventBus ------------------------------
    /*@Subscribe(threadMode = ThreadMode.MAIN)
    public void onMessageEvent(EventMessage msg) {
        int msgCode = msg.msgCode;
        switch (msgCode) {
            case Event_Finish_KeepAliveActivity:
                KeepAliveActivity.this.finish();
                break;

            default:
                break;
        }
    }*/
}
