package com.top.ui;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.PixelFormat;
import android.graphics.drawable.AnimationDrawable;
import android.os.Build;
import android.os.Handler;
import android.os.Message;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RequiresApi;
import android.util.AttributeSet;
import android.util.Log;
import android.view.Gravity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ProgressBar;
import android.widget.TextView;

import java.lang.ref.WeakReference;
import java.util.Formatter;

/**
 * 作者：李阳
 * 时间：2018/10/9
 * 描述：
 */
public class VideoController extends FrameLayout {

    private static final String TAG = "VideoController";

    private final int DEFAULTTIMEOUT = 3000;
    private final int SHOW_PROGRESSBAR = 0;
    private final int FADE_OUT = 1;
    private final int SHOW_SEEKBAR = 2;
    private final VideoHandler videoHandler = new VideoHandler(this);

    private View mCtrlView;                        //控制条布局view
    private View mProgressView;                    //进度条布局View
    private View mLoadingView;
    private Context mContext;                      //上下文
    private VideoPlayerController mPlayerCtrl;

    private ViewGroup mAnchorVGroup;                 //????
    private ImageButton mBtnFullscreen;              //全屏按钮
    private ImageButton mBtnPause;                   //暂停按钮
    private ImageButton mBtnPause1;                  //暂停按钮2
    private TextView mCurTime;                       //当前时间
    private TextView mEndTime;                       //最后时间


    private ProgressBar mSeekBar;                      //控制视图中的进度条
    private ProgressBar mProgressBar;                  //默认显示IDE进度条

    private boolean mIsCtlShowing;
    private boolean mIsDefaultProgressShowing;
    private boolean mIsDragging;
    private boolean mFromXml;
    private boolean mUseFastForward;
    private boolean mIsPause = true;                   //暂停，默认暂停

    private StringBuilder mStrBuilder;
    private Formatter mFormatter;
    private AnimationDrawable mLoadingAnimation;       //加载动画,提升人机交互友好性
    private boolean mIsLoadingComplelte;               //是否加载完成
    private LayoutInflater mInflater;                  //获取布局服务实例，用于实例化xml


    private WindowManager mWindowManager;
    private Window mWindow;
    private WindowManager.LayoutParams mDecorLayoutParams;

    //////////////////////////////////////////////////////////////////////////////////////

    public VideoController(@NonNull Context context) {
        super(context);
        mContext = context;


    }

    public VideoController(@NonNull Context context, @Nullable AttributeSet attrs) {
        super(context, attrs);
        mContext = context;



    }


    public VideoController(@NonNull Context context, @Nullable AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        mContext = context;


    }

    @RequiresApi(api = Build.VERSION_CODES.LOLLIPOP)
    public VideoController(@NonNull Context context, @Nullable AttributeSet attrs, int defStyleAttr, int defStyleRes) {
        super(context, attrs, defStyleAttr, defStyleRes);
        mContext = context;


    }

    /////////////////////////////////////////////////////////////////////////////////////////////////

    private void initFloatingWindowLayout() {
        mDecorLayoutParams = new WindowManager.LayoutParams();
        WindowManager.LayoutParams p = mDecorLayoutParams;
        p.gravity = Gravity.TOP | Gravity.LEFT;
        p.height = LayoutParams.WRAP_CONTENT;
        p.x = 0;
        p.format = PixelFormat.TRANSLUCENT;
        p.type = WindowManager.LayoutParams.TYPE_APPLICATION_PANEL;
        p.flags |= WindowManager.LayoutParams.FLAG_ALT_FOCUSABLE_IM
                | WindowManager.LayoutParams.FLAG_NOT_TOUCH_MODAL
                | WindowManager.LayoutParams.FLAG_SPLIT_TOUCH;
        p.token = null;
        p.windowAnimations = 0; // android.R.style.DropDownAnimationDown;
    }



    ///////////////////////////////////////////////////////////////////////

    /**
     * 接口
     */
    public interface VideoPlayerController {
        void start();  //开始播放

        void pause();  //暂停播放

        int getDuration(); //获得所播放视频的总时间

        int getCurrentPosition();  //获得当前的位置,我们可以用来设置播放时间的显示

        void seekTo(int pos); //设置播放位置，我们用来总快进的时候就能用到

        boolean isPlaying();

        int getBufferPercentage();

        boolean canPause();

        boolean canSeekBackward();

        boolean canSeekForward();

        int getAudioSessionId();

        boolean isComplete();  //是否播放完成

        boolean isFullScreen(); //是否全屏

        void fullScreen(); //全屏实现

    }


    @SuppressLint("HandlerLeak")
    private class VideoHandler extends Handler {

        private WeakReference<VideoController> weakReference;

        VideoHandler(VideoController videoController) {
            weakReference = new WeakReference<>(videoController);//弱引用
        }

        @Override
        public void handleMessage(Message msg) {
            super.handleMessage(msg);
            VideoController videoController = weakReference.get();
            if (videoController != null) {
                switch (msg.what) {

                    case SHOW_PROGRESSBAR://显示进度条
                        Log.i(TAG, "--显示进度条--");
                        break;
                    case FADE_OUT://退出进度条
                        Log.i(TAG, "--退出进度条--");

                        break;
                    case SHOW_SEEKBAR://更新显示进度条
                        Log.i(TAG, "--更新显示进度条--");

                        //videoController.setP
                        break;
                }
            }
        }
    }


    /////////////////////////////////////////////////////////////////////////////////////////////////
}
