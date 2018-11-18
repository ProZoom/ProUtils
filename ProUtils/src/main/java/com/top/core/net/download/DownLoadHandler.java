package com.top.core.net.download;

import android.content.Context;
import android.os.AsyncTask;

import com.top.core.net.RestCreater;
import com.top.core.net.callback.*;

import java.util.Map;

import okhttp3.ResponseBody;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

/**
 * 作者：ProZoom
 * 时间：2018/10/19
 * 描述：
 */
public class DownLoadHandler {

    private final Context mContext;

    private final String URL;

    private final Map<String, Object> PARAMS = RestCreater.getParams();

    private  IRerofitCallBack iRerofitCallBack;
    private ISuccess SUCCESS;
    private IFailure FAILURE;
    private IError ERROR;
    private IRequest REQUEST;

    private final String NAME;
    private final String EXTENSION;
    private final String DOWNLOAD_DIR;


    public DownLoadHandler(Context mContext, String URL, IRerofitCallBack iRerofitCallBack, String NAME, String EXTENSION, String DOWNLOAD_DIR) {
        this.mContext = mContext;
        this.URL = URL;
        this.iRerofitCallBack = iRerofitCallBack;
        this.NAME = NAME;
        this.EXTENSION = EXTENSION;
        this.DOWNLOAD_DIR = DOWNLOAD_DIR;
    }

    public DownLoadHandler(Context mContext, String URL,ISuccess success,IFailure failure,IRequest request,IError error, String NAME, String EXTENSION, String DOWNLOAD_DIR) {
        this.mContext = mContext;
        this.URL = URL;
        this.SUCCESS=success;
        this.ERROR=error;
        this.FAILURE=failure;
        this.REQUEST=request;
        this.NAME = NAME;
        this.EXTENSION = EXTENSION;
        this.DOWNLOAD_DIR = DOWNLOAD_DIR;
    }

    public final void handleDownLoad() {

        if (iRerofitCallBack != null) {
            iRerofitCallBack.onRequestStart();
        }
        if (REQUEST!=null) {
            REQUEST.onRequestStart();
        }

        RestCreater.getRestService().download(URL, PARAMS).enqueue(new Callback<ResponseBody>() {
            @Override
            public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
                if (response.isSuccessful()) {
                    final SaveFileTask task = new SaveFileTask(iRerofitCallBack);

                    task.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, DOWNLOAD_DIR, EXTENSION, response, NAME);

                    //判断文件是否下载完成
                    if (task.isCancelled()) {
                        if (iRerofitCallBack != null) {
                            iRerofitCallBack.onRequestEnd();
                        }
                        if (REQUEST!=null) {
                            REQUEST.onRequestEnd();
                        }
                    }
                }else {
                    iRerofitCallBack.onError(response.code(),response.message());
                    if (ERROR!=null) {
                        ERROR.onError(response.code(),response.message());
                    }
                }
            }

            @Override
            public void onFailure(Call<ResponseBody> call, Throwable t) {

                if (iRerofitCallBack != null) {
                    iRerofitCallBack.onFail();
                }
                if (FAILURE!=null) {
                    FAILURE.onFailure();
                }
            }
        });
    }


    public final void handleDownLoad2() {

        if (iRerofitCallBack != null) {
            iRerofitCallBack.onRequestStart();
        }
        if (REQUEST!=null) {
            REQUEST.onRequestStart();
        }

        RestCreater.getRestService().download(URL, PARAMS).enqueue(new Callback<ResponseBody>() {
            @Override
            public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
                if (response.isSuccessful()) {

                    final SaveFileTask task = new SaveFileTask(REQUEST,SUCCESS);

                    task.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, DOWNLOAD_DIR, EXTENSION, response, NAME);

                    //判断文件是否下载完成
                    if (task.isCancelled()) {
                        if (iRerofitCallBack != null) {
                            iRerofitCallBack.onRequestEnd();
                        }
                        if (REQUEST!=null) {
                            REQUEST.onRequestEnd();
                        }
                    }
                }else {
                    iRerofitCallBack.onError(response.code(),response.message());
                    if (ERROR!=null) {
                        ERROR.onError(response.code(),response.message());
                    }
                }
            }

            @Override
            public void onFailure(Call<ResponseBody> call, Throwable t) {

                if (iRerofitCallBack != null) {
                    iRerofitCallBack.onFail();
                }
                if (FAILURE!=null) {
                    FAILURE.onFailure();
                }
            }
        });
    }
}
