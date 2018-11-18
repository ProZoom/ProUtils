package com.top.core.activity;


import android.annotation.SuppressLint;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v7.widget.ContentFrameLayout;

import com.top.core.delegates.TopDelegate;
import com.top.proutils.R;

import me.yokeyword.fragmentation.SupportActivity;

/**
 * 作者：ProZoom
 * 时间：2018/10/18
 * 描述：
 */
public abstract class ProxyActivity extends SupportActivity {


    public abstract TopDelegate setRootDelegate();

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        initContainer(savedInstanceState);

    }

    public void initContainer(@Nullable Bundle savedInstanceState) {
        @SuppressLint("RestrictedApi") final ContentFrameLayout contentFrameLayout = new ContentFrameLayout(this);

        contentFrameLayout.setId(R.id.delegate_container);

        setContentView(contentFrameLayout);
        if (savedInstanceState == null) {
            loadRootFragment(R.id.delegate_container, setRootDelegate());
        }

    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        System.gc();
    }
}
