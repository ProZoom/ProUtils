package com.top.proutils.tool;

/**
 * 作者：ProZoom
 * 时间：2018/3/16
 * 描述：设备相关工具类
 */
public class LogTool {

    private static final String TAG = "LogTool";
    private static volatile LogTool instance;// !!必须要加volatile限制指令重排序，不然这是双重检验的漏洞
    private static final Object lock = new Object();


     private boolean DEBUG = true;
    private String mTag;

    public LogTool() {

    }

    //单例模式，懒汉氏
    public static LogTool instance() {
        if (instance == null) {
            synchronized (lock) {
                if (instance == null) {
                    instance = new LogTool();
                }
            }
        }
        return instance;
    }





}
