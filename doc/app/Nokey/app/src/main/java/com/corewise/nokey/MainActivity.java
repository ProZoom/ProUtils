package com.corewise.nokey;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v7.app.AppCompatActivity;
import android.util.Log;

/**
 * 作者：李阳
 * 时间：2018/4/26
 * 描述：
 */
public class MainActivity extends AppCompatActivity {

    private static final String TAG = "MainActivity";

    private MyBroadCastReceiver myBroadCastReceiver;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        // TODO Auto-generated method stub
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        myBroadCastReceiver = new MyBroadCastReceiver();

    }

    @Override
    protected void onResume() {
        // TODO Auto-generated method stub
        super.onResume();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(Intent.ACTION_CLOSE_SYSTEM_DIALOGS);

        Log.i(TAG, "I'm coming, myBroadCastReceiver注册了!");

        registerReceiver(myBroadCastReceiver, intentFilter);
    }

    private class MyBroadCastReceiver extends BroadcastReceiver {

        @Override
        public void onReceive(Context context, Intent intent) {
            //你自己先把 reasons == homekey 和 长按homekey 排除，剩下的做下面的处理
            String reason = intent.getStringExtra("reason");
            if (intent.getAction().equals(Intent.ACTION_CLOSE_SYSTEM_DIALOGS)) {

                Log.i(TAG, "Intent.ACTION_CLOSE_SYSTEM_DIALOGS : " + intent.getStringExtra("reason"));

                if (intent.getExtras() != null && intent.getExtras().getBoolean("myReason")) {
                    myBroadCastReceiver.abortBroadcast();
                } else if (reason != null) {


                    if (reason.equalsIgnoreCase("globalactions")) {

                        //屏蔽电源长按键的方法：
                        //Intent myIntent = new Intent(Intent.ACTION_CLOSE_SYSTEM_DIALOGS);
                        //myIntent.putExtra("myReason", true);
                        //context.sendOrderedBroadcast(myIntent, null);
                        Log.i(TAG, "电源  键被长按");

                    } else if (reason.equalsIgnoreCase("homekey")) {

                        //屏蔽Home键的方法
                        //在这里做一些你自己想要的操作,比如重新打开自己的锁屏程序界面，这样子就不会消失了
                        Log.i(TAG, "Home 键被触发");

                    } else if (reason.equalsIgnoreCase("recentapps")) {

                        //屏蔽Home键长按的方法

                        Log.i(TAG, "Home 键被长按");

                    }
                }
            }
        }

    }

    @Override
    protected void onPause() {
        // TODO Auto-generated method stub
        super.onPause();
        Log.i(TAG, "I get out, myBroadCastReceiver注销了!");

        unregisterReceiver(myBroadCastReceiver);
    }
}
