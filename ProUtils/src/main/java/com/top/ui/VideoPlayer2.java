package com.cw.u8.test;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Message;
import android.support.annotation.RequiresApi;
import android.util.AttributeSet;
import android.util.Log;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import android.widget.VideoView;


import com.cw.u8.R;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Timer;
import java.util.TimerTask;


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


    //创建一个布局，这个是控制面板布局
    private RelativeLayout ctrlRelativeLayout;
    private LinearLayout linearLayout; //控制进度条
    private ProgressBar progressBar;//进度条
    private TextView nowTime;//当前时间
    private TextView duration;//视频时长
    private ImageButton fullscreen;//全屏按钮
    private ImageButton play;//播放暂停按钮
    private ImageButton play2;//播放暂停按钮

    //长按
    private boolean isLongClickModule = false;
    //双击、单击
    private int isSingleOrDoubleClickCount = 0;
    private Timer mTimer = null;

    private boolean isShowing = true;//是否显示控制面板，默认显示
    private boolean isPlaying = false;//是否正在播放视频，默认不播放
    private boolean isAutoPlaying = true;//是否自动播放，默认自动播放
    private boolean isFullScreen = false;//是否全屏，默认不全屏

    private Uri uri = Uri.parse("http://221.228.226.23/6/n/a/y/l/naylspkwvsujoltcqursegarxzowax/hd.yinyuetai.com/C02F015B377EA255563C19FBEF88B071.mp4");


    private Handler mHandler = new Handler() {
        @Override
        public void handleMessage(Message msg) {
            super.handleMessage(msg);

            switch (msg.what) {
                case 1234://隐藏控制面板
                    ctrlRelativeLayout.setVisibility(GONE);
                    isShowing = false;

                    break;

                case 1235://显示控制面板
                    ctrlRelativeLayout.setVisibility(VISIBLE);
                    isShowing = true;
                    //mHandler.sendEmptyMessage(1236);
                    if (mTimer != null) {
                        mTimer.cancel();
                        mTimer = null;
                    }
                    mTimer = new Timer();
                    mTimer.schedule(new TimerTask() {
                        @Override
                        public void run() {
                            mHandler.sendEmptyMessage(1236);
                        }
                    }, 300);//每隔300毫秒更新一次当前时间
                    break;
                case 1236://更新当前时间
                    nowTime.setText(getCurrentVideoTime());
                    break;
            }

        }
    };


    public VideoPlayer2(Context context) {
        super(context);

        init(context);
    }

    public VideoPlayer2(final Context context, AttributeSet attrs) {
        super(context, attrs);
        init(context);
        if (isShowing) {
            mTimer = new Timer();
            mTimer.schedule(new TimerTask() {
                @Override
                public void run() {
                    if (isShowing) {
                        mHandler.sendEmptyMessage(1234);
                    }
                }
            }, 4000);
        }

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

    private class VideoCallBack implements SurfaceHolder.Callback {
        @Override
        public void surfaceCreated(SurfaceHolder holder) {
            Log.e(TAG, "-----surfaceCreated-----");
            mMediaPlayer.setDisplay(holder);
        }

        @Override
        public void surfaceChanged(SurfaceHolder holder, int format, int width, int height) {
            Log.e(TAG, "-----surfaceChanged-----");

        }

        @Override
        public void surfaceDestroyed(SurfaceHolder holder) {
            Log.e(TAG, "-----surfaceDestroyed-----");

        }
    }

    /////////////////////////////////////////////////////////////////////////////////////

    private void updateCtrlView() {
        if (isPlaying) {

        }

    }


    /**
     * 获取音乐播放时长
     *
     * @return
     */
    private String getVideoTime() {
        if (mMediaPlayer != null) {
            int musicTime = mMediaPlayer.getDuration() / 1000;
            return musicTime / 60 + ":" + musicTime % 60;
        } else {
            return "00:00:00";
        }
    }

    /**
     * 获取音乐播放时长
     *
     * @return
     */
    private String getCurrentVideoTime() {
        if (mMediaPlayer != null) {
            int musicTime = mMediaPlayer.getCurrentPosition() / 1000;
            return musicTime / 60 + ":" + musicTime % 60;
        } else {
            return "00:00:00";
        }
    }


    /////////////////////////////////////////////////////////////////////////////////////
    @SuppressLint("ResourceAsColor")
    private void init(final Context context) {
        mSurfaceView = new SurfaceView(getContext());
        mSurfaceHolder = mSurfaceView.getHolder();

        mSurfaceHolder.addCallback(new VideoCallBack());

        mMediaPlayer = new MediaPlayer();


        try {
            mMediaPlayer.setDataSource(context, uri);

            mMediaPlayer.prepare();

            mMediaPlayer.setOnPreparedListener(new MediaPlayer.OnPreparedListener() {
                @Override
                public void onPrepared(MediaPlayer mp) {

                    if (isAutoPlaying) {
                        start();
                    } else {
                        pause();
                    }
                    mMediaPlayer.setLooping(false);

                }
            });


        } catch (IOException e) {
            e.printStackTrace();
        }

        mMediaPlayer.setOnCompletionListener(new MediaPlayer.OnCompletionListener() {
            @Override
            public void onCompletion(MediaPlayer mp) {
                Log.i(TAG, "播放完毕!");
                play.setBackgroundResource(R.drawable.ic_pause);
                isPlaying = false;

            }
        });


        //在RelativeLayout上添加SurfaceView
        this.addView(mSurfaceView, new LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT));


        //创建一个布局，这个是控制面板布局
        ctrlRelativeLayout = new RelativeLayout(context);
        //设置背景为透明
        //ctrlRelativeLayout.setBackgroundColor(R.color.transparent);
        ctrlRelativeLayout.setAlpha((float) 1.0);
        ctrlRelativeLayout.setId(0);

        //在RelativeLayout上添加RelativeLayout
        this.addView(ctrlRelativeLayout, new LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT));


        /////////////////////////////////////////////////////
        //在控制面板添加控制进度条
        linearLayout = new LinearLayout(context);
        RelativeLayout.LayoutParams linearLayoutParams = new RelativeLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT,
                dip2px(20)
        );
        linearLayoutParams.addRule(RelativeLayout.ALIGN_PARENT_BOTTOM);
        linearLayoutParams.bottomMargin = dip2px(10);
        //linearLayout.setBackgroundColor(Color.GREEN);

        ctrlRelativeLayout.addView(linearLayout, linearLayoutParams);

        //在控制进度条里添加时间、进度条

        //添加进度条
        LinearLayout.LayoutParams progressbarParams = new LinearLayout.LayoutParams(
                0,
                dip2px(20),
                4.0f);//此处我需要均分高度就在heignt处设0,1.0f即设置权重是1，页面还有其他一个控件,1：1高度就均分了
        progressbarParams.gravity = Gravity.CENTER;

        progressBar = new ProgressBar(context, null, android.R.attr.progressBarStyleHorizontal);
        progressBar.setId(1);
        //progressBar.setBackgroundColor(Color.RED);
        //progressBar.setOnDragListener();


        LinearLayout.LayoutParams tvParams = new LinearLayout.LayoutParams(
                0,
                dip2px(20),
                0.9f);//此处我需要均分高度就在heignt处设0,1.0f即设置权重是1，页面还有其他一个控件,1：1高度就均分了
        tvParams.gravity = Gravity.CENTER;
        tvParams.leftMargin = dip2px(10);

        nowTime = new TextView(context);
        nowTime.setTextSize(12);
        nowTime.setText("1:03:12");
        nowTime.setTextColor(Color.WHITE);

        LinearLayout.LayoutParams tvDurationParams = new LinearLayout.LayoutParams(
                0,
                dip2px(20),
                1.0f);//此处我需要均分高度就在heignt处设0,1.0f即设置权重是1，页面还有其他一个控件,1：1高度就均分了

        tvDurationParams.leftMargin = dip2px(10);
        tvDurationParams.gravity = Gravity.CENTER;


        duration = new TextView(context);

        duration.setTextSize(12);
        duration.setTextColor(Color.WHITE);
        duration.setText(getVideoTime());

        LinearLayout.LayoutParams fullscreenParams = new LinearLayout.LayoutParams(
                0,
                dip2px(20),
                0.4f);
        fullscreenParams.gravity = Gravity.CENTER;
        fullscreenParams.rightMargin = dip2px(10);

        fullscreen = new ImageButton(context);
        fullscreen.setBackgroundResource(R.drawable.ic_fullscreen);
        fullscreen.setOnClickListener(new OnClickListener() {
            @Override
            public void onClick(View v) {
                Toast.makeText(context, "全屏了！", Toast.LENGTH_SHORT).show();

            }
        });


        linearLayout.addView(nowTime, tvParams);
        linearLayout.addView(progressBar, progressbarParams);
        linearLayout.addView(duration, tvDurationParams);
        linearLayout.addView(fullscreen, fullscreenParams);
        //////////////////////////////////////////////////

        //添加播放按钮
        LayoutParams playParams = new LayoutParams(
                ViewGroup.LayoutParams.WRAP_CONTENT,
                ViewGroup.LayoutParams.WRAP_CONTENT);
        playParams.addRule(RelativeLayout.CENTER_IN_PARENT);

        //添加播放按钮，居中

        play = new ImageButton(context);
        play.setBackgroundResource(R.drawable.ic_play);
        play.setOnClickListener(new OnClickListener() {
            @Override
            public void onClick(View v) {
                if (isPlaying) {
                    pause();
                    play.setBackgroundResource(R.drawable.ic_pause);
                } else {
                    start();
                    play.setBackgroundResource(R.drawable.ic_play);
                }
            }
        });
        //把paly按钮放在控制面板上
        ctrlRelativeLayout.addView(play, playParams);


    }


    private int dip2px(float dpValue) {
        final float scale = this.getResources().getDisplayMetrics().density;
        return (int) (dpValue * scale + 0.5f);
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

    ////////////////////////////////////////////////////////////////////////////////////


    @SuppressLint("ClickableViewAccessibility")
    @Override
    public boolean onTouchEvent(MotionEvent ev) {

        switch (ev.getAction()) {

            case MotionEvent.ACTION_DOWN://0
                Log.e(TAG, " onTouchEvent 按住");

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
                //
                if (isShowing) {
                    mHandler.sendEmptyMessage(1234);
                    isShowing = false;
                } else {
                    mHandler.sendEmptyMessage(1235);
                    isShowing = true;
                    //注意timerTask用后一次就丢弃,否则异常!
                    if (mTimer != null) {
                        mTimer.cancel();
                        mTimer = null;
                    }
                    mTimer = new Timer();
                    mTimer.schedule(new TimerTask() {
                        @Override
                        public void run() {
                            if (isShowing) {
                                mHandler.sendEmptyMessage(1234);
                            }
                        }
                    }, 4000);
                }
            }
            isLongClickModule = false;


        }
    }

    ////////////////////////////////////////////////////////////////////////////////////


    public void start() {
        if (mMediaPlayer != null) {
            if (!isPlaying) {
                mMediaPlayer.start();
                isPlaying = true;
                mHandler.sendEmptyMessage(1236);
            }
        }
    }

    public void pause() {
        if (mMediaPlayer != null) {
            if (isPlaying) {
                mMediaPlayer.pause();
                isPlaying = false;
            }
        }
    }

    public int getDuration() {
        return 0;
    }

    public int getCurrentPosition() {
        return 0;
    }

    public void seekTo(int pos) {

    }

    public boolean isPlaying() {
        return false;
    }

    public int getBufferPercentage() {
        return 0;
    }

    public boolean canPause() {
        return false;
    }

    public boolean canSeekBackward() {
        return false;
    }

    public boolean canSeekForward() {
        return false;
    }

    public int getAudioSessionId() {
        return 0;
    }

    public boolean isComplete() {
        return false;
    }

    public boolean isFullScreen() {
        return false;
    }

    public void fullScreen() {

    }


////////////////////////////////////////////////////////////////////////////////////
}
