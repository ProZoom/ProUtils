package com.top.proutils.tool;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.PixelFormat;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.AsyncTask;
import android.os.Environment;
import android.util.Log;
import android.util.LruCache;
import android.widget.ImageView;

import com.top.proutils.R;
import com.top.proutils.Utils.ProCache;

import org.json.JSONArray;
import org.json.JSONObject;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.RandomAccessFile;
import java.io.Serializable;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;

/**
 * 作者：李阳
 * 时间：2018/5/24
 * 描述：图片缓存、字段缓存等
 */
public class CacheTool {

    private static final String TAG ="CacheTool";

    private static volatile CacheTool instance;// !!必须要加volatile限制指令重排序，不然这是双重检验的漏洞
    private static final Object lock = new Object();

    private NetCacheUtils mNetCacheUtils;
    private LocalCacheUtils mLocalCacheUtils;
    private MemoryCacheUtils mMemoryCacheUtils;

    public CacheTool() {
        mMemoryCacheUtils = new MemoryCacheUtils();
        mLocalCacheUtils = new LocalCacheUtils();
        mNetCacheUtils = new NetCacheUtils(mLocalCacheUtils, mMemoryCacheUtils);
    }

    //单例模式，懒汉氏
    public static CacheTool instance() {
        if (instance == null) {
            synchronized (lock) {
                if (instance == null) {
                    instance = new CacheTool();
                }
            }
        }
        return instance;
    }

    /////////////////////////////////////////////////

    /**
     * 三级缓存
     * @param ivPic
     * @param defaultImg
     * @param url
     */
    public void disPlay(ImageView ivPic,int defaultImg, String url) {

        ivPic.setImageResource(defaultImg);

        Bitmap bitmap;
        //内存缓存
        bitmap = mMemoryCacheUtils.getBitmapFromMemory(url);
        if (bitmap != null) {
            ivPic.setImageBitmap(bitmap);
            Log.i(TAG,"从内存获取图片啦.....");
            return;
        }

        //本地缓存
        bitmap = mLocalCacheUtils.getBitmapFromLocal(url);
        if (bitmap != null) {
            ivPic.setImageBitmap(bitmap);
            System.out.println("");
            Log.i(TAG,"从本地获取图片啦.....");
            mMemoryCacheUtils.setBitmapToMemory(url, bitmap);
            return;
        }
        //网络缓存
        mNetCacheUtils.getBitmapFromNet(ivPic, url);
    }


    /**
     * 三级缓存之网络缓存
     */
    public class NetCacheUtils {

        private LocalCacheUtils mLocalCacheUtils;
        private MemoryCacheUtils mMemoryCacheUtils;

        public NetCacheUtils(LocalCacheUtils localCacheUtils, MemoryCacheUtils memoryCacheUtils) {
            mLocalCacheUtils = localCacheUtils;
            mMemoryCacheUtils = memoryCacheUtils;
        }

        /**
         * 从网络下载图片
         *
         * @param ivPic 显示图片的imageview
         * @param url   下载图片的网络地址
         */
        public void getBitmapFromNet(ImageView ivPic, String url) {
            new BitmapTask().execute(ivPic, url);//启动AsyncTask

        }

        /**
         * AsyncTask就是对handler和线程池的封装
         * 第一个泛型:参数类型
         * 第二个泛型:更新进度的泛型
         * 第三个泛型:onPostExecute的返回结果
         */
        class BitmapTask extends AsyncTask<Object, Void, Bitmap> {

            private ImageView ivPic;
            private String url;

            /**
             * 后台耗时操作,存在于子线程中
             *
             * @param params
             * @return
             */
            @Override
            protected Bitmap doInBackground(Object[] params) {
                ivPic = (ImageView) params[0];
                url = (String) params[1];

                return downLoadBitmap(url);
            }

            /**
             * 更新进度,在主线程中
             *
             * @param values
             */
            @Override
            protected void onProgressUpdate(Void[] values) {
                super.onProgressUpdate(values);
            }

            /**
             * 耗时方法结束后执行该方法,主线程中
             *
             * @param result
             */
            @Override
            protected void onPostExecute(Bitmap result) {
                if (result != null) {
                    ivPic.setImageBitmap(result);
                    System.out.println("从网络缓存图片啦.....");

                    //从网络获取图片后,保存至本地缓存
                    mLocalCacheUtils.setBitmapToLocal(url, result);
                    //保存至内存中
                    mMemoryCacheUtils.setBitmapToMemory(url, result);

                }
            }
        }

        /**
         * 网络下载图片
         *
         * @param url
         * @return
         */
        private Bitmap downLoadBitmap(String url) {
            HttpURLConnection conn = null;
            try {
                conn = (HttpURLConnection) new URL(url).openConnection();
                conn.setConnectTimeout(5000);
                conn.setReadTimeout(5000);
                conn.setRequestMethod("GET");

                int responseCode = conn.getResponseCode();
                if (responseCode == 200) {
                    //图片压缩
                    BitmapFactory.Options options = new BitmapFactory.Options();
                    options.inSampleSize = 2;//宽高压缩为原来的1/2
                    options.inPreferredConfig = Bitmap.Config.ARGB_4444;
                    Bitmap bitmap = BitmapFactory.decodeStream(conn.getInputStream(), null, options);
                    return bitmap;
                }
            } catch (IOException e) {
                e.printStackTrace();
            } finally {
                conn.disconnect();
            }

            return null;
        }
    }


    /**
     * 三级缓存之本地缓存
     */
    public class LocalCacheUtils {


        private final String CACHE_PATH = Environment.getExternalStorageDirectory().getAbsolutePath() + "/WerbNews";

        /**
         * 从本地读取图片
         *
         * @param url
         */
        public Bitmap getBitmapFromLocal(String url) {
            String fileName = null;//把图片的url当做文件名,并进行MD5加密
            try {
                fileName = AnTools.Encryption().md5(url);
                File file = new File(CACHE_PATH, fileName);

                Bitmap bitmap = BitmapFactory.decodeStream(new FileInputStream(file));

                return bitmap;
            } catch (Exception e) {
                e.printStackTrace();
            }

            return null;
        }

        /**
         * 从网络获取图片后,保存至本地缓存
         *
         * @param url
         * @param bitmap
         */
        public void setBitmapToLocal(String url, Bitmap bitmap) {
            try {
                String fileName = AnTools.Encryption().md5(url);//把图片的url当做文件名,并进行MD5加密
                File file = new File(CACHE_PATH, fileName);

                //通过得到文件的父文件,判断父文件是否存在
                File parentFile = file.getParentFile();
                if (!parentFile.exists()) {
                    parentFile.mkdirs();
                }

                //把图片保存至本地
                bitmap.compress(Bitmap.CompressFormat.JPEG, 100, new FileOutputStream(file));
            } catch (Exception e) {
                e.printStackTrace();
            }

        }
    }


    /**
     * 三级缓存之内存缓存
     */
    public class MemoryCacheUtils {

        // private HashMap<String,Bitmap> mMemoryCache=new HashMap<>();//1.因为强引用,容易造成内存溢出，所以考虑使用下面弱引用的方法
        // private HashMap<String, SoftReference<Bitmap>> mMemoryCache = new HashMap<>();//2.因为在Android2.3+后,系统会优先考虑回收弱引用对象,官方提出使用LruCache
        private LruCache<String, Bitmap> mMemoryCache;

        public MemoryCacheUtils() {
            long maxMemory = Runtime.getRuntime().maxMemory() / 8;//得到手机最大允许内存的1/8,即超过指定内存,则开始回收
            //需要传入允许的内存最大值,虚拟机默认内存16M,真机不一定相同
            mMemoryCache = new LruCache<String, Bitmap>((int) maxMemory) {
                //用于计算每个条目的大小
                @Override
                protected int sizeOf(String key, Bitmap value) {
                    int byteCount = value.getByteCount();
                    return byteCount;
                }
            };

        }

        /**
         * 从内存中读图片
         *
         * @param url
         */
        public Bitmap getBitmapFromMemory(String url) {
            //Bitmap bitmap = mMemoryCache.get(url);//1.强引用方法
            /*2.弱引用方法
            SoftReference<Bitmap> bitmapSoftReference = mMemoryCache.get(url);
            if (bitmapSoftReference != null) {
                Bitmap bitmap = bitmapSoftReference.get();
                return bitmap;
            }
            */
            Bitmap bitmap = mMemoryCache.get(url);
            return bitmap;

        }

        /**
         * 往内存中写图片
         *
         * @param url
         * @param bitmap
         */
        public void setBitmapToMemory(String url, Bitmap bitmap) {
            //mMemoryCache.put(url, bitmap);//1.强引用方法
            /*2.弱引用方法
            mMemoryCache.put(url, new SoftReference<>(bitmap));
            */
            mMemoryCache.put(url, bitmap);
        }
    }


}
