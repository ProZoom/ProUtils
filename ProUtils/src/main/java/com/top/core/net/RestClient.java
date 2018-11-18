package com.top.core.net;

import android.content.Context;
import android.os.Handler;

import com.top.core.loader.LoaderStyle;
import com.top.core.loader.TopLoader;
import com.top.core.net.callback.IError;
import com.top.core.net.callback.IFailure;
import com.top.core.net.callback.IRequest;
import com.top.core.net.callback.IRerofitCallBack;
import com.top.core.net.callback.ISuccess;
import com.top.core.net.download.DownLoadHandler;

import java.io.File;
import java.util.Map;

import okhttp3.MediaType;
import okhttp3.MultipartBody;
import okhttp3.RequestBody;
import okhttp3.ResponseBody;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

/**
 * 作者：ProZoom
 * 时间：2018/10/19
 * 描述：
 */
public class RestClient {

    private final Context mContext;


    private final String URL;

    private final Map<String, Object> PARAMS = RestCreater.getParams();


    private IRerofitCallBack iRerofitCallBack;
    private ISuccess SUCCESS;
    private IFailure FAILURE;
    private IError ERROR;
    private IRequest REQUEST;

    private final ResponseBody responseBody;

    private final LoaderStyle LOADER_STYLE;
    private final File FILE;
    private final String NAME;
    private final String EXTENSION;
    private final String DOWNLOAD_DIR;


    private static final Handler HANDLER = new Handler();

    public RestClient(Context context, String URL,
                      Map<String, Object> PARAMS,
                      IRerofitCallBack iRerofitCallBack,
                      ResponseBody responseBody,
                      File file,
                      LoaderStyle loaderStyle,
                      String name,
                      String extension,
                      String dir) {
        this.mContext = context;
        this.URL = URL;
        NAME = name;
        EXTENSION = extension;
        this.PARAMS.putAll(PARAMS);
        this.iRerofitCallBack = iRerofitCallBack;
        this.responseBody = responseBody;
        this.FILE = file;
        this.LOADER_STYLE = loaderStyle;
        this.DOWNLOAD_DIR = dir;
    }

    public RestClient(Context context, String URL,
                      Map<String, Object> PARAMS,
                      ISuccess success,
                      IFailure failure,
                      IError error,
                      IRequest request,
                      ResponseBody responseBody,
                      File file,
                      LoaderStyle loaderStyle,
                      String name,
                      String extension,
                      String dir) {
        this.mContext = context;
        this.URL = URL;
        NAME = name;
        EXTENSION = extension;
        this.PARAMS.putAll(PARAMS);
        this.SUCCESS = success;
        this.ERROR = error;
        this.FAILURE = failure;
        this.REQUEST = request;
        this.responseBody = responseBody;
        this.FILE = file;
        this.LOADER_STYLE = loaderStyle;
        this.DOWNLOAD_DIR = dir;
    }

    public static RestClientBuilder builder() {
        return new RestClientBuilder();
    }

    private void request(HttpMethod method) {

        final RestService service = RestCreater.getRestService();
        Call<String> call = null;
        if (iRerofitCallBack != null) {
            iRerofitCallBack.onRequestStart();
        }
        if (REQUEST != null) {
            REQUEST.onRequestStart();
        }

        if (LOADER_STYLE != null) {
            TopLoader.showLoading(mContext, LOADER_STYLE);
        }

        switch (method) {
            case GET:
                call = service.get(URL, PARAMS);
                break;
            case POST:
                call = service.post(URL, PARAMS);
                break;
            case POST_RAW:
                call = service.postRaw(URL, responseBody);
                break;
            case DELETE:
                call = service.delete(URL, PARAMS);
                break;
            case PUT:
                call = service.put(URL, PARAMS);
                break;

            case PUT_RAW:
                call = service.putRaw(URL, responseBody);
                break;

            case UPLOAD:
                final RequestBody requestBody =
                        RequestBody.create(MediaType.parse(MultipartBody.FORM.toString()), FILE);
                final MultipartBody.Part body =
                        MultipartBody.Part.createFormData("file", FILE.getName());

                call = RestCreater.getRestService().upLoad(URL, body);
                break;
            case DOWNLOAD:

                break;
            default:
                break;
        }

        if (call != null) {
            call.enqueue(new Callback<String>() {
                @Override
                public void onResponse(Call<String> call, Response<String> response) {
                    if (response.isSuccessful()) {
                        if (call.isExecuted()) {
                            if (iRerofitCallBack != null) {
                                iRerofitCallBack.onSuccess(response.body());
                            }
                            if (SUCCESS != null) {
                                SUCCESS.onSuccess(response.body());
                            }
                        }
                    } else {
                        if (iRerofitCallBack != null) {
                            iRerofitCallBack.onError(response.code(), response.message());
                        }
                        if (ERROR != null) {
                            ERROR.onError(response.code(), response.message());
                        }
                    }

                    if (LOADER_STYLE != null) {
                        HANDLER.postDelayed(new Runnable() {
                            @Override
                            public void run() {
                                TopLoader.stopLoading();
                            }
                        }, 100);
                    }
                }

                @Override
                public void onFailure(Call<String> call, Throwable t) {
                    if (iRerofitCallBack != null) {
                        iRerofitCallBack.onFail();
                    }
                    if (FAILURE != null) {
                        FAILURE.onFailure();
                    }
                    if (iRerofitCallBack != null) {
                        iRerofitCallBack.onRequestEnd();
                    }
                    if (REQUEST != null) {
                        REQUEST.onRequestEnd();
                    }
                    TopLoader.stopLoading();
                }

            });
        }
    }

    public final void get() {
        request(HttpMethod.GET);
    }

    public final void post() {
        if (responseBody == null) {
            request(HttpMethod.POST);

        } else {
            if (!PARAMS.isEmpty()) {
                throw new RuntimeException("params must be null!");
            }
            request(HttpMethod.POST_RAW);
        }
    }


    public final void put() {
        if (responseBody == null) {
            request(HttpMethod.PUT);

        } else {
            if (!PARAMS.isEmpty()) {
                throw new RuntimeException("params must be null!");
            }
            request(HttpMethod.PUT_RAW);

        }
    }

    public final void delete() {
        request(HttpMethod.DELETE);
    }


    public final void download() {
        new DownLoadHandler(mContext, URL, iRerofitCallBack, NAME, EXTENSION, DOWNLOAD_DIR).handleDownLoad();
        new DownLoadHandler(mContext, URL, SUCCESS,FAILURE, REQUEST,ERROR,NAME, EXTENSION, DOWNLOAD_DIR).handleDownLoad();
    }

    public final void download2() {
        new DownLoadHandler(mContext, URL, SUCCESS,FAILURE, REQUEST,ERROR,NAME, EXTENSION, DOWNLOAD_DIR).handleDownLoad2();
    }


    ///////

}
