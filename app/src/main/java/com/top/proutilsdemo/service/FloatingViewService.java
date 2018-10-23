package com.top.proutilsdemo.service;

import android.annotation.SuppressLint;
import android.app.Service;
import android.content.Intent;
import android.graphics.PixelFormat;
import android.os.IBinder;
import android.support.annotation.Nullable;
import android.util.Log;
import android.view.Gravity;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.Toast;

import com.top.proutilsdemo.R;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

/**
 * 作者：李阳
 * 时间：2018/6/23
 * 描述：
 */
public class FloatingViewService extends Service {

    private static final String TAG = "FloatingViewService";

    LinearLayout mFloatLayout;
    WindowManager.LayoutParams wmParams;
    private WindowManager mWindowManager = null;
    private LayoutInflater inflater = null;
    private ImageButton mFloatView = null;

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


    @SuppressLint({"ClickableViewAccessibility", "InflateParams"})
    private void createFloatView() {


        wmParams = new WindowManager.LayoutParams();

        mWindowManager = (WindowManager) getApplication().getSystemService(getApplication().WINDOW_SERVICE);

        wmParams.type = WindowManager.LayoutParams.TYPE_PHONE;

        wmParams.format = PixelFormat.RGBA_8888;

        wmParams.flags = WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE;

        wmParams.gravity = Gravity.LEFT | Gravity.TOP;

        wmParams.x = 0;

        wmParams.y = 0;

        wmParams.width = WindowManager.LayoutParams.WRAP_CONTENT;

        wmParams.height = WindowManager.LayoutParams.WRAP_CONTENT;

        inflater = LayoutInflater.from(getApplication());

        mFloatLayout = (LinearLayout) inflater.inflate(R.layout.window_float_small, null);

        mWindowManager.addView(mFloatLayout, wmParams);

        mFloatView = mFloatLayout.findViewById(R.id.screenshot);

        mFloatLayout.measure(View.MeasureSpec.makeMeasureSpec(0, View.MeasureSpec.UNSPECIFIED), View.MeasureSpec.makeMeasureSpec(0, View.MeasureSpec.UNSPECIFIED));

        mFloatView.setOnTouchListener(new View.OnTouchListener() {
            @Override
            public boolean onTouch(View v, MotionEvent event) {
                // TODO Auto-generated method stub
                wmParams.x = (int) event.getRawX() - mFloatView.getMeasuredWidth() / 2;
                wmParams.y = (int) event.getRawY() - mFloatView.getMeasuredHeight() / 2 - 25;
                mWindowManager.updateViewLayout(mFloatLayout, wmParams);
                return false;
            }
        });

        mFloatView.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Toast.makeText(FloatingViewService.this, "截屏了！", Toast.LENGTH_SHORT).show();

                //BaseUtil.execShell("adb shell /system/bin/screencap -p /sdcard/screenshot222.png");

                BufferedReader reader = null;
                String content = "";
                try {
                    //("ps -P|grep bg")执行失败，PC端adb shell ps -P|grep bg执行成功
                    //Process process = Runtime.getRuntime().exec("ps -P|grep tv");
                    //-P 显示程序调度状态，通常是bg或fg，获取失败返回un和er
                    // Process process = Runtime.getRuntime().exec("ps -P");
                    //打印进程信息，不过滤任何条件
                    Process process = Runtime.getRuntime().exec("/system/bin/screencap -p /sdcard/screenshot222.png");
                    reader = new BufferedReader(new InputStreamReader(process.getInputStream()));
                    StringBuffer output = new StringBuffer();
                    int read;
                    char[] buffer = new char[4096];
                    while ((read = reader.read(buffer)) > 0) {
                        output.append(buffer, 0, read);
                    }
                    reader.close();
                    content = output.toString();
                    Log.i(TAG,content);
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        });


    }
}
