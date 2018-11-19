package com.top.ui;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.media.AudioAttributes;
import android.media.AudioManager;
import android.media.MediaPlayer;
import android.os.Build;
import android.support.annotation.RequiresApi;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.View;

import java.util.Timer;
import java.util.TimerTask;

/**
 * 作者：李阳
 * 时间：2018/10/9
 * 描述：自定义视频播放器控件
 */
public class VideoPlayer extends SurfaceView {

    private static final String TAG = "VideoPlayer";

    //上下文
    private Context mContext;

    //视频宽度
    private int mVideoWidth;
    //视频高度
    private int mVideoHeight;
    //Surface宽度
    private int mSurfaceWidth;
    //Surface高度
    private int mSurfaceHeight;

    //
    private SurfaceHolder mSurfaceHolder = null;


    private MediaPlayer mMediaPlayer = null;
    private AudioManager mAudioManager;//该类提供访问控制音量和钤声模式的操作
    private AudioAttributes mAudioAttibutes;

    private VideoController mVideoController;


    //长按
    private boolean isLongClickModule = false;
    //双击、单击
    private int isSingleOrDoubleClickCount = 0;
    private Timer mTimer = null;

    //是否全屏,默认不全屏
    private boolean isFullScreen=false;

    public VideoPlayer(Context context) {
        super(context);
    }

    public VideoPlayer(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    @RequiresApi(api = Build.VERSION_CODES.LOLLIPOP)
    public VideoPlayer(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        initVideoPlayer();
    }

    @RequiresApi(api = Build.VERSION_CODES.LOLLIPOP)
    public VideoPlayer(Context context, AttributeSet attrs, int defStyleAttr, int defStyleRes) {
        super(context, attrs, defStyleAttr, defStyleRes);
        initVideoPlayer();
    }

    @RequiresApi(api = Build.VERSION_CODES.LOLLIPOP)
    private void initVideoPlayer() {
        mVideoWidth = 0;
        mVideoHeight = 0;

        //获取音频管理器
        mAudioManager = (AudioManager) mContext.getSystemService(Context.AUDIO_SERVICE);
        mAudioAttibutes = new AudioAttributes.Builder().setUsage(AudioAttributes.USAGE_MEDIA)
                .setContentType(AudioAttributes.CONTENT_TYPE_MOVIE).build();


        getHolder().addCallback(mSHCallback);
        getHolder().setType(SurfaceHolder.SURFACE_TYPE_PUSH_BUFFERS);

        setFocusable(true);
        setClickable(true);
        setFocusableInTouchMode(true);
        requestFocus();
    }

    ////////////////////////////////////////////////////////////////////////////////////

    public void setVideoController(VideoController controller) {
        if (mVideoController != null) {
            mVideoController.hide();
        }
        mVideoController = controller;
        attachVideoController();
    }

    private void attachVideoController() {
        if (mMediaPlayer != null && mVideoController != null) {
            //mVideoController.setMediaPlayer(this);
            View anchorView = this.getParent() instanceof View ?
                    (View)this.getParent() : this;
            //mVideoController.setAnchorView(anchorView);
            //mVideoController.setEnabled(isInPlaybackState());
        }
    }

    /////////////////////////////////////////////////////////////////////////////////////
    /**
     * Surface生命周期
     */
    SurfaceHolder.Callback mSHCallback = new SurfaceHolder.Callback() {
        @Override
        public void surfaceCreated(SurfaceHolder holder) {

            Log.e(TAG, "---surfaceCreated---");

        }

        @Override
        public void surfaceChanged(SurfaceHolder holder, int format, int width, int height) {
            Log.e(TAG, "---surfaceChanged---");

        }

        @Override
        public void surfaceDestroyed(SurfaceHolder holder) {
            Log.e(TAG, "---surfaceDestroyed---");

        }
    };

    ////////////////////////////////////////////////////////////////////////////////////


    @SuppressLint("ClickableViewAccessibility")
    @Override
    public boolean onTouchEvent(MotionEvent ev) {

        switch (ev.getAction()) {

            case MotionEvent.ACTION_DOWN://0
                Log.e(TAG, " onTouchEvent 按住");

                float x = ev.getX();
                float y = ev.getY();
                //注意timerTask用后一次就丢弃,否则异常!
                if (mTimer != null) {
                    mTimer.cancel();
                    mTimer = null;
                }
                mTimer = new Timer();
                mTimer.schedule(new MonitorClick(), 500);
                isSingleOrDoubleClickCount++;

                break;
            case MotionEvent.ACTION_UP://1
                Log.e(TAG, " onTouchEvent onTouch抬起");
                isLongClickModule = true;

                break;
            case MotionEvent.ACTION_MOVE://2
                Log.e(TAG, " onTouchEvent 移动");

                break;
        }
        return super.onTouchEvent(ev);
    }

    private class MonitorClick extends TimerTask {
        @Override
        public void run() {
            //双击--->暂停、开始操作
            if (isSingleOrDoubleClickCount >= 2) {
                isSingleOrDoubleClickCount = 0;
                Log.e(TAG, "onTouchEvent---is double Click");
            }

            //长按--->
            if (!isLongClickModule) {
                Log.e(TAG, "onTouchEvent---is Long Click");
            }

            //单击--->显示、隐藏控制面板
            if (isSingleOrDoubleClickCount == 1 && isLongClickModule) {
                isSingleOrDoubleClickCount = 0;
                Log.e(TAG, "onTouchEvent---is Single Click");
            }
            isLongClickModule = false;


        }
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
