package com.top.core.net.rx;

import java.util.Map;

import io.reactivex.Observable;
import okhttp3.MultipartBody;
import okhttp3.ResponseBody;
import retrofit2.http.*;

/**
 * 作者：ProZoom
 * 时间：2018/10/19
 * 描述：网络接口
 */
public interface RxRestService {

    @GET
    Observable<String> get(@Url String url, @QueryMap Map<String, Object> params);

    @FormUrlEncoded
    @POST
    Observable<String> post(@Url String url, @FieldMap Map<String, Object> params);

    @POST
    Observable<String> postRaw(@Url String url, @Body ResponseBody body);

    @FormUrlEncoded
    @PUT
    Observable<String> put(@Url String url, @FieldMap Map<String, Object> params);

     @PUT
    Observable<String> putRaw(@Url String url, @Body ResponseBody body);


    @DELETE
    Observable<String> delete(@Url String url, @QueryMap Map<String, Object> params);


    @Streaming
    @GET
    Observable<ResponseBody> download(@Url String url, @QueryMap Map<String, Object> params);

    @Multipart
    @POST
    Observable<String> upLoad(@Url String url, @Part MultipartBody.Part params);

}
