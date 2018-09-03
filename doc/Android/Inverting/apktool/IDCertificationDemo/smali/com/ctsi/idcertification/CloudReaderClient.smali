.class public Lcom/ctsi/idcertification/CloudReaderClient;
.super Ljava/lang/Object;
.source "CloudReaderClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ctsi/idcertification/CloudReaderClient$OnReadCardListener;
    }
.end annotation


# static fields
.field private static cloudReaderClient:Lcom/ctsi/idcertification/CloudReaderClient;

.field private static readCardListener:Lcom/ctsi/idcertification/CloudReaderClient$OnReadCardListener;


# instance fields
.field private final BT_TAC:I

.field private final DIALOG_CERT:I

.field private final DIALOG_CHECK:I

.field private final DIALOG_CONN:I

.field private final DIALOG_READ:I

.field private final DIALOG_READ_DEVICEINFO:I

.field private final NFC_TAC:I

.field private final OTG_TAC:I

.field private TAG:Ljava/lang/String;

.field private bGotResult:Z

.field private busiSerial:Ljava/lang/String;

.field private mAuthInfo:Lcom/ctsi/idcertification/entity/AuthInfo;

.field private mClient:Lcom/ctsi/idcertification/custom/CustomInterface;

.field private mConnectWay:I

.field private mContext:Landroid/content/Context;

.field private mErrorMsg:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mReaderType:I

.field private mResultMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mServerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mStep:I

.field private mTag:Landroid/nfc/Tag;

.field private mToken:Ljava/lang/String;

.field mreadCardListener:Lcom/ctsi/idcertification/CloudReaderClient$OnReadCardListener;

.field private nfcAdapter:Landroid/nfc/NfcAdapter;

.field onLogInListener:Lcom/ctsi/idcertification/custom/CustomInterface$OnLogInListener;

.field private pool:Ljava/util/concurrent/ExecutorService;

.field private progressDialog:Landroid/app/ProgressDialog;

.field private redisIp:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-string v3, "CloudReaderClient"

    iput-object v3, p0, Lcom/ctsi/idcertification/CloudReaderClient;->TAG:Ljava/lang/String;

    .line 45
    const/16 v3, 0xde

    iput v3, p0, Lcom/ctsi/idcertification/CloudReaderClient;->BT_TAC:I

    .line 46
    const/16 v3, 0x6f

    iput v3, p0, Lcom/ctsi/idcertification/CloudReaderClient;->OTG_TAC:I

    .line 47
    const/16 v3, 0x14d

    iput v3, p0, Lcom/ctsi/idcertification/CloudReaderClient;->NFC_TAC:I

    .line 48
    const/4 v3, 0x1

    iput v3, p0, Lcom/ctsi/idcertification/CloudReaderClient;->DIALOG_CONN:I

    .line 49
    const/4 v3, 0x2

    iput v3, p0, Lcom/ctsi/idcertification/CloudReaderClient;->DIALOG_READ:I

    .line 50
    const/4 v3, 0x3

    iput v3, p0, Lcom/ctsi/idcertification/CloudReaderClient;->DIALOG_CHECK:I

    .line 51
    const/4 v3, 0x4

    iput v3, p0, Lcom/ctsi/idcertification/CloudReaderClient;->DIALOG_CERT:I

    .line 52
    const/4 v3, 0x5

    iput v3, p0, Lcom/ctsi/idcertification/CloudReaderClient;->DIALOG_READ_DEVICEINFO:I

    .line 53
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/ctsi/idcertification/CloudReaderClient;->mResultMap:Ljava/util/Map;

    .line 54
    iput-boolean v4, p0, Lcom/ctsi/idcertification/CloudReaderClient;->bGotResult:Z

    .line 61
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    iput-object v3, p0, Lcom/ctsi/idcertification/CloudReaderClient;->pool:Ljava/util/concurrent/ExecutorService;

    .line 64
    iput-object v5, p0, Lcom/ctsi/idcertification/CloudReaderClient;->redisIp:Ljava/lang/String;

    .line 65
    iput-object v5, p0, Lcom/ctsi/idcertification/CloudReaderClient;->busiSerial:Ljava/lang/String;

    .line 67
    iput v4, p0, Lcom/ctsi/idcertification/CloudReaderClient;->mStep:I

    .line 68
    new-instance v3, Lcom/ctsi/idcertification/entity/AuthInfo;

    invoke-direct {v3}, Lcom/ctsi/idcertification/entity/AuthInfo;-><init>()V

    iput-object v3, p0, Lcom/ctsi/idcertification/CloudReaderClient;->mAuthInfo:Lcom/ctsi/idcertification/entity/AuthInfo;

    .line 101
    new-instance v3, Lcom/ctsi/idcertification/CloudReaderClient$1;

    invoke-direct {v3, p0}, Lcom/ctsi/idcertification/CloudReaderClient$1;-><init>(Lcom/ctsi/idcertification/CloudReaderClient;)V

    iput-object v3, p0, Lcom/ctsi/idcertification/CloudReaderClient;->mHandler:Landroid/os/Handler;

    .line 510
    new-instance v3, Lcom/ctsi/idcertification/CloudReaderClient$2;

    invoke-direct {v3, p0}, Lcom/ctsi/idcertification/CloudReaderClient$2;-><init>(Lcom/ctsi/idcertification/CloudReaderClient;)V

    iput-object v3, p0, Lcom/ctsi/idcertification/CloudReaderClient;->mreadCardListener:Lcom/ctsi/idcertification/CloudReaderClient$OnReadCardListener;

    .line 521
    new-instance v3, Lcom/ctsi/idcertification/CloudReaderClient$3;

    invoke-direct {v3, p0}, Lcom/ctsi/idcertification/CloudReaderClient$3;-><init>(Lcom/ctsi/idcertification/CloudReaderClient;)V

    iput-object v3, p0, Lcom/ctsi/idcertification/CloudReaderClient;->onLogInListener:Lcom/ctsi/idcertification/custom/CustomInterface$OnLogInListener;

    .line 71
    iput-object p1, p0, Lcom/ctsi/idcertification/CloudReaderClient;->mContext:Landroid/content/Context;

    .line 72
    invoke-static {p1}, Lcom/ctsi/idcertification/custom/SunriseApi;->getSunriseApiInstance(Landroid/content/Context;)Lcom/ctsi/idcertification/custom/SunriseApi;

    move-result-object v3

    iput-object v3, p0, Lcom/ctsi/idcertification/CloudReaderClient;->mClient:Lcom/ctsi/idcertification/custom/CustomInterface;

    .line 73
    sput-object p0, Lcom/ctsi/idcertification/CloudReaderClient;->cloudReaderClient:Lcom/ctsi/idcertification/CloudReaderClient;

    .line 74
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    .line 75
    .local v2, "pro":Ljava/util/Properties;
    new-instance v3, Landroid/app/ProgressDialog;

    iget-object v4, p0, Lcom/ctsi/idcertification/CloudReaderClient;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/ctsi/idcertification/CloudReaderClient;->progressDialog:Landroid/app/ProgressDialog;

    .line 76
    sget-boolean v3, Lcom/ctsi/idcertification/constant/Constant;->RELEASE:Z

    if-eqz v3, :cond_0

    .line 78
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 79
    const-string v4, "/IDCertification.properties"

    .line 78
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 80
    .local v1, "is":Ljava/io/InputStream;
    invoke-virtual {v2, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 81
    const-string v3, "AUTH_SERVER"

    invoke-virtual {v2, v3}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/ctsi/idcertification/constant/Constant;->AUTH_SERVER:Ljava/lang/String;

    .line 82
    const-string v3, "TIME_OUT"

    invoke-virtual {v2, v3}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 83
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 82
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    sput-wide v4, Lcom/ctsi/idcertification/constant/Constant;->TIME_OUT:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    .end local v1    # "is":Ljava/io/InputStream;
    :goto_0
    return-void

    .line 85
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 90
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    const-string v3, "http://smz.crm.189.cn:4001/api/v1/auth"

    sput-object v3, Lcom/ctsi/idcertification/constant/Constant;->AUTH_SERVER:Ljava/lang/String;

    .line 91
    const-wide/16 v4, 0x7530

    sput-wide v4, Lcom/ctsi/idcertification/constant/Constant;->TIME_OUT:J

    goto :goto_0
.end method

.method private ReadCard(Lcom/ctsi/idcertification/entity/AuthInfo;I)V
    .locals 10
    .param p1, "authInfo"    # Lcom/ctsi/idcertification/entity/AuthInfo;
    .param p2, "readerType"    # I

    .prologue
    .line 303
    const/4 v7, 0x1

    iput v7, p0, Lcom/ctsi/idcertification/CloudReaderClient;->mStep:I

    .line 314
    iput p2, p0, Lcom/ctsi/idcertification/CloudReaderClient;->mReaderType:I

    .line 317
    :try_start_0
    iget-object v7, p0, Lcom/ctsi/idcertification/CloudReaderClient;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x5

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 318
    iget-object v7, p0, Lcom/ctsi/idcertification/CloudReaderClient;->mClient:Lcom/ctsi/idcertification/custom/CustomInterface;

    .line 319
    invoke-interface {v7, p2}, Lcom/ctsi/idcertification/custom/CustomInterface;->getDevicesProperty(I)Lcom/ctsi/idcertification/entity/ReaderProperty;

    move-result-object v4

    .line 320
    .local v4, "readerProperty":Lcom/ctsi/idcertification/entity/ReaderProperty;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 322
    .local v3, "readerInfoObj":Lorg/json/JSONObject;
    const-string v7, "cardReaderManufacturerName"

    iget-object v8, v4, Lcom/ctsi/idcertification/entity/ReaderProperty;->Name:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 323
    const-string v7, "cardReaderModel"

    iget-object v8, v4, Lcom/ctsi/idcertification/entity/ReaderProperty;->Model:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 324
    const-string v7, "cardReaderMac"

    iget-object v8, v4, Lcom/ctsi/idcertification/entity/ReaderProperty;->SerialNumber:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 325
    const-string v7, "cardReaderVersion"

    iget-object v8, v4, Lcom/ctsi/idcertification/entity/ReaderProperty;->Version:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 326
    const-string v7, "cardReaderProductionTime"

    iget-object v8, v4, Lcom/ctsi/idcertification/entity/ReaderProperty;->Date:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 327
    const-string v7, "networkType"

    iget-object v8, v4, Lcom/ctsi/idcertification/entity/ReaderProperty;->NetWork:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 328
    const-string v7, "connectWay"

    iget-object v8, v4, Lcom/ctsi/idcertification/entity/ReaderProperty;->readerType:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 329
    const-string v7, "SDKVersion"

    sget-object v8, Lcom/ctsi/idcertification/constant/Constant;->SDKVersion:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 331
    const-string v7, "terminalType"

    const-string v8, "Android"

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 332
    const-string v7, "osType"

    sget-object v8, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 333
    const-string v7, "deviceModel"

    sget-object v8, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 335
    iget-object v7, p0, Lcom/ctsi/idcertification/CloudReaderClient;->mContext:Landroid/content/Context;

    .line 336
    const-string v8, "phone"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 335
    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 337
    .local v2, "mTelephonyMgr":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v6

    .line 338
    .local v6, "serial":Ljava/lang/String;
    const-string v7, "deviceSerial"

    invoke-virtual {v3, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 343
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 344
    .local v0, "cardReaderInfo":Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/ctsi/idcertification/entity/AuthInfo;->setCardReaderInfo(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 361
    iget-object v7, p0, Lcom/ctsi/idcertification/CloudReaderClient;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v7, :cond_0

    .line 362
    iget-object v7, p0, Lcom/ctsi/idcertification/CloudReaderClient;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v7}, Landroid/app/ProgressDialog;->cancel()V

    .line 363
    :cond_0
    iget-object v7, p0, Lcom/ctsi/idcertification/CloudReaderClient;->mClient:Lcom/ctsi/idcertification/custom/CustomInterface;

    iget-object v8, p0, Lcom/ctsi/idcertification/CloudReaderClient;->onLogInListener:Lcom/ctsi/idcertification/custom/CustomInterface$OnLogInListener;

    invoke-interface {v7, v8}, Lcom/ctsi/idcertification/custom/CustomInterface;->setOnLogInListener(Lcom/ctsi/idcertification/custom/CustomInterface$OnLogInListener;)V

    .line 364
    iget-object v7, p0, Lcom/ctsi/idcertification/CloudReaderClient;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 365
    iget-object v7, p0, Lcom/ctsi/idcertification/CloudReaderClient;->mClient:Lcom/ctsi/idcertification/custom/CustomInterface;

    invoke-interface {v7, p1}, Lcom/ctsi/idcertification/custom/CustomInterface;->auth(Lcom/ctsi/idcertification/entity/AuthInfo;)V

    .line 366
    const/4 v7, 0x2

    iput v7, p0, Lcom/ctsi/idcertification/CloudReaderClient;->mStep:I

    .line 368
    .end local v0    # "cardReaderInfo":Ljava/lang/String;
    .end local v2    # "mTelephonyMgr":Landroid/telephony/TelephonyManager;
    .end local v3    # "readerInfoObj":Lorg/json/JSONObject;
    .end local v4    # "readerProperty":Lcom/ctsi/idcertification/entity/ReaderProperty;
    .end local v6    # "serial":Ljava/lang/String;
    :goto_0
    return-void

    .line 345
    :catch_0
    move-exception v1

    .line 347
    .local v1, "e":Ljava/lang/Exception;
    iget-object v7, p0, Lcom/ctsi/idcertification/CloudReaderClient;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v7, :cond_1

    .line 348
    iget-object v7, p0, Lcom/ctsi/idcertification/CloudReaderClient;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v7}, Landroid/app/ProgressDialog;->cancel()V

    .line 349
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 350
    iget-object v7, p0, Lcom/ctsi/idcertification/CloudReaderClient;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "\u8bfb\u53d6\u8bbe\u5907\u4fe1\u606f\u5931\u8d25\uff1a"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 352
    .local v5, "resultMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v7, "stepFlag"

    const-string v8, "1"

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    const-string v7, "resultFlag"

    const-string v8, "-1"

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    const-string v7, "errorMsg"

    .line 357
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "\u8bfb\u53d6\u8bbe\u5907\u4fe1\u606f\u5931\u8d25\uff1a"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 356
    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    sget-object v7, Lcom/ctsi/idcertification/CloudReaderClient;->readCardListener:Lcom/ctsi/idcertification/CloudReaderClient$OnReadCardListener;

    invoke-interface {v7, v5}, Lcom/ctsi/idcertification/CloudReaderClient$OnReadCardListener;->onReadFinish(Ljava/util/Map;)V

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/ctsi/idcertification/CloudReaderClient;)V
    .locals 0

    .prologue
    .line 484
    invoke-direct {p0}, Lcom/ctsi/idcertification/CloudReaderClient;->btReadCard()V

    return-void
.end method

.method static synthetic access$1(Lcom/ctsi/idcertification/CloudReaderClient;)V
    .locals 0

    .prologue
    .line 412
    invoke-direct {p0}, Lcom/ctsi/idcertification/CloudReaderClient;->otgReadCard()V

    return-void
.end method

.method static synthetic access$10(Lcom/ctsi/idcertification/CloudReaderClient;)I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/ctsi/idcertification/CloudReaderClient;->mReaderType:I

    return v0
.end method

.method static synthetic access$11(Lcom/ctsi/idcertification/CloudReaderClient;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/ctsi/idcertification/CloudReaderClient;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$12()Lcom/ctsi/idcertification/CloudReaderClient$OnReadCardListener;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/ctsi/idcertification/CloudReaderClient;->readCardListener:Lcom/ctsi/idcertification/CloudReaderClient$OnReadCardListener;

    return-object v0
.end method

.method static synthetic access$13(Lcom/ctsi/idcertification/CloudReaderClient;)Lcom/ctsi/idcertification/custom/CustomInterface;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/ctsi/idcertification/CloudReaderClient;->mClient:Lcom/ctsi/idcertification/custom/CustomInterface;

    return-object v0
.end method

.method static synthetic access$14(Lcom/ctsi/idcertification/CloudReaderClient;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/ctsi/idcertification/CloudReaderClient;->mToken:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$15(Lcom/ctsi/idcertification/CloudReaderClient;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/ctsi/idcertification/CloudReaderClient;->redisIp:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$16(Lcom/ctsi/idcertification/CloudReaderClient;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/ctsi/idcertification/CloudReaderClient;->busiSerial:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/ctsi/idcertification/CloudReaderClient;)Landroid/nfc/Tag;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/ctsi/idcertification/CloudReaderClient;->mTag:Landroid/nfc/Tag;

    return-object v0
.end method

.method static synthetic access$3(Lcom/ctsi/idcertification/CloudReaderClient;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/ctsi/idcertification/CloudReaderClient;->progressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$4(Lcom/ctsi/idcertification/CloudReaderClient;Z)V
    .locals 0

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/ctsi/idcertification/CloudReaderClient;->bGotResult:Z

    return-void
.end method

.method static synthetic access$5(Lcom/ctsi/idcertification/CloudReaderClient;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/ctsi/idcertification/CloudReaderClient;->mResultMap:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$6(Lcom/ctsi/idcertification/CloudReaderClient;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/ctsi/idcertification/CloudReaderClient;->mToken:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$7(Lcom/ctsi/idcertification/CloudReaderClient;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/ctsi/idcertification/CloudReaderClient;->redisIp:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$8(Lcom/ctsi/idcertification/CloudReaderClient;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/ctsi/idcertification/CloudReaderClient;->mServerList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$9(Lcom/ctsi/idcertification/CloudReaderClient;)Ljava/util/List;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/ctsi/idcertification/CloudReaderClient;->mServerList:Ljava/util/List;

    return-object v0
.end method

.method private btReadCard()V
    .locals 2

    .prologue
    .line 486
    const/4 v0, 0x3

    iput v0, p0, Lcom/ctsi/idcertification/CloudReaderClient;->mStep:I

    .line 487
    iget-object v0, p0, Lcom/ctsi/idcertification/CloudReaderClient;->pool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/ctsi/idcertification/CloudReaderClient$6;

    invoke-direct {v1, p0}, Lcom/ctsi/idcertification/CloudReaderClient$6;-><init>(Lcom/ctsi/idcertification/CloudReaderClient;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 508
    return-void
.end method

.method static getCloudReaderClientInstance(Landroid/content/Context;)Lcom/ctsi/idcertification/CloudReaderClient;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 96
    sget-object v0, Lcom/ctsi/idcertification/CloudReaderClient;->cloudReaderClient:Lcom/ctsi/idcertification/CloudReaderClient;

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Lcom/ctsi/idcertification/CloudReaderClient;

    invoke-direct {v0, p0}, Lcom/ctsi/idcertification/CloudReaderClient;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ctsi/idcertification/CloudReaderClient;->cloudReaderClient:Lcom/ctsi/idcertification/CloudReaderClient;

    .line 98
    :cond_0
    sget-object v0, Lcom/ctsi/idcertification/CloudReaderClient;->cloudReaderClient:Lcom/ctsi/idcertification/CloudReaderClient;

    return-object v0
.end method

.method private isNetworkAvailable()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 391
    iget-object v4, p0, Lcom/ctsi/idcertification/CloudReaderClient;->mContext:Landroid/content/Context;

    .line 392
    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 391
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 394
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    if-nez v0, :cond_1

    .line 409
    :cond_0
    :goto_0
    return v3

    .line 398
    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v2

    .line 400
    .local v2, "networkInfo":[Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    array-length v4, v2

    if-lez v4, :cond_0

    .line 401
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v4, v2

    if-ge v1, v4, :cond_0

    .line 403
    aget-object v4, v2, v1

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v4, v5, :cond_2

    .line 404
    const/4 v3, 0x1

    goto :goto_0

    .line 401
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private otgReadCard()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 413
    iput v1, p0, Lcom/ctsi/idcertification/CloudReaderClient;->mStep:I

    .line 415
    iget-object v0, p0, Lcom/ctsi/idcertification/CloudReaderClient;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 416
    iget-object v0, p0, Lcom/ctsi/idcertification/CloudReaderClient;->pool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/ctsi/idcertification/CloudReaderClient$4;

    invoke-direct {v1, p0}, Lcom/ctsi/idcertification/CloudReaderClient$4;-><init>(Lcom/ctsi/idcertification/CloudReaderClient;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 451
    return-void
.end method

.method private setOnReadCardListener(Lcom/ctsi/idcertification/CloudReaderClient$OnReadCardListener;)V
    .locals 0
    .param p1, "onread"    # Lcom/ctsi/idcertification/CloudReaderClient$OnReadCardListener;

    .prologue
    .line 458
    sput-object p1, Lcom/ctsi/idcertification/CloudReaderClient;->readCardListener:Lcom/ctsi/idcertification/CloudReaderClient$OnReadCardListener;

    .line 459
    return-void
.end method


# virtual methods
.method public CloudReadCert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/Map;
    .locals 8
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "timestamp"    # Ljava/lang/String;
    .param p3, "nonce"    # Ljava/lang/String;
    .param p4, "businessExt"    # Ljava/lang/String;
    .param p5, "signature"    # Ljava/lang/String;
    .param p6, "connectWay"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 233
    .line 234
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    .line 233
    invoke-virtual/range {v0 .. v7}, Lcom/ctsi/idcertification/CloudReaderClient;->CloudReadCert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/nfc/Tag;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public CloudReadCert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/nfc/Tag;)Ljava/util/Map;
    .locals 14
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "timestamp"    # Ljava/lang/String;
    .param p3, "nonce"    # Ljava/lang/String;
    .param p4, "businessExt"    # Ljava/lang/String;
    .param p5, "signature"    # Ljava/lang/String;
    .param p6, "connectWay"    # I
    .param p7, "tag"    # Landroid/nfc/Tag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Landroid/nfc/Tag;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 241
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    move-object/from16 v0, p4

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 242
    .local v2, "businessExtJson":Lorg/json/JSONObject;
    const-string v7, "busiSerial"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 243
    const-string v7, "busiSerial"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/ctsi/idcertification/CloudReaderClient;->busiSerial:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    .end local v2    # "businessExtJson":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/ctsi/idcertification/CloudReaderClient;->mAuthInfo:Lcom/ctsi/idcertification/entity/AuthInfo;

    invoke-virtual {v7, p1}, Lcom/ctsi/idcertification/entity/AuthInfo;->setAppId(Ljava/lang/String;)V

    .line 250
    iget-object v7, p0, Lcom/ctsi/idcertification/CloudReaderClient;->mAuthInfo:Lcom/ctsi/idcertification/entity/AuthInfo;

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Lcom/ctsi/idcertification/entity/AuthInfo;->setTimestamp(Ljava/lang/String;)V

    .line 251
    iget-object v7, p0, Lcom/ctsi/idcertification/CloudReaderClient;->mAuthInfo:Lcom/ctsi/idcertification/entity/AuthInfo;

    move-object/from16 v0, p3

    invoke-virtual {v7, v0}, Lcom/ctsi/idcertification/entity/AuthInfo;->setNonce(Ljava/lang/String;)V

    .line 252
    iget-object v7, p0, Lcom/ctsi/idcertification/CloudReaderClient;->mAuthInfo:Lcom/ctsi/idcertification/entity/AuthInfo;

    move-object/from16 v0, p4

    invoke-virtual {v7, v0}, Lcom/ctsi/idcertification/entity/AuthInfo;->setBusinessExt(Ljava/lang/String;)V

    .line 253
    iget-object v7, p0, Lcom/ctsi/idcertification/CloudReaderClient;->mAuthInfo:Lcom/ctsi/idcertification/entity/AuthInfo;

    move-object/from16 v0, p5

    invoke-virtual {v7, v0}, Lcom/ctsi/idcertification/entity/AuthInfo;->setSignature(Ljava/lang/String;)V

    .line 255
    iget-object v7, p0, Lcom/ctsi/idcertification/CloudReaderClient;->mreadCardListener:Lcom/ctsi/idcertification/CloudReaderClient$OnReadCardListener;

    invoke-direct {p0, v7}, Lcom/ctsi/idcertification/CloudReaderClient;->setOnReadCardListener(Lcom/ctsi/idcertification/CloudReaderClient$OnReadCardListener;)V

    .line 256
    const/4 v7, 0x2

    move/from16 v0, p6

    if-ne v0, v7, :cond_1

    .line 257
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/ctsi/idcertification/CloudReaderClient;->mTag:Landroid/nfc/Tag;

    .line 258
    :cond_1
    iget-object v7, p0, Lcom/ctsi/idcertification/CloudReaderClient;->mAuthInfo:Lcom/ctsi/idcertification/entity/AuthInfo;

    move/from16 v0, p6

    invoke-direct {p0, v7, v0}, Lcom/ctsi/idcertification/CloudReaderClient;->ReadCard(Lcom/ctsi/idcertification/entity/AuthInfo;I)V

    .line 259
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 260
    .local v8, "startTime":J
    :goto_1
    iget-boolean v7, p0, Lcom/ctsi/idcertification/CloudReaderClient;->bGotResult:Z

    if-eqz v7, :cond_3

    .line 280
    :goto_2
    :try_start_1
    iget-object v7, p0, Lcom/ctsi/idcertification/CloudReaderClient;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v7, :cond_2

    .line 281
    iget-object v7, p0, Lcom/ctsi/idcertification/CloudReaderClient;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v7}, Landroid/app/ProgressDialog;->cancel()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 285
    :cond_2
    :goto_3
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/ctsi/idcertification/CloudReaderClient;->bGotResult:Z

    .line 286
    iget-object v7, p0, Lcom/ctsi/idcertification/CloudReaderClient;->mResultMap:Ljava/util/Map;

    return-object v7

    .line 245
    .end local v8    # "startTime":J
    :catch_0
    move-exception v6

    .line 247
    .local v6, "e1":Lorg/json/JSONException;
    invoke-virtual {v6}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 261
    .end local v6    # "e1":Lorg/json/JSONException;
    .restart local v8    # "startTime":J
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 262
    .local v4, "currentTime":J
    sub-long v10, v4, v8

    sget-wide v12, Lcom/ctsi/idcertification/constant/Constant;->TIME_OUT:J

    cmp-long v7, v10, v12

    if-gez v7, :cond_4

    .line 264
    const-wide/16 v10, 0x3e8

    :try_start_2
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 265
    :catch_1
    move-exception v3

    .line 267
    .local v3, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 270
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :cond_4
    iget-object v7, p0, Lcom/ctsi/idcertification/CloudReaderClient;->mResultMap:Ljava/util/Map;

    const-string v10, "resultFlag"

    .line 271
    const/4 v11, -0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 270
    invoke-interface {v7, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    iget-object v7, p0, Lcom/ctsi/idcertification/CloudReaderClient;->mResultMap:Ljava/util/Map;

    const-string v10, "stepFlag"

    new-instance v11, Ljava/lang/StringBuilder;

    iget v12, p0, Lcom/ctsi/idcertification/CloudReaderClient;->mStep:I

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    iget-object v7, p0, Lcom/ctsi/idcertification/CloudReaderClient;->mResultMap:Ljava/util/Map;

    const-string v10, "errorMsg"

    .line 274
    const-string v11, "\u8d85\u65f6"

    .line 273
    invoke-interface {v7, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    iget-object v7, p0, Lcom/ctsi/idcertification/CloudReaderClient;->mResultMap:Ljava/util/Map;

    const-string v10, "resultContent"

    const-string v11, ""

    invoke-interface {v7, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 282
    .end local v4    # "currentTime":J
    :catch_2
    move-exception v3

    .line 283
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 291
    iget-object v0, p0, Lcom/ctsi/idcertification/CloudReaderClient;->mClient:Lcom/ctsi/idcertification/custom/CustomInterface;

    invoke-interface {v0}, Lcom/ctsi/idcertification/custom/CustomInterface;->usbDisconnect()Ljava/util/Map;

    .line 292
    iget-object v0, p0, Lcom/ctsi/idcertification/CloudReaderClient;->mClient:Lcom/ctsi/idcertification/custom/CustomInterface;

    invoke-interface {v0}, Lcom/ctsi/idcertification/custom/CustomInterface;->nfcDisconnect()Ljava/util/Map;

    .line 293
    iget-object v0, p0, Lcom/ctsi/idcertification/CloudReaderClient;->mClient:Lcom/ctsi/idcertification/custom/CustomInterface;

    invoke-interface {v0}, Lcom/ctsi/idcertification/custom/CustomInterface;->clear()V

    .line 294
    iget-object v0, p0, Lcom/ctsi/idcertification/CloudReaderClient;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 295
    iput-object v1, p0, Lcom/ctsi/idcertification/CloudReaderClient;->progressDialog:Landroid/app/ProgressDialog;

    .line 297
    :cond_0
    sput-object v1, Lcom/ctsi/idcertification/CloudReaderClient;->cloudReaderClient:Lcom/ctsi/idcertification/CloudReaderClient;

    .line 298
    return-void
.end method

.method public connect(ILandroid/nfc/NfcAdapter$ReaderCallback;)Ljava/util/Map;
    .locals 5
    .param p1, "connectWay"    # I
    .param p2, "nfcCallBack"    # Landroid/nfc/NfcAdapter$ReaderCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/nfc/NfcAdapter$ReaderCallback;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 144
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 148
    .local v1, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v3, 0x2

    if-ne p1, v3, :cond_0

    .line 149
    iget-object v3, p0, Lcom/ctsi/idcertification/CloudReaderClient;->mClient:Lcom/ctsi/idcertification/custom/CustomInterface;

    invoke-interface {v3, p2}, Lcom/ctsi/idcertification/custom/CustomInterface;->nfcConnect(Landroid/nfc/NfcAdapter$ReaderCallback;)Ljava/util/Map;

    move-result-object v1

    .line 160
    :goto_0
    return-object v1

    .line 150
    :cond_0
    const/4 v3, 0x1

    if-ne p1, v3, :cond_1

    .line 151
    iget-object v3, p0, Lcom/ctsi/idcertification/CloudReaderClient;->mClient:Lcom/ctsi/idcertification/custom/CustomInterface;

    invoke-interface {v3}, Lcom/ctsi/idcertification/custom/CustomInterface;->usbConnect()Ljava/util/Map;

    move-result-object v1

    .line 153
    goto :goto_0

    .line 154
    :cond_1
    const/4 v2, -0x1

    .line 155
    .local v2, "resultFlag":I
    const-string v0, "\u8bfb\u5361\u65b9\u5f0f\u5e94\u4e3a 1 - OTG; 2 - NFC."

    .line 156
    .local v0, "errorMsg":Ljava/lang/String;
    const-string v3, "resultFlag"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    const-string v3, "errorMsg"

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public disconnect()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 166
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 170
    .local v1, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget v3, p0, Lcom/ctsi/idcertification/CloudReaderClient;->mConnectWay:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 171
    iget-object v3, p0, Lcom/ctsi/idcertification/CloudReaderClient;->mClient:Lcom/ctsi/idcertification/custom/CustomInterface;

    invoke-interface {v3}, Lcom/ctsi/idcertification/custom/CustomInterface;->usbDisconnect()Ljava/util/Map;

    move-result-object v1

    .line 186
    :goto_0
    return-object v1

    .line 173
    :cond_0
    iget v3, p0, Lcom/ctsi/idcertification/CloudReaderClient;->mConnectWay:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 175
    iget-object v3, p0, Lcom/ctsi/idcertification/CloudReaderClient;->mClient:Lcom/ctsi/idcertification/custom/CustomInterface;

    invoke-interface {v3}, Lcom/ctsi/idcertification/custom/CustomInterface;->nfcDisconnect()Ljava/util/Map;

    move-result-object v1

    .line 177
    goto :goto_0

    .line 178
    :cond_1
    const/4 v2, -0x1

    .line 179
    .local v2, "resultFlag":I
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u8bfb\u5361\u65b9\u5f0f\u9519\u8bef\uff1a "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/ctsi/idcertification/CloudReaderClient;->mConnectWay:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 180
    const-string v4, "\u8bfb\u5361\u65b9\u5f0f\u5e94\u4e3a 1 - OTG; 2 - NFC."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 179
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, "errorMsg":Ljava/lang/String;
    const-string v3, "resultFlag"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    const-string v3, "errorMsg"

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getStatus()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 191
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 196
    .local v1, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget v4, p0, Lcom/ctsi/idcertification/CloudReaderClient;->mConnectWay:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 197
    iget-object v4, p0, Lcom/ctsi/idcertification/CloudReaderClient;->mClient:Lcom/ctsi/idcertification/custom/CustomInterface;

    invoke-interface {v4}, Lcom/ctsi/idcertification/custom/CustomInterface;->usbCheckState()Ljava/util/Map;

    move-result-object v1

    .line 227
    :goto_0
    return-object v1

    .line 199
    :cond_0
    iget v4, p0, Lcom/ctsi/idcertification/CloudReaderClient;->mConnectWay:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    .line 200
    const/4 v2, 0x0

    .line 201
    .local v2, "resultFlag":I
    iget-object v4, p0, Lcom/ctsi/idcertification/CloudReaderClient;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v4

    iput-object v4, p0, Lcom/ctsi/idcertification/CloudReaderClient;->nfcAdapter:Landroid/nfc/NfcAdapter;

    .line 202
    iget-object v4, p0, Lcom/ctsi/idcertification/CloudReaderClient;->nfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v4, :cond_1

    .line 203
    const-string v0, "\u4e0d\u652f\u6301NFC"

    .line 204
    .local v0, "errorMsg":Ljava/lang/String;
    const/4 v3, -0x1

    .line 212
    .local v3, "status":I
    :goto_1
    const-string v4, "resultFlag"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    const-string v4, "errorMsg"

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    const-string v4, "status"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 205
    .end local v0    # "errorMsg":Ljava/lang/String;
    .end local v3    # "status":I
    :cond_1
    iget-object v4, p0, Lcom/ctsi/idcertification/CloudReaderClient;->nfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v4}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_2

    .line 206
    const-string v0, "NFC\u672a\u5f00\u542f"

    .line 207
    .restart local v0    # "errorMsg":Ljava/lang/String;
    const/4 v3, -0x1

    .line 208
    .restart local v3    # "status":I
    goto :goto_1

    .line 209
    .end local v0    # "errorMsg":Ljava/lang/String;
    .end local v3    # "status":I
    :cond_2
    const-string v0, ""

    .line 210
    .restart local v0    # "errorMsg":Ljava/lang/String;
    const/4 v3, 0x0

    .restart local v3    # "status":I
    goto :goto_1

    .line 217
    .end local v0    # "errorMsg":Ljava/lang/String;
    .end local v2    # "resultFlag":I
    .end local v3    # "status":I
    :cond_3
    const/4 v2, -0x1

    .line 218
    .restart local v2    # "resultFlag":I
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u8bfb\u5361\u65b9\u5f0f\u9519\u8bef\uff1a "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/ctsi/idcertification/CloudReaderClient;->mConnectWay:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 219
    const-string v5, "\u8bfb\u5361\u65b9\u5f0f\u5e94\u4e3a 1 - OTG; 2 - NFC."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 218
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 220
    .restart local v0    # "errorMsg":Ljava/lang/String;
    const/4 v3, -0x1

    .line 221
    .restart local v3    # "status":I
    const-string v4, "resultFlag"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    const-string v4, "errorMsg"

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    const-string v4, "status"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method nfcReadCard(Landroid/nfc/Tag;)V
    .locals 2
    .param p1, "tag"    # Landroid/nfc/Tag;

    .prologue
    .line 463
    const/4 v0, 0x3

    iput v0, p0, Lcom/ctsi/idcertification/CloudReaderClient;->mStep:I

    .line 464
    iget-object v0, p0, Lcom/ctsi/idcertification/CloudReaderClient;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 465
    iget-object v0, p0, Lcom/ctsi/idcertification/CloudReaderClient;->pool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/ctsi/idcertification/CloudReaderClient$5;

    invoke-direct {v1, p0, p1}, Lcom/ctsi/idcertification/CloudReaderClient$5;-><init>(Lcom/ctsi/idcertification/CloudReaderClient;Landroid/nfc/Tag;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 482
    return-void
.end method
