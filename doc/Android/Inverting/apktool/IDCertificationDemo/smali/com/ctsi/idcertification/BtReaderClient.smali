.class public Lcom/ctsi/idcertification/BtReaderClient;
.super Ljava/lang/Object;
.source "BtReaderClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ctsi/idcertification/BtReaderClient$IClientCallBack;
    }
.end annotation


# static fields
.field public static bt_flag:Z

.field public static bt_mac:Ljava/lang/String;


# instance fields
.field private btClient:Lcom/ctsi/idcertification/custom/CustomInterface;

.field private mCloudReaderClient:Lcom/ctsi/idcertification/CloudReaderClient;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/ctsi/idcertification/BtReaderClient;->mContext:Landroid/content/Context;

    .line 21
    invoke-static {p1}, Lcom/ctsi/idcertification/custom/SunriseApi;->getSunriseApiInstance(Landroid/content/Context;)Lcom/ctsi/idcertification/custom/SunriseApi;

    move-result-object v0

    iput-object v0, p0, Lcom/ctsi/idcertification/BtReaderClient;->btClient:Lcom/ctsi/idcertification/custom/CustomInterface;

    .line 23
    iget-object v0, p0, Lcom/ctsi/idcertification/BtReaderClient;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/ctsi/idcertification/CloudReaderClient;->getCloudReaderClientInstance(Landroid/content/Context;)Lcom/ctsi/idcertification/CloudReaderClient;

    move-result-object v0

    .line 22
    iput-object v0, p0, Lcom/ctsi/idcertification/BtReaderClient;->mCloudReaderClient:Lcom/ctsi/idcertification/CloudReaderClient;

    .line 24
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/ctsi/idcertification/BtReaderClient;->mCloudReaderClient:Lcom/ctsi/idcertification/CloudReaderClient;

    invoke-virtual {v0}, Lcom/ctsi/idcertification/CloudReaderClient;->clear()V

    .line 82
    return-void
.end method

.method public cloudReadCert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 8
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "timestamp"    # Ljava/lang/String;
    .param p3, "nonce"    # Ljava/lang/String;
    .param p4, "businessExt"    # Ljava/lang/String;
    .param p5, "signature"    # Ljava/lang/String;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/ctsi/idcertification/BtReaderClient;->mCloudReaderClient:Lcom/ctsi/idcertification/CloudReaderClient;

    .line 72
    const/4 v6, 0x3

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 71
    invoke-virtual/range {v0 .. v6}, Lcom/ctsi/idcertification/CloudReaderClient;->CloudReadCert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/Map;

    move-result-object v7

    .line 74
    .local v7, "result":Ljava/util/Map;
    return-object v7
.end method

.method public connectBt(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "bt_mac"    # Ljava/lang/String;

    .prologue
    .line 33
    sput-object p1, Lcom/ctsi/idcertification/BtReaderClient;->bt_mac:Ljava/lang/String;

    .line 35
    if-nez p1, :cond_0

    .line 36
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 44
    :goto_0
    return-object v1

    .line 39
    :cond_0
    iget-object v1, p0, Lcom/ctsi/idcertification/BtReaderClient;->btClient:Lcom/ctsi/idcertification/custom/CustomInterface;

    invoke-interface {v1, p1}, Lcom/ctsi/idcertification/custom/CustomInterface;->btConnect(Ljava/lang/String;)Z

    move-result v0

    .line 43
    .local v0, "isConnect":Z
    sput-boolean v0, Lcom/ctsi/idcertification/BtReaderClient;->bt_flag:Z

    .line 44
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method

.method public disconnectBt()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/ctsi/idcertification/BtReaderClient;->btClient:Lcom/ctsi/idcertification/custom/CustomInterface;

    invoke-interface {v0}, Lcom/ctsi/idcertification/custom/CustomInterface;->btDisconnect()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public setCallBack(Lcom/ctsi/idcertification/BtReaderClient$IClientCallBack;)V
    .locals 1
    .param p1, "mCallback"    # Lcom/ctsi/idcertification/BtReaderClient$IClientCallBack;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/ctsi/idcertification/BtReaderClient;->btClient:Lcom/ctsi/idcertification/custom/CustomInterface;

    invoke-interface {v0, p1}, Lcom/ctsi/idcertification/custom/CustomInterface;->setCTSIBTCallback(Lcom/ctsi/idcertification/BtReaderClient$IClientCallBack;)V

    .line 91
    return-void
.end method
