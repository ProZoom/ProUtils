package com.top.core.net.rx;

import android.content.Context;
import android.os.Handler;

import com.top.core.loader.LoaderStyle;
import com.top.core.loader.TopLoader;
import com.top.core.net.HttpMethod;
import com.top.core.net.RestClientBuilder;
import com.top.core.net.RestCreater;

import java.io.File;
import java.util.Map;

import io.reactivex.Observable;
import okhttp3.MediaType;
import okhttp3.MultipartBody;
import okhttp3.RequestBody;
import okhttp3.ResponseBody;

/**
 * 作者：ProZoom
 * 时间：2018/10/19
 * 描述：
 */
public class RxRestClient {

    private final Context mContext;


    private final String URL;

    private final Map<String, Object> PARAMS = RestCreater.getParams();



    private final ResponseBody responseBody;

    private final LoaderStyle LOADER_STYLE;
    private final File FILE;



    private static final Handler HANDLER = new Handler();

    public RxRestClient(Context context, String URL,
                        Map<String, Object> PARAMS,
                        ResponseBody responseBody,
                        File file,
                        LoaderStyle loaderStyle) {
        this.mContext = context;
        this.URL = URL;

        this.PARAMS.putAll(PARAMS);
        this.responseBody = responseBody;
        this.FILE = file;
        this.LOADER_STYLE = loaderStyle;
    }

    public static RestClientBuilder builder() {
        return new RestClientBuilder();
    }

    private Observable<String> request(HttpMethod method) {

        final RxRestService service = RestCreater.getRxRestService();

        Observable<String> observable = null;



        if (LOADER_STYLE != null) {
            TopLoader.showLoading(mContext, LOADER_STYLE);
        }

        switch (method) {
            case GET:
                observable = service.get(URL, PARAMS);
                break;
            case POST:
                observable = service.post(URL, PARAMS);
                break;
            case POST_RAW:
                observable = service.postRaw(URL, responseBody);
                break;
            case DELETE:
                observable = service.delete(URL, PARAMS);
                break;
            case PUT:
                observable = service.put(URL, PARAMS);
                break;

            case PUT_RAW:
                observable = service.putRaw(URL, responseBody);
                break;

            case UPLOAD:
                final RequestBody requestBody =
                        RequestBody.create(MediaType.parse(MultipartBody.FORM.toString()), FILE);
                final MultipartBody.Part body =
                        MultipartBody.Part.createFormData("file", FILE.getName());

                observable = RestCreater.getRxRestService().upLoad(URL, body);
                break;
            case DOWNLOAD:

                break;
            default:
                break;
        }

        return observable;
    }

    public final Observable<String> get() {
        return request(HttpMethod.GET);
    }

    public final Observable<String> post() {
        if (responseBody == null) {
            return request(HttpMethod.POST);

        } else {
            if (!PARAMS.isEmpty()) {
                throw new RuntimeException("params must be null!");
            }
            return request(HttpMethod.POST_RAW);
        }
    }


    public final Observable<String> put() {
        if (responseBody == null) {
            return request(HttpMethod.PUT);

        } else {
            if (!PARAMS.isEmpty()) {
                throw new RuntimeException("params must be null!");
            }
            return request(HttpMethod.PUT_RAW);

        }
    }

    public final Observable<String> delete() {
        return request(HttpMethod.DELETE);
    }


    public final Observable<ResponseBody> download() {
        final Observable<ResponseBody> responseBodyObservable = RestCreater.getRxRestService().download(URL, PARAMS);
        return responseBodyObservable;
    }


    ///////

}
