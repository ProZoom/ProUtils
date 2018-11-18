package com.top.utils;

import android.content.res.Resources;
import android.util.DisplayMetrics;

import com.top.core.app.Top;

/**
 * 作者：ProZoom
 * 时间：2018/10/19
 * 描述：
 */
public class DimenUtil {

    public static int getScreenWidth(){
        final Resources resources=Top.getApplication().getResources();
        final DisplayMetrics dm=resources.getDisplayMetrics();

        return dm.widthPixels;
    }


    public static int getScreenHeight(){
        final Resources resources=Top.getApplication().getResources();
        final DisplayMetrics dm=resources.getDisplayMetrics();

        return dm.heightPixels;
    }
}
