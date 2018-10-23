package com.top.proutilsdemo.view.activity;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.view.View;
import android.view.WindowManager;
import android.widget.TextView;

import com.top.proutilsdemo.R;

import butterknife.BindView;
import butterknife.ButterKnife;

/**
 * 作者：ProZoom
 * 时间：2018/3/15
 * 描述：
 */
public class SplashActivity extends Activity {
    @BindView(R.id.tv_version)
    TextView tvVersion;
    private View mContentView;

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_splash);
        ButterKnife.bind(this);
        //全屏
        getWindow().setFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN,
                WindowManager.LayoutParams.FLAG_FULLSCREEN);
        mContentView = findViewById(R.id.fullscreen_content);

        //tvVersion.setText(BaseUtil.getMoneyNumber(1234.98, Locale.CHINA));
    }

    @Override
    protected void onPostCreate(@Nullable Bundle savedInstanceState) {
        super.onPostCreate(savedInstanceState);
        mContentView.postDelayed(new Runnable() {
            @Override
            public void run() {
                startActivity(new Intent(SplashActivity.this, MainActivity.class));
                finish();
            }
        }, 3000);
    }
}
