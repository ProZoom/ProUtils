package com.top.ui;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.media.MediaPlayer;
import android.os.Build;
import android.support.annotation.RequiresApi;
import android.util.AttributeSet;
import android.util.Log;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.RelativeLayout;

import com.top.proutils.R;

/**
 * 作者：李阳
 * 时间：2018/10/9
 * 描述：自定义视频播放器控件
 */
public class VideoPlayer2 extends RelativeLayout {

    private static final String TAG = "VideoPlayer";

    private int mVideoWidth;
    private int mVideoHeight;
    private int mSurfaceWidth;
    private int mSurfaceHeight;
    private SurfaceView mSurfaceView = null;
    private SurfaceHolder mSurfaceHolder = null;
    private MediaPlayer mMediaPlayer = null;

    private View view=null;

    public VideoPlayer2(Context context) {
        super(context);
        init(context);
    }

    public VideoPlayer2(Context context, AttributeSet attrs) {
        super(context, attrs);
        init(context);
    }

    public VideoPlayer2(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        init(context);
    }

    @RequiresApi(api = Build.VERSION_CODES.LOLLIPOP)
    public VideoPlayer2(Context context, AttributeSet attrs, int defStyleAttr, int defStyleRes) {
        super(context, attrs, defStyleAttr, defStyleRes);

        mVideoWidth = 0;
        mVideoHeight = 0;
    }

    /////////////////////////////////////////////////////////////////////////////////////
    @SuppressLint("ResourceAsColor")
    private void init(Context context) {
        mSurfaceView = new SurfaceView(getContext());


        //1.创建一个布局
        RelativeLayout relativeLayout=new RelativeLayout(context);
        //设置背景为透明
        relativeLayout.setBackgroundColor(R.color.transparent);
        //relativeLayout.getBackground().mutate().setAlpha(12);


        //2.添加播放按钮，居中
        ImageButton play=new ImageButton(context);
        play.setBackgroundResource(R.drawable.ic_play);

        relativeLayout.addView(play);

        RelativeLayout.LayoutParams RlayoutParams = new RelativeLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT,
                ViewGroup.LayoutParams.MATCH_PARENT);

        RlayoutParams.addRule(RelativeLayout.CENTER_HORIZONTAL);


        this.addView(mSurfaceView,RlayoutParams);

        this.addView(relativeLayout,RlayoutParams);

}


    ////////////////////////////////////////////////////////////////////////////////////

    @Override
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);

        int width = getDefaultSize(mVideoWidth, widthMeasureSpec);
        int height = getDefaultSize(mVideoHeight, heightMeasureSpec);

        Log.i(TAG, "--width--" + width + "--height--" + height + "--mVideoWidth--" + mVideoWidth + "--mVideoHeight--" + mVideoHeight);

        if (mVideoWidth > 0 && mVideoHeight > 0) {

        } else {

        }

        setMeasuredDimension(width, height);


    }

    @Override
    protected void onLayout(boolean changed, int left, int top, int right, int bottom) {
        super.onLayout(changed, left, top, right, bottom);
    }

    @Override
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);


    }


    ////////////////////////////////////////////////////////////////////////////////////


}
