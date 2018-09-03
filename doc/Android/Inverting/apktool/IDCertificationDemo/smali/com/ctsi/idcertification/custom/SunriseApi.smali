.class public Lcom/ctsi/idcertification/custom/SunriseApi;
.super Ljava/lang/Object;
.source "SunriseApi.java"

# interfaces
.implements Lcom/ctsi/idcertification/custom/CustomInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ctsi/idcertification/custom/SunriseApi$MD5;
    }
.end annotation


# static fields
.field private static mSunriseApi:Lcom/ctsi/idcertification/custom/SunriseApi;


# instance fields
.field private CTSIBTClientCallBack:Lcom/ctsi/idcertification/BtReaderClient$IClientCallBack;

.field private logInListener:Lcom/ctsi/idcertification/custom/CustomInterface$OnLogInListener;

.field private mBtClient:Lcom/sunrise/BtReaderClient;

.field private mContext:Landroid/content/Context;

.field private mOtgNfcReaderClient:Lcom/sunrise/OTGAndNFCClient;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/ctsi/idcertification/custom/SunriseApi;->mContext:Landroid/content/Context;

    .line 63
    iget-object v0, p0, Lcom/ctsi/idcertification/custom/SunriseApi;->mBtClient:Lcom/sunrise/BtReaderClient;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lcom/sunrise/BtReaderClient;

    invoke-direct {v0, p1}, Lcom/sunrise/BtReaderClient;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ctsi/idcertification/custom/SunriseApi;->mBtClient:Lcom/sunrise/BtReaderClient;

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/ctsi/idcertification/custom/SunriseApi;->mBtClient:Lcom/sunrise/BtReaderClient;

    new-instance v1, Lcom/ctsi/idcertification/custom/SunriseApi$1;

    invoke-direct {v1, p0}, Lcom/ctsi/idcertification/custom/SunriseApi$1;-><init>(Lcom/ctsi/idcertification/custom/SunriseApi;)V

    invoke-virtual {v0, v1}, Lcom/sunrise/BtReaderClient;->setCallback(Lcom/sunrise/IClientCallback;)V

    .line 75
    iget-object v0, p0, Lcom/ctsi/idcertification/custom/SunriseApi;->mOtgNfcReaderClient:Lcom/sunrise/OTGAndNFCClient;

    if-nez v0, :cond_1

    .line 76
    new-instance v0, Lcom/sunrise/OTGAndNFCClient;

    invoke-direct {v0, p1}, Lcom/sunrise/OTGAndNFCClient;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ctsi/idcertification/custom/SunriseApi;->mOtgNfcReaderClient:Lcom/sunrise/OTGAndNFCClient;

    .line 77
    :cond_1
    return-void
.end method

.method private static GetNetworkType(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 416
    const-string v3, ""

    .line 418
    .local v3, "strNetworkType":Ljava/lang/String;
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 417
    check-cast v4, Landroid/net/ConnectivityManager;

    .line 419
    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 420
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 421
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 422
    const-string v3, "WIFI"

    .line 461
    :cond_0
    :goto_0
    return-object v3

    .line 423
    :cond_1
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    if-nez v4, :cond_0

    .line 424
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v0

    .line 425
    .local v0, "_strSubTypeName":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v2

    .line 426
    .local v2, "networkType":I
    packed-switch v2, :pswitch_data_0

    .line 449
    const-string v4, "TD-SCDMA"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 450
    const-string v4, "WCDMA"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 451
    const-string v4, "CDMA2000"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 452
    :cond_2
    const-string v3, "3G"

    .line 453
    goto :goto_0

    .line 432
    :pswitch_0
    const-string v3, "2G"

    .line 433
    goto :goto_0

    .line 443
    :pswitch_1
    const-string v3, "3G"

    .line 444
    goto :goto_0

    .line 446
    :pswitch_2
    const-string v3, "4G"

    .line 447
    goto :goto_0

    .line 454
    :cond_3
    move-object v3, v0

    goto :goto_0

    .line 426
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic access$0(Lcom/ctsi/idcertification/custom/SunriseApi;)Lcom/ctsi/idcertification/BtReaderClient$IClientCallBack;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/ctsi/idcertification/custom/SunriseApi;->CTSIBTClientCallBack:Lcom/ctsi/idcertification/BtReaderClient$IClientCallBack;

    return-object v0
.end method

.method public static getSunriseApiInstance(Landroid/content/Context;)Lcom/ctsi/idcertification/custom/SunriseApi;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    sget-object v0, Lcom/ctsi/idcertification/custom/SunriseApi;->mSunriseApi:Lcom/ctsi/idcertification/custom/SunriseApi;

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Lcom/ctsi/idcertification/custom/SunriseApi;

    invoke-direct {v0, p0}, Lcom/ctsi/idcertification/custom/SunriseApi;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ctsi/idcertification/custom/SunriseApi;->mSunriseApi:Lcom/ctsi/idcertification/custom/SunriseApi;

    .line 82
    :cond_0
    sget-object v0, Lcom/ctsi/idcertification/custom/SunriseApi;->mSunriseApi:Lcom/ctsi/idcertification/custom/SunriseApi;

    return-object v0
.end method


# virtual methods
.method public auth(Lcom/ctsi/idcertification/entity/AuthInfo;)V
    .locals 17
    .param p1, "authinfo"    # Lcom/ctsi/idcertification/entity/AuthInfo;

    .prologue
    .line 89
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 90
    .local v12, "resultMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v11, ""

    .local v11, "resultFlag":Ljava/lang/String;
    const-string v3, ""

    .local v3, "errorMsg":Ljava/lang/String;
    const-string v10, ""

    .line 91
    .local v10, "resultContent":Ljava/lang/String;
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    .line 92
    .local v7, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/message/BasicNameValuePair;>;"
    new-instance v14, Lorg/apache/http/message/BasicNameValuePair;

    const-string v15, "appId"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/ctsi/idcertification/entity/AuthInfo;->AppId:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-direct/range {v14 .. v16}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    new-instance v14, Lorg/apache/http/message/BasicNameValuePair;

    const-string v15, "timestamp"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/ctsi/idcertification/entity/AuthInfo;->Timestamp:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-direct/range {v14 .. v16}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    new-instance v14, Lorg/apache/http/message/BasicNameValuePair;

    const-string v15, "nonce"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/ctsi/idcertification/entity/AuthInfo;->Nonce:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-direct/range {v14 .. v16}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    new-instance v14, Lorg/apache/http/message/BasicNameValuePair;

    const-string v15, "businessExt"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/ctsi/idcertification/entity/AuthInfo;->BusinessExt:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-direct/range {v14 .. v16}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    new-instance v14, Lorg/apache/http/message/BasicNameValuePair;

    const-string v15, "signature"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/ctsi/idcertification/entity/AuthInfo;->Signature:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-direct/range {v14 .. v16}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    new-instance v14, Lorg/apache/http/message/BasicNameValuePair;

    const-string v15, "cardReaderInfo"

    .line 98
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/ctsi/idcertification/entity/AuthInfo;->CardReaderInfo:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-direct/range {v14 .. v16}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-interface {v7, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    const-string v14, "UTF-8"

    invoke-static {v7, v14}, Lorg/apache/http/client/utils/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 100
    .local v6, "param":Ljava/lang/String;
    const-string v14, "params"

    invoke-static {v14, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    new-instance v14, Ljava/lang/StringBuilder;

    sget-object v15, Lcom/ctsi/idcertification/constant/Constant;->AUTH_SERVER:Ljava/lang/String;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, "?"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v4, v14}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 102
    .local v4, "getMethod":Lorg/apache/http/client/methods/HttpGet;
    new-instance v5, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v5}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 104
    .local v5, "httpClient":Lorg/apache/http/client/HttpClient;
    :try_start_0
    invoke-interface {v5, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v8

    .line 105
    .local v8, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v14

    invoke-interface {v14}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v13

    .line 106
    .local v13, "statuscode":I
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v14

    const-string v15, "utf-8"

    invoke-static {v14, v15}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v9

    .line 107
    .local v9, "result":Ljava/lang/String;
    const/16 v14, 0xc8

    if-ne v13, v14, :cond_1

    .line 109
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 110
    .local v1, "JsonStr":Lorg/json/JSONObject;
    const-string v14, "stepFlag"

    const-string v15, "2"

    invoke-interface {v12, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const-string v14, "resultFlag"

    invoke-virtual {v1, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 112
    const-string v14, "errorMsg"

    invoke-virtual {v1, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 113
    const-string v14, "resultContent"

    invoke-virtual {v1, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v10

    .line 121
    .end local v1    # "JsonStr":Lorg/json/JSONObject;
    :goto_0
    :try_start_2
    const-string v14, ""

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "resCode = "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    const-string v14, ""

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "result = "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 137
    .end local v8    # "response":Lorg/apache/http/HttpResponse;
    .end local v9    # "result":Ljava/lang/String;
    .end local v13    # "statuscode":I
    :goto_1
    const-string v14, "stepFlag"

    const-string v15, "2"

    invoke-interface {v12, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    const-string v14, "resultFlag"

    invoke-interface {v12, v14, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    const-string v14, "errorMsg"

    invoke-interface {v12, v14, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    const-string v14, "resultContent"

    invoke-interface {v12, v14, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ctsi/idcertification/custom/SunriseApi;->logInListener:Lcom/ctsi/idcertification/custom/CustomInterface$OnLogInListener;

    if-eqz v14, :cond_0

    .line 142
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ctsi/idcertification/custom/SunriseApi;->logInListener:Lcom/ctsi/idcertification/custom/CustomInterface$OnLogInListener;

    invoke-interface {v14, v12}, Lcom/ctsi/idcertification/custom/CustomInterface$OnLogInListener;->onLoginFinish(Ljava/util/Map;)V

    .line 144
    :cond_0
    return-void

    .line 114
    .restart local v8    # "response":Lorg/apache/http/HttpResponse;
    .restart local v9    # "result":Ljava/lang/String;
    .restart local v13    # "statuscode":I
    :catch_0
    move-exception v2

    .line 116
    .local v2, "e":Lorg/json/JSONException;
    :try_start_3
    const-string v11, "-1"

    .line 117
    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 118
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_3
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 127
    .end local v2    # "e":Lorg/json/JSONException;
    .end local v8    # "response":Lorg/apache/http/HttpResponse;
    .end local v9    # "result":Ljava/lang/String;
    .end local v13    # "statuscode":I
    :catch_1
    move-exception v2

    .line 129
    .local v2, "e":Lorg/apache/http/client/ClientProtocolException;
    const-string v11, "-1"

    .line 130
    invoke-virtual {v2}, Lorg/apache/http/client/ClientProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 131
    invoke-virtual {v2}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    goto :goto_1

    .line 124
    .end local v2    # "e":Lorg/apache/http/client/ClientProtocolException;
    .restart local v8    # "response":Lorg/apache/http/HttpResponse;
    .restart local v9    # "result":Ljava/lang/String;
    .restart local v13    # "statuscode":I
    :cond_1
    :try_start_4
    const-string v11, "-1"

    .line 125
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "\u670d\u52a1\u5668\u8fd4\u56de\u72b6\u6001\u7801\uff1a"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v3

    goto :goto_1

    .line 132
    .end local v8    # "response":Lorg/apache/http/HttpResponse;
    .end local v9    # "result":Ljava/lang/String;
    .end local v13    # "statuscode":I
    :catch_2
    move-exception v2

    .line 133
    .local v2, "e":Ljava/io/IOException;
    const-string v11, "-1"

    .line 134
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 135
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public btCheckState()I
    .locals 1

    .prologue
    .line 267
    const/4 v0, 0x0

    return v0
.end method

.method public btConnect(Ljava/lang/String;)Z
    .locals 1
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 273
    iget-object v0, p0, Lcom/ctsi/idcertification/custom/SunriseApi;->mBtClient:Lcom/sunrise/BtReaderClient;

    invoke-virtual {v0, p1}, Lcom/sunrise/BtReaderClient;->connectBt(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public btDisconnect()Z
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/ctsi/idcertification/custom/SunriseApi;->mBtClient:Lcom/sunrise/BtReaderClient;

    invoke-virtual {v0}, Lcom/sunrise/BtReaderClient;->disconnectBt()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public btReadCard(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .param p1, "token"    # Ljava/lang/String;
    .param p3, "address"    # Ljava/lang/String;
    .param p4, "busiSerial"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 288
    .local p2, "serverList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/ctsi/idcertification/custom/SunriseApi;->mBtClient:Lcom/sunrise/BtReaderClient;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/sunrise/BtReaderClient;->cloudReadCert(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 289
    .local v0, "result":Ljava/util/Map;
    const-string v1, "stepFlag"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    return-object v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 466
    const/4 v0, 0x0

    sput-object v0, Lcom/ctsi/idcertification/custom/SunriseApi;->mSunriseApi:Lcom/ctsi/idcertification/custom/SunriseApi;

    .line 469
    return-void
.end method

.method public errorCode2Msg(I)Ljava/lang/String;
    .locals 1
    .param p1, "errorcode"    # I

    .prologue
    .line 342
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDevicesProperty(I)Lcom/ctsi/idcertification/entity/ReaderProperty;
    .locals 13
    .param p1, "readerType"    # I

    .prologue
    const/4 v11, 0x0

    .line 348
    const-string v3, ""

    .local v3, "name":Ljava/lang/String;
    const-string v10, ""

    .local v10, "version":Ljava/lang/String;
    const-string v2, ""

    .local v2, "model":Ljava/lang/String;
    const-string v8, ""

    .local v8, "serialnumber":Ljava/lang/String;
    const-string v0, ""

    .local v0, "date":Ljava/lang/String;
    const-string v9, ""

    .line 349
    .local v9, "type":Ljava/lang/String;
    const/4 v5, 0x0

    .line 351
    .local v5, "property":Lcom/ctsi/idcertification/entity/ReaderProperty;
    :try_start_0
    new-instance v6, Lcom/ctsi/idcertification/entity/ReaderProperty;

    invoke-direct {v6}, Lcom/ctsi/idcertification/entity/ReaderProperty;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 352
    .end local v5    # "property":Lcom/ctsi/idcertification/entity/ReaderProperty;
    .local v6, "property":Lcom/ctsi/idcertification/entity/ReaderProperty;
    const/4 v12, 0x3

    if-ne p1, v12, :cond_1

    .line 353
    const/4 v7, 0x0

    .line 355
    .local v7, "result":Ljava/util/Map;
    :try_start_1
    iget-object v12, p0, Lcom/ctsi/idcertification/custom/SunriseApi;->mBtClient:Lcom/sunrise/BtReaderClient;

    invoke-virtual {v12}, Lcom/sunrise/BtReaderClient;->getReaderInfo()Ljava/util/Map;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v7

    .line 360
    :try_start_2
    const-string v12, "factoryName"

    invoke-interface {v7, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 361
    const-string v12, "verCode"

    invoke-interface {v7, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 362
    const-string v12, "type"

    invoke-interface {v7, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 363
    const-string v12, "sn"

    invoke-interface {v7, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 364
    const-string v12, "creatTime"

    invoke-interface {v7, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 365
    const-string v9, "BT"

    .line 378
    .end local v7    # "result":Ljava/util/Map;
    :cond_0
    :goto_0
    iget-object v12, p0, Lcom/ctsi/idcertification/custom/SunriseApi;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/ctsi/idcertification/custom/SunriseApi;->GetNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 380
    .local v4, "networkType":Ljava/lang/String;
    invoke-virtual {v6, v3}, Lcom/ctsi/idcertification/entity/ReaderProperty;->setName(Ljava/lang/String;)V

    .line 381
    invoke-virtual {v6, v10}, Lcom/ctsi/idcertification/entity/ReaderProperty;->setVersion(Ljava/lang/String;)V

    .line 382
    invoke-virtual {v6, v2}, Lcom/ctsi/idcertification/entity/ReaderProperty;->setModel(Ljava/lang/String;)V

    .line 383
    invoke-virtual {v6, v8}, Lcom/ctsi/idcertification/entity/ReaderProperty;->setSerialNumber(Ljava/lang/String;)V

    .line 384
    invoke-virtual {v6, v0}, Lcom/ctsi/idcertification/entity/ReaderProperty;->setDate(Ljava/lang/String;)V

    .line 385
    invoke-virtual {v6, v9}, Lcom/ctsi/idcertification/entity/ReaderProperty;->setReaderType(Ljava/lang/String;)V

    .line 386
    invoke-virtual {v6, v4}, Lcom/ctsi/idcertification/entity/ReaderProperty;->setNetWork(Ljava/lang/String;)V

    move-object v5, v6

    .line 392
    .end local v4    # "networkType":Ljava/lang/String;
    .end local v6    # "property":Lcom/ctsi/idcertification/entity/ReaderProperty;
    .restart local v5    # "property":Lcom/ctsi/idcertification/entity/ReaderProperty;
    :goto_1
    return-object v6

    .line 356
    .end local v5    # "property":Lcom/ctsi/idcertification/entity/ReaderProperty;
    .restart local v6    # "property":Lcom/ctsi/idcertification/entity/ReaderProperty;
    .restart local v7    # "result":Ljava/util/Map;
    :catch_0
    move-exception v1

    .line 357
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v5, v6

    .end local v6    # "property":Lcom/ctsi/idcertification/entity/ReaderProperty;
    .restart local v5    # "property":Lcom/ctsi/idcertification/entity/ReaderProperty;
    move-object v6, v11

    .line 358
    goto :goto_1

    .line 366
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v5    # "property":Lcom/ctsi/idcertification/entity/ReaderProperty;
    .end local v7    # "result":Ljava/util/Map;
    .restart local v6    # "property":Lcom/ctsi/idcertification/entity/ReaderProperty;
    :cond_1
    const/4 v12, 0x1

    if-ne p1, v12, :cond_2

    .line 367
    iget-object v12, p0, Lcom/ctsi/idcertification/custom/SunriseApi;->mOtgNfcReaderClient:Lcom/sunrise/OTGAndNFCClient;

    invoke-virtual {v12}, Lcom/sunrise/OTGAndNFCClient;->getReaderInfo()Ljava/util/Map;

    move-result-object v7

    .line 368
    .restart local v7    # "result":Ljava/util/Map;
    const-string v12, "factoryName"

    invoke-interface {v7, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 369
    const-string v12, "verCode"

    invoke-interface {v7, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 370
    const-string v12, "type"

    invoke-interface {v7, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 371
    const-string v12, "sn"

    invoke-interface {v7, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 372
    const-string v12, "creatTime"

    invoke-interface {v7, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 373
    const-string v9, "OTG"

    .line 374
    goto :goto_0

    .end local v7    # "result":Ljava/util/Map;
    :cond_2
    const/4 v12, 0x2

    if-ne p1, v12, :cond_0

    .line 375
    const-string v9, "NFC"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 387
    .end local v6    # "property":Lcom/ctsi/idcertification/entity/ReaderProperty;
    .restart local v5    # "property":Lcom/ctsi/idcertification/entity/ReaderProperty;
    :catch_1
    move-exception v1

    .line 388
    .restart local v1    # "e":Ljava/lang/Exception;
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v6, v11

    .line 389
    goto :goto_1

    .line 387
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v5    # "property":Lcom/ctsi/idcertification/entity/ReaderProperty;
    .restart local v6    # "property":Lcom/ctsi/idcertification/entity/ReaderProperty;
    :catch_2
    move-exception v1

    move-object v5, v6

    .end local v6    # "property":Lcom/ctsi/idcertification/entity/ReaderProperty;
    .restart local v5    # "property":Lcom/ctsi/idcertification/entity/ReaderProperty;
    goto :goto_2
.end method

.method public nfcConnect(Landroid/nfc/NfcAdapter$ReaderCallback;)Ljava/util/Map;
    .locals 3
    .param p1, "callBack"    # Landroid/nfc/NfcAdapter$ReaderCallback;

    .prologue
    .line 405
    iget-object v1, p0, Lcom/ctsi/idcertification/custom/SunriseApi;->mOtgNfcReaderClient:Lcom/sunrise/OTGAndNFCClient;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Lcom/sunrise/OTGAndNFCClient;->connect(ILandroid/nfc/NfcAdapter$ReaderCallback;)Ljava/util/Map;

    move-result-object v0

    .line 406
    .local v0, "result":Ljava/util/Map;
    return-object v0
.end method

.method public nfcDisconnect()Ljava/util/Map;
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lcom/ctsi/idcertification/custom/SunriseApi;->mOtgNfcReaderClient:Lcom/sunrise/OTGAndNFCClient;

    invoke-virtual {v0}, Lcom/sunrise/OTGAndNFCClient;->disconnect()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public nfcReadCard(Ljava/lang/String;Ljava/util/List;Landroid/nfc/Tag;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 8
    .param p1, "token"    # Ljava/lang/String;
    .param p3, "tag"    # Landroid/nfc/Tag;
    .param p4, "address"    # Ljava/lang/String;
    .param p5, "busiSerial"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/nfc/Tag;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 333
    .local p2, "serverList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/ctsi/idcertification/custom/SunriseApi;->mOtgNfcReaderClient:Lcom/sunrise/OTGAndNFCClient;

    .line 334
    const/4 v3, 0x2

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 333
    invoke-virtual/range {v0 .. v6}, Lcom/sunrise/OTGAndNFCClient;->cloudReadCert(Ljava/lang/String;Ljava/util/List;ILandroid/nfc/Tag;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v7

    .line 335
    .local v7, "result":Ljava/util/Map;
    const-string v0, "stepFlag"

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    return-object v7
.end method

.method public setCTSIBTCallback(Lcom/ctsi/idcertification/BtReaderClient$IClientCallBack;)V
    .locals 0
    .param p1, "callback"    # Lcom/ctsi/idcertification/BtReaderClient$IClientCallBack;

    .prologue
    .line 296
    iput-object p1, p0, Lcom/ctsi/idcertification/custom/SunriseApi;->CTSIBTClientCallBack:Lcom/ctsi/idcertification/BtReaderClient$IClientCallBack;

    .line 297
    return-void
.end method

.method public setOnLogInListener(Lcom/ctsi/idcertification/custom/CustomInterface$OnLogInListener;)V
    .locals 0
    .param p1, "logInListener"    # Lcom/ctsi/idcertification/custom/CustomInterface$OnLogInListener;

    .prologue
    .line 398
    iput-object p1, p0, Lcom/ctsi/idcertification/custom/SunriseApi;->logInListener:Lcom/ctsi/idcertification/custom/CustomInterface$OnLogInListener;

    .line 400
    return-void
.end method

.method public usbCheckState()Ljava/util/Map;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/ctsi/idcertification/custom/SunriseApi;->mOtgNfcReaderClient:Lcom/sunrise/OTGAndNFCClient;

    invoke-virtual {v0}, Lcom/sunrise/OTGAndNFCClient;->getStatus()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public usbConnect()Ljava/util/Map;
    .locals 3

    .prologue
    .line 309
    iget-object v0, p0, Lcom/ctsi/idcertification/custom/SunriseApi;->mOtgNfcReaderClient:Lcom/sunrise/OTGAndNFCClient;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sunrise/OTGAndNFCClient;->connect(ILandroid/nfc/NfcAdapter$ReaderCallback;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public usbDisconnect()Ljava/util/Map;
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/ctsi/idcertification/custom/SunriseApi;->mOtgNfcReaderClient:Lcom/sunrise/OTGAndNFCClient;

    invoke-virtual {v0}, Lcom/sunrise/OTGAndNFCClient;->disconnect()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public usbReadCard(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 8
    .param p1, "token"    # Ljava/lang/String;
    .param p3, "address"    # Ljava/lang/String;
    .param p4, "busiSerial"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 322
    .local p2, "serverList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/ctsi/idcertification/custom/SunriseApi;->mOtgNfcReaderClient:Lcom/sunrise/OTGAndNFCClient;

    .line 323
    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v6, p4

    .line 322
    invoke-virtual/range {v0 .. v6}, Lcom/sunrise/OTGAndNFCClient;->cloudReadCert(Ljava/lang/String;Ljava/util/List;ILandroid/nfc/Tag;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v7

    .line 324
    .local v7, "result":Ljava/util/Map;
    const-string v0, "stepFlag"

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    return-object v7
.end method
