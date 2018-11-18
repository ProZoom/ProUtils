package com.top.core.loader;

import android.content.Context;
import android.support.v7.app.AppCompatDialog;
import android.view.Gravity;
import android.view.Window;
import android.view.WindowManager;

import com.top.proutils.R;
import com.top.utils.DimenUtil;
import com.wang.avi.AVLoadingIndicatorView;

import java.util.ArrayList;

/**
 * 作者：ProZoom
 * 时间：2018/10/19
 * 描述：
 */
public class TopLoader {

    private static final int LOADING_SIZE_SCALE = 8;
    private static final int LOADING_OFFSET_SCALE = 10;

    private static final ArrayList<AppCompatDialog> LOADINGS = new ArrayList<>();

    private static final String DEFAULT_LOADER = LoaderStyle.BallClipRotatePulseIndicator.name();

    public static void showLoading(Context context, Enum<LoaderStyle> type) {
        showLoading(context, type.name());
    }


    public static void showLoading(Context context, String type) {
        final AppCompatDialog dialog = new AppCompatDialog(context, R.style.dialog);

        final AVLoadingIndicatorView avLoadingIndicatorView = LoaderCreator.create(type, context);

        dialog.setContentView(avLoadingIndicatorView);

        int deviceWidth = DimenUtil.getScreenWidth();
        int deviceHeight = DimenUtil.getScreenHeight();

        final Window dialigWindow = dialog.getWindow();

        if (dialigWindow != null) {
            WindowManager.LayoutParams lp = dialigWindow.getAttributes();
            lp.width = deviceWidth / LOADING_SIZE_SCALE;
            lp.height = deviceHeight / LOADING_SIZE_SCALE;
            lp.height = lp.height + deviceHeight / LOADING_OFFSET_SCALE;
            lp.gravity = Gravity.CENTER;
        }

        LOADINGS.add(dialog);

        dialog.show();

    }

    public static void showLoding(Context context) {
        showLoading(context, DEFAULT_LOADER);
    }

    public static void stopLoading() {
        for (AppCompatDialog dialog : LOADINGS) {
            if (dialog != null) {
                dialog.cancel();
                //dialog.dismiss();
            }
        }
    }


}
