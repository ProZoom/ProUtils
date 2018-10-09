package com.top.proutils.tool;

import android.annotation.SuppressLint;
import android.app.Application;
import android.content.Context;

import java.lang.reflect.Method;

/**
 * 作者：ProZoom
 * 时间：2018/3/16
 * 描述：
 */
public class AnTools {

    private static DeviceTool mDevice;
    private static AppTool mApp;
    private static DataTool mData;
    private static BitmapTool mBitmap;
    private static EncryptionTool mEncryption;

    private static SnackbarTool mSnackbar;

    private static Application mApplication;

    public AnTools() {
        throw new UnsupportedOperationException("not support instantiate Tools");
    }

    public static void init(Application app) {
        if (mApplication == null) {
            mApplication = app;
        }
    }

    public static Application application() {
        if (mApplication == null) {
            try {
                try {
                    // 在IDE进行布局预览时使用
                    @SuppressLint("PrivateApi") Class<?> renderActionClass = Class.forName("com.android.layoutlib.bridge.impl.RenderAction");
                    Method method = renderActionClass.getDeclaredMethod("getCurrentContext");
                    Context context = (Context) method.invoke(null);
                    mApplication = new MockApplication(context);
                } catch (Throwable ignored) {
                    throw new RuntimeException("please invoke x.Ext.init(app) on Application#onCreate()"
                            + " and register your Application in manifest.");
                }
            } catch (Throwable ignored) {
                throw new RuntimeException("please invoke Tools.init(app) on Application#onCreate()"
                        + " and register your Application in manifest.");
            }
        }
        return mApplication;
    }

    public static DeviceTool device() {
        if (mDevice == null) {
            mDevice = DeviceTool.instance();
        }
        return mDevice;
    }

    public static AppTool app() {
        if (mApp == null) {
            mApp = AppTool.instance();
        }
        return mApp;
    }

     public static EncryptionTool Encryption() {
        if (mEncryption == null) {
            mEncryption = EncryptionTool.instance();
        }
        return mEncryption;
    }

    public static BitmapTool bitmap() {
        if (mBitmap == null) {
            mBitmap = BitmapTool.instance();
        }
        return mBitmap;
    }

     public static SnackbarTool snackbar() {
        if (mSnackbar == null) {
            mSnackbar = SnackbarTool.instance();
        }
        return mSnackbar;
    }

    public static DataTool data() {
        if (mData == null) {
            mData = DataTool.instance();
        }
        return mData;
    }

    private static class MockApplication extends Application {
        public MockApplication(Context baseContext) {
            this.attachBaseContext(baseContext);
        }
    }

}
