package com.top.proutilsdemo.service;

import android.app.Service;
import android.content.Intent;
import android.graphics.PixelFormat;
import android.os.IBinder;
import android.support.annotation.Nullable;
import android.view.Gravity;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.LinearLayout;

import com.top.proutilsdemo.R;

/**
 * 作者：李阳
 * 时间：2018/6/23
 * 描述：
 */
public class FloatingViewService extends Service {

    @Override
    public void onCreate() {
        super.onCreate();


    }

    @Override
    public int onStartCommand(Intent intent, int flags, int startId) {

        createFloatView();

        return super.onStartCommand(intent, flags, startId);
    }


    @Override
    public void onDestroy() {
        super.onDestroy();


    }

    @Nullable
    @Override
    public IBinder onBind(Intent intent) {
        return null;
    }


    private void createFloatView() {
        final WindowManager.LayoutParams wmParams = new WindowManager.LayoutParams();

        final WindowManager mWindowManager = (WindowManager) getApplicationContext().getSystemService(getApplicationContext().WINDOW_SERVICE);

        wmParams.format = PixelFormat.RGBA_8888;

        wmParams.flags = WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE;

        wmParams.gravity = Gravity.LEFT | Gravity.TOP;

        wmParams.x = 0;

        wmParams.y = 0;

        wmParams.width = WindowManager.LayoutParams.WRAP_CONTENT;

        wmParams.height = WindowManager.LayoutParams.WRAP_CONTENT;

        final LinearLayout mFloatLayout = (LinearLayout) LayoutInflater.from(getApplicationContext()).inflate(R.layout.window_float_small, null);

        if (mWindowManager != null) {
            mWindowManager.addView(mFloatLayout, wmParams);
        }

        final Button mFloatView = mFloatLayout.findViewById(R.id.screenshot);

        mFloatLayout.measure(View.MeasureSpec.makeMeasureSpec(0, View.MeasureSpec.UNSPECIFIED), View.MeasureSpec.makeMeasureSpec(0, View.MeasureSpec.UNSPECIFIED));

        mFloatLayout.setOnTouchListener(new View.OnTouchListener() {
            @Override
            public boolean onTouch(View v, MotionEvent event) {

                wmParams.x = (int) (event.getRawX() - mFloatView.getMeasuredWidth() / 2);
                wmParams.y = (int) (event.getRawY() - mFloatView.getMaxHeight() / 2);

                mWindowManager.updateViewLayout(mFloatLayout, wmParams);
                return false;
            }
        });
    }
}
