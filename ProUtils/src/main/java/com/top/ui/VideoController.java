package com.cw.u8.test;

/**
 * 作者：李阳
 * 时间：2018/11/23
 * 描述：
 */
public class VideoController {


    public interface MediaPlayerControl {

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

}
