package com.top.core.net.rx;

import android.content.Context;

import com.top.core.loader.LoaderStyle;
import com.top.core.net.RestCreater;

import java.io.File;
import java.util.Map;
import java.util.WeakHashMap;

import okhttp3.MediaType;
import okhttp3.ResponseBody;

/**
 * 作者：ProZoom
 * 时间：2018/10/19
 * 描述：
 */
public class RxRestClientBuilder {

    private Context mContext=null;

    private String mURL=null;

    private Map<String, Object> mPARAMS=RestCreater.getParams();



    private ResponseBody mResponseBody=null;

    private File mFile=null;

    private LoaderStyle mLoaderStyle=null;

    public RxRestClientBuilder() {

    }

    public final RxRestClientBuilder url(String url){
        this.mURL=url;
        return this;
    }
    public final RxRestClientBuilder param(Map<String,Object> params){
        this.mPARAMS=params;
        return this;
    }

     public final RxRestClientBuilder param(String key, Object value){
        if (mPARAMS==null) {
            mPARAMS=new WeakHashMap<>();
        }
        this.mPARAMS.put(key,value);
        return this;
    }




    public final RxRestClientBuilder file(File file){
        this.mFile=file;
        return this;
    }

    public final RxRestClientBuilder file(String file){
        this.mFile=new File(file);
        return this;
    }

     public final RxRestClientBuilder raw(String raw){
        this.mResponseBody=ResponseBody.create(MediaType.parse("application/json;charset=UTF-8"),raw);
        return this;
    }




    private Map<String ,Object> checkParam(){
        if (mPARAMS==null) {
            return new WeakHashMap<>();
        }
        return mPARAMS;
    }


    public final RxRestClientBuilder loader(Context context, LoaderStyle style){
        this.mContext=context;
        this.mLoaderStyle=style;
        return this;
    }

    public final RxRestClientBuilder loader(Context context){
        this.mContext=context;
        this.mLoaderStyle=LoaderStyle.BallClipRotatePulseIndicator;
        return this;
    }


    public final RxRestClient build(){
        return new RxRestClient(mContext,mURL,mPARAMS,mResponseBody,mFile,mLoaderStyle);
    }
}
