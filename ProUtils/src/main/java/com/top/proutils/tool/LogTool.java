package com.top.proutils.tool;

import android.util.Log;


import java.io.File;
import java.io.FileOutputStream;
import java.util.Calendar;
import java.util.TimeZone;

/**
 * 作者：ProZoom
 * 时间：2018/3/16
 * 描述：Log工具类，支持本地Log
 */
public class LogTool {

    private static final String TAG = "LogTool";
    private static volatile LogTool instance;// !!必须要加volatile限制指令重排序，不然这是双重检验的漏洞
    private static final Object lock = new Object();


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


    /*********本地Log********/
    private boolean androidLogOn = true;
    private boolean localLogOn = true;
    private String defalutTag = "LocalLog";
    private String fileName = "LocalLog";


    private String fileType = "txt";
    public final int INFO = 2;
    public final int ERROR = 3;
    public final int FAIL = 4;
    public final int SUCCESS = 5;

    /**
     * 设置log保存的文件类型，如 txt log等
     *
     * @param fileType
     */
    public void setFileType(String fileType) {
        this.fileType = fileType;
    }

    /**
     * 设置默认的tag
     *
     * @param defalutTag
     */
    public void setDefalutTag(String defalutTag) {
        this.defalutTag = defalutTag;
    }

    /**
     * 修改log的存放路径，如 /sdcard/mylog
     *
     * @param logPath
     */
    public void setLogPath(String logPath) {
        this.logPath = logPath;
    }

    /**
     * 修改log的文件名前缀
     *
     * @param fileName
     */
    public void setFileName(String fileName) {
        this.fileName = fileName;
    }

    /**
     * 切换log的保存状态,默认情况下两个都打印Log
     *
     * @param androidLogOn Android自带的log开启状态
     * @param localLogOn   txt文件记录状态
     */
    public void switchLog(boolean androidLogOn, boolean localLogOn) {
        this.androidLogOn = androidLogOn;
        this.localLogOn = localLogOn;
    }

    public void i(String msg) {
        byte[] buffer = msg.getBytes();
        if (androidLogOn)
            Log.i(defalutTag, msg);
        if (localLogOn)
            printToFile(INFO, defalutTag, buffer);
    }

    public void i(String tag, String msg) {
        byte[] buffer = msg.getBytes();
        if (androidLogOn)
            Log.i(tag, msg);
        if (localLogOn)
            printToFile(INFO, tag, buffer);
    }

    public void e(String msg) {
        byte[] buffer = msg.getBytes();
        if (androidLogOn)
            Log.e(defalutTag, msg);
        if (localLogOn)
            printToFile(ERROR, defalutTag, buffer);
    }

    public void e(String tag, String msg) {
        byte[] buffer = msg.getBytes();
        if (androidLogOn)
            Log.e(tag, msg);
        if (localLogOn)
            printToFile(ERROR, tag, buffer);
    }

    public void f(String msg) {
        byte[] buffer = msg.getBytes();
        if (androidLogOn)
            Log.d(defalutTag, msg);
        if (localLogOn)
            printToFile(FAIL, defalutTag, buffer);
    }

    public void f(String tag, String msg) {
        byte[] buffer = msg.getBytes();
        if (androidLogOn)
            Log.d(tag, msg);
        if (localLogOn)
            printToFile(FAIL, tag, buffer);
    }

    public void s(String msg) {
        byte[] buffer = msg.getBytes();
        if (androidLogOn)
            Log.i(defalutTag, msg);
        if (localLogOn)
            printToFile(SUCCESS, defalutTag, buffer);
    }

    public void s(String tag, String msg) {
        byte[] buffer = msg.getBytes();
        if (androidLogOn)
            Log.i(tag, msg);
        if (localLogOn)
            printToFile(SUCCESS, tag, buffer);
    }

    /**
     * 打印到文件
     *
     * @param priority
     * @param tag
     * @param buffer
     */
    private String logPath = "/sdcard/LocalLog";

    private void printToFile(int priority, String tag, byte[] buffer) {

        String logpath = logPath;
        Calendar cal = Calendar.getInstance(TimeZone.getTimeZone("GMT+08:00"));
        int year = cal.get(Calendar.YEAR);
        int month = cal.get(Calendar.MONTH) + 1;
        int day = cal.get(Calendar.DAY_OF_MONTH);
        int hour = cal.get(Calendar.HOUR_OF_DAY);
        int minute = cal.get(Calendar.MINUTE);
        int second = cal.get(Calendar.SECOND);
        int millisecond = cal.get(Calendar.MILLISECOND);

        String timeString = String.format("%d-%02d-%02d %02d:%02d:%02d.%d", year, month, day, hour, minute, second, millisecond);
        String headString = String.format("\r\n%s\t(%d)\ttag:%s\tdata:", timeString, priority, tag);
        byte[] headBuffer = headString.getBytes();
        String logFileName;
        switch (priority) {
            case INFO:
                logFileName = "%s/" + fileName + "_Info%d%02d%02d.%s";
                break;
            case ERROR:
                logFileName = "%s/" + fileName + "_Error%d%02d%02d.%s";
                break;
            case FAIL:
                logFileName = "%s/" + fileName + "_Fail%d%02d%02d.%s";
                break;
            case SUCCESS:
                logFileName = "%s/" + fileName + "_Success%d%02d%02d.%s";
                break;
            default:
                logFileName = "%s/" + fileName + "%d%02d%02d.%s";
        }
        logFileName = String.format(logFileName, logpath, year, month, day, fileType);
        FileOutputStream fo = null;
        try {
            File file = new File(logFileName);
            if (!file.getParentFile().exists()) {
                file.getParentFile().mkdirs();
                file.createNewFile();
            }
            fo = new FileOutputStream(file, true);
            fo.write(headBuffer);
            fo.write(buffer);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (fo != null) {
                try {
                    fo.close();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
    }

}
