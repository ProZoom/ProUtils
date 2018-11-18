package com.top.tool;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.graphics.drawable.Drawable;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.util.Log;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;

/**
 * 作者：ProZoom
 * 时间：2018/3/16
 * 描述：设备相关工具类
 */
public class AdbTool {

    private static final String TAG = "AdbTool";
    private static volatile AdbTool instance;// !!必须要加volatile限制指令重排序，不然这是双重检验的漏洞
    private static final Object lock = new Object();


    public AdbTool() {

    }

    //单例模式，懒汉氏
    public static AdbTool instance() {
        if (instance == null) {
            synchronized (lock) {
                if (instance == null) {
                    instance = new AdbTool();
                }
            }
        }
        return instance;
    }

    /////////////////////////////////////////////////////////////

    /**
     * app运行adb指令
     * 方法1
     **/
    public static void execShell(String cmd) {
        try {
            //权限设置
            Process p = Runtime.getRuntime().exec("su");
            //获取输出流
            OutputStream outputStream = p.getOutputStream();
            DataOutputStream dataOutputStream = new DataOutputStream(outputStream);
            //将命令写入
            dataOutputStream.writeBytes(cmd);
            //提交命令
            dataOutputStream.flush();
            //关闭流操作
            dataOutputStream.close();
            outputStream.close();
        } catch (Throwable t) {
            t.printStackTrace();
        }
    }

    /**
     * app运行adb指令
     * 方法2
     **/
    public static void execCommand(String command) throws IOException {
        Runtime runtime = Runtime.getRuntime();
        Process proc = runtime.exec(command);
        try {
            if (proc.waitFor() != 0) {
                System.err.println("exit value = " + proc.exitValue());
            }
            BufferedReader in = new BufferedReader(new InputStreamReader(
                    proc.getInputStream()));
            StringBuffer stringBuffer = new StringBuffer();
            String line = null;
            while ((line = in.readLine()) != null) {
                stringBuffer.append(line + " ");
            }
            System.out.println(stringBuffer.toString());

        } catch (InterruptedException e) {
            System.err.println(e);
        } finally {
            try {
                proc.destroy();
            } catch (Exception e2) {
                Log.e(TAG, e2.toString());
            }
        }
    }


}
