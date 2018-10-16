package com.top.proutilsdemo.view.activity;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.MediaController;
import android.widget.VideoView;

/**
 * 作者：李阳
 * 时间：2018/10/10
 * 描述：
 */
public class dd extends VideoView {
    public dd(Context context) {
        super(context);
    }

    public dd(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    public dd(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
    }

    public dd(Context context, AttributeSet attrs, int defStyleAttr, int defStyleRes) {
        super(context, attrs, defStyleAttr, defStyleRes);
    }


    @Override
    public void setMediaController(MediaController controller) {
        super.setMediaController(controller);
    }


}
