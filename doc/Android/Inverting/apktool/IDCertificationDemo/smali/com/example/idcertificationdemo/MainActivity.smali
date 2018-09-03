.class public Lcom/example/idcertificationdemo/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# instance fields
.field appId:Ljava/lang/String;

.field appSecret:Ljava/lang/String;

.field appSecret_3des:Ljava/lang/String;

.field private bt_reader:Lcom/ctsi/idcertification/BtReaderClient;

.field private btn_bt:Landroid/widget/Button;

.field private btn_otg:Landroid/widget/Button;

.field businessExt:Ljava/lang/String;

.field private handler:Landroid/os/Handler;

.field private image_identityPic:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field private nfcAdapter:Landroid/nfc/NfcAdapter;

.field nfcCallBack:Landroid/nfc/NfcAdapter$ReaderCallback;

.field nonce:Ljava/lang/String;

.field private pendingIntent:Landroid/app/PendingIntent;

.field private pool:Ljava/util/concurrent/ExecutorService;

.field private reader:Lcom/ctsi/idcertification/CloudReaderClient;

.field private resultMap:Ljava/util/Map;

.field sbData:Ljava/lang/StringBuffer;

.field signature:Ljava/lang/String;

.field timestamp:Ljava/lang/String;

.field private tv_birth:Landroid/widget/TextView;

.field private tv_certAddress:Landroid/widget/TextView;

.field private tv_certNumber:Landroid/widget/TextView;

.field private tv_certOrg:Landroid/widget/TextView;

.field private tv_date:Landroid/widget/TextView;

.field private tv_gender:Landroid/widget/TextView;

.field private tv_name:Landroid/widget/TextView;

.field private tv_nation:Landroid/widget/TextView;

.field private tv_result:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 49
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/example/idcertificationdemo/MainActivity;->pool:Ljava/util/concurrent/ExecutorService;

    .line 69
    const-string v0, "D34AE719CE3246E40729411452759F86D34AE719CE3246E4"

    iput-object v0, p0, Lcom/example/idcertificationdemo/MainActivity;->appSecret_3des:Ljava/lang/String;

    .line 70
    const-string v0, "30b5c231a8ea42c09c87f75d22ebc9ea"

    iput-object v0, p0, Lcom/example/idcertificationdemo/MainActivity;->appSecret:Ljava/lang/String;

    .line 71
    const-string v0, "1035"

    iput-object v0, p0, Lcom/example/idcertificationdemo/MainActivity;->appId:Ljava/lang/String;

    .line 72
    const-string v0, ""

    iput-object v0, p0, Lcom/example/idcertificationdemo/MainActivity;->timestamp:Ljava/lang/String;

    .line 73
    const-string v0, "jfoiiuylkjljpohi"

    iput-object v0, p0, Lcom/example/idcertificationdemo/MainActivity;->nonce:Ljava/lang/String;

    .line 74
    const-string v0, "{\"busiSerial\":\"12345\",\"staffCode\":\"110011\",\"channelCode\":\"2001\",\"areaCode\":\"020\",\"teminalType\":\"PC\",\"srcSystem\":\"CRM\",\"osType\":\"\",\"browserModel\":\"\",\"clientIP\":\"\",\"deviceModel\":\"\",\"deviceSerial\":\"\"}"

    iput-object v0, p0, Lcom/example/idcertificationdemo/MainActivity;->businessExt:Ljava/lang/String;

    .line 78
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/example/idcertificationdemo/MainActivity;->sbData:Ljava/lang/StringBuffer;

    .line 79
    const-string v0, ""

    iput-object v0, p0, Lcom/example/idcertificationdemo/MainActivity;->signature:Ljava/lang/String;

    .line 82
    new-instance v0, Lcom/example/idcertificationdemo/MainActivity$1;

    invoke-direct {v0, p0}, Lcom/example/idcertificationdemo/MainActivity$1;-><init>(Lcom/example/idcertificationdemo/MainActivity;)V

    iput-object v0, p0, Lcom/example/idcertificationdemo/MainActivity;->handler:Landroid/os/Handler;

    return-void
.end method

.method private StringToPic(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "picString"    # Ljava/lang/String;

    .prologue
    .line 362
    const/4 v3, 0x0

    :try_start_0
    invoke-static {p1, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 363
    .local v0, "arrayOfByte":[B
    const/4 v3, 0x0

    array-length v4, v0

    invoke-static {v0, v3, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 370
    .end local v0    # "arrayOfByte":[B
    :goto_0
    return-object v1

    .line 366
    :catch_0
    move-exception v2

    .line 368
    .local v2, "localException":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 370
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/example/idcertificationdemo/MainActivity;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/example/idcertificationdemo/MainActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/example/idcertificationdemo/MainActivity;->resultMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$002(Lcom/example/idcertificationdemo/MainActivity;Ljava/util/Map;)Ljava/util/Map;
    .locals 0
    .param p0, "x0"    # Lcom/example/idcertificationdemo/MainActivity;
    .param p1, "x1"    # Ljava/util/Map;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/example/idcertificationdemo/MainActivity;->resultMap:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic access$100(Lcom/example/idcertificationdemo/MainActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/example/idcertificationdemo/MainActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/example/idcertificationdemo/MainActivity;->updateResultToUI(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/example/idcertificationdemo/MainActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/example/idcertificationdemo/MainActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/example/idcertificationdemo/MainActivity;->tv_result:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/example/idcertificationdemo/MainActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/example/idcertificationdemo/MainActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/example/idcertificationdemo/MainActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/example/idcertificationdemo/MainActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/example/idcertificationdemo/MainActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/example/idcertificationdemo/MainActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/example/idcertificationdemo/MainActivity;)Landroid/nfc/NfcAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/example/idcertificationdemo/MainActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/example/idcertificationdemo/MainActivity;->nfcAdapter:Landroid/nfc/NfcAdapter;

    return-object v0
.end method

.method static synthetic access$600(Lcom/example/idcertificationdemo/MainActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/example/idcertificationdemo/MainActivity;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/example/idcertificationdemo/MainActivity;->getSignature()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/example/idcertificationdemo/MainActivity;)Lcom/ctsi/idcertification/CloudReaderClient;
    .locals 1
    .param p0, "x0"    # Lcom/example/idcertificationdemo/MainActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/example/idcertificationdemo/MainActivity;->reader:Lcom/ctsi/idcertification/CloudReaderClient;

    return-object v0
.end method

.method static synthetic access$800(Lcom/example/idcertificationdemo/MainActivity;)Ljava/util/concurrent/ExecutorService;
    .locals 1
    .param p0, "x0"    # Lcom/example/idcertificationdemo/MainActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/example/idcertificationdemo/MainActivity;->pool:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic access$900(Lcom/example/idcertificationdemo/MainActivity;)Lcom/ctsi/idcertification/BtReaderClient;
    .locals 1
    .param p0, "x0"    # Lcom/example/idcertificationdemo/MainActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/example/idcertificationdemo/MainActivity;->bt_reader:Lcom/ctsi/idcertification/BtReaderClient;

    return-object v0
.end method

.method private findViewByID()V
    .locals 1

    .prologue
    .line 244
    const v0, 0x7f08000c

    invoke-virtual {p0, v0}, Lcom/example/idcertificationdemo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/example/idcertificationdemo/MainActivity;->btn_bt:Landroid/widget/Button;

    .line 245
    const v0, 0x7f08000b

    invoke-virtual {p0, v0}, Lcom/example/idcertificationdemo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/example/idcertificationdemo/MainActivity;->btn_otg:Landroid/widget/Button;

    .line 246
    const v0, 0x7f08000a

    invoke-virtual {p0, v0}, Lcom/example/idcertificationdemo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/example/idcertificationdemo/MainActivity;->tv_result:Landroid/widget/TextView;

    .line 247
    const v0, 0x7f080005

    invoke-virtual {p0, v0}, Lcom/example/idcertificationdemo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/example/idcertificationdemo/MainActivity;->tv_birth:Landroid/widget/TextView;

    .line 248
    const v0, 0x7f080006

    invoke-virtual {p0, v0}, Lcom/example/idcertificationdemo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/example/idcertificationdemo/MainActivity;->tv_certAddress:Landroid/widget/TextView;

    .line 249
    const v0, 0x7f080007

    invoke-virtual {p0, v0}, Lcom/example/idcertificationdemo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/example/idcertificationdemo/MainActivity;->tv_certNumber:Landroid/widget/TextView;

    .line 251
    const v0, 0x7f080004

    invoke-virtual {p0, v0}, Lcom/example/idcertificationdemo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/example/idcertificationdemo/MainActivity;->tv_nation:Landroid/widget/TextView;

    .line 252
    const v0, 0x7f080001

    invoke-virtual {p0, v0}, Lcom/example/idcertificationdemo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/example/idcertificationdemo/MainActivity;->tv_name:Landroid/widget/TextView;

    .line 253
    const v0, 0x7f080003

    invoke-virtual {p0, v0}, Lcom/example/idcertificationdemo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/example/idcertificationdemo/MainActivity;->tv_gender:Landroid/widget/TextView;

    .line 254
    const v0, 0x7f080002

    invoke-virtual {p0, v0}, Lcom/example/idcertificationdemo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/example/idcertificationdemo/MainActivity;->image_identityPic:Landroid/widget/ImageView;

    .line 255
    const v0, 0x7f080008

    invoke-virtual {p0, v0}, Lcom/example/idcertificationdemo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/example/idcertificationdemo/MainActivity;->tv_certOrg:Landroid/widget/TextView;

    .line 256
    const v0, 0x7f080009

    invoke-virtual {p0, v0}, Lcom/example/idcertificationdemo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/example/idcertificationdemo/MainActivity;->tv_date:Landroid/widget/TextView;

    .line 258
    return-void
.end method

.method private getSignature()Ljava/lang/String;
    .locals 4

    .prologue
    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/example/idcertificationdemo/MainActivity;->timestamp:Ljava/lang/String;

    .line 235
    const-string v0, "timestamp"

    iget-object v1, p0, Lcom/example/idcertificationdemo/MainActivity;->timestamp:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/example/idcertificationdemo/MainActivity;->sbData:Ljava/lang/StringBuffer;

    .line 237
    iget-object v0, p0, Lcom/example/idcertificationdemo/MainActivity;->sbData:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/example/idcertificationdemo/MainActivity;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/example/idcertificationdemo/MainActivity;->appSecret:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/example/idcertificationdemo/MainActivity;->businessExt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/example/idcertificationdemo/MainActivity;->nonce:Ljava/lang/String;

    .line 238
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/example/idcertificationdemo/MainActivity;->timestamp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 239
    iget-object v0, p0, Lcom/example/idcertificationdemo/MainActivity;->sbData:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jarjar/apache/commons/codec/digest/DigestUtils;->shaHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initData()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 200
    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/example/idcertificationdemo/MainActivity;->nfcAdapter:Landroid/nfc/NfcAdapter;

    .line 201
    new-instance v0, Landroid/content/Intent;

    .line 202
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 201
    invoke-static {p0, v2, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/example/idcertificationdemo/MainActivity;->pendingIntent:Landroid/app/PendingIntent;

    .line 203
    new-instance v0, Lcom/ctsi/idcertification/CloudReaderClient;

    invoke-direct {v0, p0}, Lcom/ctsi/idcertification/CloudReaderClient;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/example/idcertificationdemo/MainActivity;->reader:Lcom/ctsi/idcertification/CloudReaderClient;

    .line 204
    new-instance v0, Lcom/ctsi/idcertification/BtReaderClient;

    invoke-direct {v0, p0}, Lcom/ctsi/idcertification/BtReaderClient;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/example/idcertificationdemo/MainActivity;->bt_reader:Lcom/ctsi/idcertification/BtReaderClient;

    .line 205
    iget-object v0, p0, Lcom/example/idcertificationdemo/MainActivity;->bt_reader:Lcom/ctsi/idcertification/BtReaderClient;

    new-instance v1, Lcom/example/idcertificationdemo/MainActivity$3;

    invoke-direct {v1, p0}, Lcom/example/idcertificationdemo/MainActivity$3;-><init>(Lcom/example/idcertificationdemo/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/ctsi/idcertification/BtReaderClient;->setCallBack(Lcom/ctsi/idcertification/BtReaderClient$IClientCallBack;)V

    .line 230
    return-void
.end method

.method private initReaderCallback()V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 166
    :try_start_0
    new-instance v0, Lcom/example/idcertificationdemo/MainActivity$2;

    invoke-direct {v0, p0}, Lcom/example/idcertificationdemo/MainActivity$2;-><init>(Lcom/example/idcertificationdemo/MainActivity;)V

    iput-object v0, p0, Lcom/example/idcertificationdemo/MainActivity;->nfcCallBack:Landroid/nfc/NfcAdapter$ReaderCallback;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    :goto_0
    return-void

    .line 192
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 262
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 263
    iget-object v0, p0, Lcom/example/idcertificationdemo/MainActivity;->btn_bt:Landroid/widget/Button;

    new-instance v1, Lcom/example/idcertificationdemo/MainActivity$4;

    invoke-direct {v1, p0}, Lcom/example/idcertificationdemo/MainActivity$4;-><init>(Lcom/example/idcertificationdemo/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 276
    iget-object v0, p0, Lcom/example/idcertificationdemo/MainActivity;->btn_otg:Landroid/widget/Button;

    new-instance v1, Lcom/example/idcertificationdemo/MainActivity$5;

    invoke-direct {v1, p0}, Lcom/example/idcertificationdemo/MainActivity$5;-><init>(Lcom/example/idcertificationdemo/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 300
    return-void
.end method

.method private updateResultToUI(Ljava/lang/String;)V
    .locals 9
    .param p1, "paramString"    # Ljava/lang/String;

    .prologue
    .line 322
    const/4 v4, 0x0

    .line 323
    .local v4, "jsonObj":Lorg/json/JSONObject;
    const/4 v1, 0x0

    .line 326
    .local v1, "content":Ljava/lang/String;
    :try_start_0
    invoke-static {p1}, Lorg/json/XML;->toJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 327
    const-string v6, "certificate"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 335
    :goto_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 336
    .local v0, "builder":Lcom/google/gson/Gson;
    const-class v6, Lcom/example/idcertificationdemo/IDCard;

    invoke-virtual {v0, v1, v6}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/example/idcertificationdemo/IDCard;

    .line 337
    .local v3, "idcard":Lcom/example/idcertificationdemo/IDCard;
    iget-object v6, p0, Lcom/example/idcertificationdemo/MainActivity;->tv_birth:Landroid/widget/TextView;

    iget-object v7, v3, Lcom/example/idcertificationdemo/IDCard;->bornDay:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 338
    iget-object v6, p0, Lcom/example/idcertificationdemo/MainActivity;->tv_certAddress:Landroid/widget/TextView;

    iget-object v7, v3, Lcom/example/idcertificationdemo/IDCard;->certAddress:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 339
    iget-object v6, p0, Lcom/example/idcertificationdemo/MainActivity;->tv_certNumber:Landroid/widget/TextView;

    iget-object v7, v3, Lcom/example/idcertificationdemo/IDCard;->certNumber:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 341
    iget-object v7, p0, Lcom/example/idcertificationdemo/MainActivity;->tv_gender:Landroid/widget/TextView;

    iget-object v6, v3, Lcom/example/idcertificationdemo/IDCard;->gender:Ljava/lang/String;

    const-string v8, "0"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "\u5973"

    :goto_1
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 342
    iget-object v6, p0, Lcom/example/idcertificationdemo/MainActivity;->tv_name:Landroid/widget/TextView;

    iget-object v7, v3, Lcom/example/idcertificationdemo/IDCard;->partyName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 343
    iget-object v6, p0, Lcom/example/idcertificationdemo/MainActivity;->tv_nation:Landroid/widget/TextView;

    iget-object v7, v3, Lcom/example/idcertificationdemo/IDCard;->nation:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 344
    iget-object v6, p0, Lcom/example/idcertificationdemo/MainActivity;->tv_certOrg:Landroid/widget/TextView;

    iget-object v7, v3, Lcom/example/idcertificationdemo/IDCard;->certOrg:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 345
    iget-object v6, p0, Lcom/example/idcertificationdemo/MainActivity;->tv_date:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v3, Lcom/example/idcertificationdemo/IDCard;->effDate:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v3, Lcom/example/idcertificationdemo/IDCard;->expDate:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 346
    iget-object v6, v3, Lcom/example/idcertificationdemo/IDCard;->identityPic:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/example/idcertificationdemo/MainActivity;->StringToPic(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 347
    .local v5, "pic":Landroid/graphics/Bitmap;
    if-eqz v5, :cond_0

    .line 348
    iget-object v6, p0, Lcom/example/idcertificationdemo/MainActivity;->image_identityPic:Landroid/widget/ImageView;

    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 355
    :cond_0
    iget-object v6, p0, Lcom/example/idcertificationdemo/MainActivity;->handler:Landroid/os/Handler;

    const/16 v7, 0x378

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 356
    return-void

    .line 328
    .end local v0    # "builder":Lcom/google/gson/Gson;
    .end local v3    # "idcard":Lcom/example/idcertificationdemo/IDCard;
    .end local v5    # "pic":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v2

    .line 330
    .local v2, "e":Lcom/google/gson/JsonSyntaxException;
    invoke-virtual {v2}, Lcom/google/gson/JsonSyntaxException;->printStackTrace()V

    goto/16 :goto_0

    .line 331
    .end local v2    # "e":Lcom/google/gson/JsonSyntaxException;
    :catch_1
    move-exception v2

    .line 333
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    .line 341
    .end local v2    # "e":Lorg/json/JSONException;
    .restart local v0    # "builder":Lcom/google/gson/Gson;
    .restart local v3    # "idcard":Lcom/example/idcertificationdemo/IDCard;
    :cond_1
    const-string v6, "\u7537"

    goto :goto_1
.end method


# virtual methods
.method public clearUI()V
    .locals 2

    .prologue
    .line 375
    iget-object v0, p0, Lcom/example/idcertificationdemo/MainActivity;->tv_birth:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 376
    iget-object v0, p0, Lcom/example/idcertificationdemo/MainActivity;->tv_certAddress:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 377
    iget-object v0, p0, Lcom/example/idcertificationdemo/MainActivity;->tv_certNumber:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 379
    iget-object v0, p0, Lcom/example/idcertificationdemo/MainActivity;->tv_gender:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 380
    iget-object v0, p0, Lcom/example/idcertificationdemo/MainActivity;->tv_name:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 381
    iget-object v0, p0, Lcom/example/idcertificationdemo/MainActivity;->tv_nation:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 382
    iget-object v0, p0, Lcom/example/idcertificationdemo/MainActivity;->tv_certOrg:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 383
    iget-object v0, p0, Lcom/example/idcertificationdemo/MainActivity;->tv_date:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 384
    iget-object v0, p0, Lcom/example/idcertificationdemo/MainActivity;->image_identityPic:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 385
    iget-object v0, p0, Lcom/example/idcertificationdemo/MainActivity;->tv_result:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 386
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 304
    packed-switch p1, :pswitch_data_0

    .line 317
    :cond_0
    :goto_0
    return-void

    .line 308
    :pswitch_0
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 310
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    sget-object v2, Lcom/example/idcertificationdemo/DeviceListActivity;->EXTRA_DEVICE_ADDRESS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 313
    .local v0, "blueaddress":Ljava/lang/String;
    iget-object v1, p0, Lcom/example/idcertificationdemo/MainActivity;->bt_reader:Lcom/ctsi/idcertification/BtReaderClient;

    invoke-virtual {v1, v0}, Lcom/ctsi/idcertification/BtReaderClient;->connectBt(Ljava/lang/String;)Ljava/lang/Boolean;

    goto :goto_0

    .line 304
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 131
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 132
    const/high16 v0, 0x7f030000

    invoke-virtual {p0, v0}, Lcom/example/idcertificationdemo/MainActivity;->setContentView(I)V

    .line 133
    iput-object p0, p0, Lcom/example/idcertificationdemo/MainActivity;->mContext:Landroid/content/Context;

    .line 134
    invoke-direct {p0}, Lcom/example/idcertificationdemo/MainActivity;->findViewByID()V

    .line 135
    invoke-direct {p0}, Lcom/example/idcertificationdemo/MainActivity;->initData()V

    .line 136
    invoke-direct {p0}, Lcom/example/idcertificationdemo/MainActivity;->initView()V

    .line 143
    invoke-direct {p0}, Lcom/example/idcertificationdemo/MainActivity;->initReaderCallback()V

    .line 144
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 156
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 157
    iget-object v0, p0, Lcom/example/idcertificationdemo/MainActivity;->reader:Lcom/ctsi/idcertification/CloudReaderClient;

    invoke-virtual {v0}, Lcom/ctsi/idcertification/CloudReaderClient;->clear()V

    .line 158
    iget-object v0, p0, Lcom/example/idcertificationdemo/MainActivity;->bt_reader:Lcom/ctsi/idcertification/BtReaderClient;

    invoke-virtual {v0}, Lcom/ctsi/idcertification/BtReaderClient;->clear()V

    .line 160
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 148
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 149
    iget-object v0, p0, Lcom/example/idcertificationdemo/MainActivity;->nfcCallBack:Landroid/nfc/NfcAdapter$ReaderCallback;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/example/idcertificationdemo/MainActivity;->reader:Lcom/ctsi/idcertification/CloudReaderClient;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/example/idcertificationdemo/MainActivity;->nfcCallBack:Landroid/nfc/NfcAdapter$ReaderCallback;

    invoke-virtual {v0, v1, v2}, Lcom/ctsi/idcertification/CloudReaderClient;->connect(ILandroid/nfc/NfcAdapter$ReaderCallback;)Ljava/util/Map;

    .line 152
    :cond_0
    return-void
.end method
