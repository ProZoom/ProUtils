.class public Lcom/ctsi/idcertification/entity/AuthInfo;
.super Ljava/lang/Object;
.source "AuthInfo.java"


# instance fields
.field public AppId:Ljava/lang/String;

.field public BusinessExt:Ljava/lang/String;

.field public CardReaderInfo:Ljava/lang/String;

.field public Nonce:Ljava/lang/String;

.field public Signature:Ljava/lang/String;

.field public Timestamp:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/ctsi/idcertification/entity/AuthInfo;->AppId:Ljava/lang/String;

    return-object v0
.end method

.method public getBusinessExt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/ctsi/idcertification/entity/AuthInfo;->BusinessExt:Ljava/lang/String;

    return-object v0
.end method

.method public getCardReaderInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/ctsi/idcertification/entity/AuthInfo;->CardReaderInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getNonce()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/ctsi/idcertification/entity/AuthInfo;->Nonce:Ljava/lang/String;

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/ctsi/idcertification/entity/AuthInfo;->Signature:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/ctsi/idcertification/entity/AuthInfo;->Timestamp:Ljava/lang/String;

    return-object v0
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/ctsi/idcertification/entity/AuthInfo;->AppId:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public setBusinessExt(Ljava/lang/String;)V
    .locals 0
    .param p1, "businessExt"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/ctsi/idcertification/entity/AuthInfo;->BusinessExt:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setCardReaderInfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "cardReaderInfo"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/ctsi/idcertification/entity/AuthInfo;->CardReaderInfo:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setNonce(Ljava/lang/String;)V
    .locals 0
    .param p1, "nonce"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/ctsi/idcertification/entity/AuthInfo;->Nonce:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setSignature(Ljava/lang/String;)V
    .locals 0
    .param p1, "signature"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/ctsi/idcertification/entity/AuthInfo;->Signature:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setTimestamp(Ljava/lang/String;)V
    .locals 0
    .param p1, "timestamp"    # Ljava/lang/String;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/ctsi/idcertification/entity/AuthInfo;->Timestamp:Ljava/lang/String;

    .line 23
    return-void
.end method
