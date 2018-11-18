package com.top.core.net;

import android.content.Context;

import com.top.core.loader.LoaderStyle;
import com.top.core.net.callback.IError;
import com.top.core.net.callback.IFailure;
import com.top.core.net.callback.IRequest;
import com.top.core.net.callback.IRerofitCallBack;
import com.top.core.net.callback.ISuccess;

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
public class RestClientBuilder {

    private Context mContext=null;

    private String mURL=null;

    private Map<String, Object> mPARAMS=RestCreater.getParams();


    private IRerofitCallBack mIRerofitCallBack=null;

    private ISuccess iSuccess=null;
    private IFailure iFailure=null;
    private IError iError=null;
    private IRequest iRequest=null;

    private ResponseBody mResponseBody=null;

    private File mFile=null;

    private String mDownloadDir=null;

    private String mExtension=null;

    private String mName=null;

    private LoaderStyle mLoaderStyle=null;

    public RestClientBuilder() {

    }

    public final RestClientBuilder url(String url){
        this.mURL=url;
        return this;
    }
    public final RestClientBuilder param(Map<String,Object> params){
        this.mPARAMS=params;
        return this;
    }
    public final RestClientBuilder param(String key,Object value){
        if (mPARAMS==null) {
            mPARAMS=new WeakHashMap<>();
        }
        this.mPARAMS.put(key,value);
        return this;
    }
    //路径
    public final RestClientBuilder dir(String dir){
        this.mDownloadDir=dir;
        return this;
    }
    //目录
    public final RestClientBuilder extension(String extension){
        this.mExtension=extension;
        return this;
    }
    public final RestClientBuilder file(File file){
        this.mFile=file;
        return this;
    }
    public final RestClientBuilder file(String file){
        this.mFile=new File(file);
        return this;
    }
    public final RestClientBuilder raw(String raw){
        this.mResponseBody=ResponseBody.create(MediaType.parse("application/json;charset=UTF-8"),raw);
        return this;
    }
    public final RestClientBuilder RetrofitCallBack(IRerofitCallBack iRerofitCallBack){
        this.mIRerofitCallBack=iRerofitCallBack;
        return this;
    }
    public final RestClientBuilder success(ISuccess iSuccess){
        this.iSuccess=iSuccess;
        return this;
    }
    public final RestClientBuilder failure(IFailure iFailure){
        this.iFailure=iFailure;
        return this;
    }
    public final RestClientBuilder error(IError iError){
        this.iError=iError;
        return this;
    }
    public final RestClientBuilder request(IRequest iRequest){
        this.iRequest=iRequest;
        return this;
    }
    public Map<String ,Object> checkParam(){
        if (mPARAMS==null) {
            return new WeakHashMap<>();
        }
        return mPARAMS;
    }
    public final RestClientBuilder loader(Context context,LoaderStyle style){
        this.mContext=context;
        this.mLoaderStyle=style;
        return this;
    }
    public final RestClientBuilder loader(Context context){
        this.mContext=context;
        this.mLoaderStyle=LoaderStyle.BallClipRotatePulseIndicator;
        return this;
    }

    public final RestClient build2(){
        return new RestClient(mContext,mURL,mPARAMS,mIRerofitCallBack,mResponseBody,mFile,mLoaderStyle, mName, mExtension,mDownloadDir);
    }

    public final RestClient build(){
        return new RestClient(mContext,mURL,mPARAMS,iSuccess, iFailure, iError, iRequest,mResponseBody,mFile,mLoaderStyle, mName, mExtension,mDownloadDir);
    }
}
