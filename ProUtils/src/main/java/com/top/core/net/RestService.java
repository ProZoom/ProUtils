package com.top.core.net;

import java.util.Map;

import okhttp3.MultipartBody;
import okhttp3.ResponseBody;
import retrofit2.Call;
import retrofit2.http.*;

/**
 * 作者：ProZoom
 * 时间：2018/10/19
 * 描述：网络接口
 */
public interface RestService {

    @GET
    Call<String> get(@Url String url, @QueryMap Map<String, Object> params);

    @FormUrlEncoded
    @POST
    Call<String> post(@Url String url, @FieldMap Map<String, Object> params);

    @POST
    Call<String> postRaw(@Url String url, @Body ResponseBody body);

    @FormUrlEncoded
    @PUT
    Call<String> put(@Url String url, @FieldMap Map<String, Object> params);

     @PUT
    Call<String> putRaw(@Url String url, @Body ResponseBody body);


    @DELETE
    Call<String> delete(@Url String url, @QueryMap Map<String, Object> params);


    @Streaming
    @GET
    Call<ResponseBody> download(@Url String url, @QueryMap Map<String, Object> params);

    @Multipart
    @POST
    Call<String> upLoad(@Url String url, @Part MultipartBody.Part params);



}
