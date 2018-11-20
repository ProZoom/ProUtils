package com.top.proutilsdemo.view.activity;

import android.app.Activity;
import android.os.Bundle;
import android.support.annotation.Nullable;

import com.top.proutilsdemo.R;

import butterknife.ButterKnife;


/**
 * 作者：李阳
 * 时间：2018/10/9
 * 描述：
 */
public class testActivity extends Activity {



    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_test);
        ButterKnife.bind(this);

        //网络播放
        //Uri uri = Uri.parse("http://221.228.226.23/6/n/a/y/l/naylspkwvsujoltcqursegarxzowax/hd.yinyuetai.com/C02F015B377EA255563C19FBEF88B071.mp4");
        //vv.setVideoURI(uri);

        //本地sd卡播放
        //String path_local = Environment.getExternalStorageDirectory().getAbsolutePath() + "/vivo.avi";
        //vv.setVideoPath(path_local);


        //使用MediaController控制视频播放
        //MediaController mediaController = new MediaController(this);
        //vv.setMediaController(mediaController);
        //mediaController.setMediaPlayer(vv);

        //使用VideoController控制视频播放
        //VideoController videoController = new VideoController(this);
        //vp.setVideoController(videoController);
        //videoController.setVideoPlayer(vp);

        //vv.start();
    }


}
