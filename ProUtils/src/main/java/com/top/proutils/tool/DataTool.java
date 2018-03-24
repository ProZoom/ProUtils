package com.top.proutils.tool;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Log;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;

/**
 * 作者：ProZoom
 * 时间：2018/3/16
 * 描述：设备相关工具类
 */
public class DataTool {

    private static final String TAG = "DataTool";
    private static volatile DataTool instance;// !!必须要加volatile限制指令重排序，不然这是双重检验的漏洞
    private static final Object lock = new Object();


    public DataTool() {

    }

    //单例模式，懒汉氏
    public static DataTool instance() {
        if (instance == null) {
            synchronized (lock) {
                if (instance == null) {
                    instance = new DataTool();
                }
            }
        }
        return instance;
    }

    /////Sp
    public static void spPutString(Context context, String fileName, String key, String value) {
        SharedPreferences sharedPreferences = context.getSharedPreferences(fileName, context.MODE_PRIVATE);
        sharedPreferences.edit().putString(key, value).apply();//提交数据
    }

    public static String spGetString(Context context, String fileName, String key, String value) {
        SharedPreferences sharedPreferences = context.getSharedPreferences(fileName, context.MODE_PRIVATE);

        return sharedPreferences.getString(key, value);
    }

    public static void spPutBoolean(Context context, String fileName, String key, boolean value) {
        SharedPreferences sharedPreferences = context.getSharedPreferences(fileName, context.MODE_PRIVATE);
        sharedPreferences.edit().putBoolean(key, value).apply();//提交数据
    }

    public static boolean spGetBoolean(Context context, String fileName, String key, boolean value) {
        SharedPreferences sharedPreferences = context.getSharedPreferences(fileName, context.MODE_PRIVATE);

        return sharedPreferences.getBoolean(key, value);
    }


    /*
    * 描述：缓存数据
    * @param [obj, path]
    * @return void
    */
    public static void cacheSave(Object obj, String path) {
        try {
            File f = new File(path);
            FileOutputStream fos = new FileOutputStream(f);
            ObjectOutputStream oos = new ObjectOutputStream(fos);
            oos.writeObject(obj);
            oos.flush();
            oos.close();
        } catch (IOException e) {
            Log.i(TAG, "save: " + e.toString());
        }
    }

    /*
    * 描述：读取缓存的数据
    * @param [path]
    * @return java.lang.Object
    */
    public static Object cacheLoad(String path) {
        Object obj = null;
        File file = new File(path);
        try {
            if (file.exists()) {
                FileInputStream fis = new FileInputStream(file);
                ObjectInputStream ois = new ObjectInputStream(fis);
                try {
                    obj = ois.readObject();
                } catch (ClassNotFoundException e) {
                }
                ois.close();
            }
        } catch (IOException e) {
            Log.i(TAG, "save: " + e.toString());
        }
        return obj;
    }
}
