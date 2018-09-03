.class public Lcom/sunrise/reader/pos/YifengPosReader;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sunrise/reader/pos/IPOSCardReader;


# instance fields
.field private TAG:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field public iService:Lcom/yifengcom/yfpos/service/IService;

.field public isBind:Z

.field public myconn:Lcom/sunrise/reader/pos/YifengPosReader$Myconn;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sunrise/reader/pos/YifengPosReader;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sunrise/reader/pos/YifengPosReader;->isBind:Z

    iput-object p1, p0, Lcom/sunrise/reader/pos/YifengPosReader;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public bind()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.yifeng.aidl"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.yifengcom.yfpos"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Lcom/sunrise/reader/pos/YifengPosReader$Myconn;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sunrise/reader/pos/YifengPosReader$Myconn;-><init>(Lcom/sunrise/reader/pos/YifengPosReader;Lcom/sunrise/reader/pos/YifengPosReader$1;)V

    iput-object v1, p0, Lcom/sunrise/reader/pos/YifengPosReader;->myconn:Lcom/sunrise/reader/pos/YifengPosReader$Myconn;

    iget-object v1, p0, Lcom/sunrise/reader/pos/YifengPosReader;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/sunrise/reader/pos/YifengPosReader;->myconn:Lcom/sunrise/reader/pos/YifengPosReader$Myconn;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sunrise/reader/pos/YifengPosReader;->isBind:Z

    iget-boolean v0, p0, Lcom/sunrise/reader/pos/YifengPosReader;->isBind:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "\u7ed1\u5b9a\u6210\u529f"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "\u7ed1\u5b9a\u5931\u8d25"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public findCardInAsyncTask(Landroid/nfc/NfcAdapter$ReaderCallback;)V
    .locals 2

    new-instance v0, Lcom/sunrise/reader/pos/YifengPosReader$1;

    invoke-direct {v0, p0, p1}, Lcom/sunrise/reader/pos/YifengPosReader$1;-><init>(Lcom/sunrise/reader/pos/YifengPosReader;Landroid/nfc/NfcAdapter$ReaderCallback;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/sunrise/reader/pos/YifengPosReader$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public findICCard()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public findIDCard(Landroid/nfc/NfcAdapter$ReaderCallback;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sunrise/reader/pos/YifengPosReader;->findCardInAsyncTask(Landroid/nfc/NfcAdapter$ReaderCallback;)V

    const/4 v0, 0x1

    return v0
.end method

.method public icCardPowerOff()V
    .locals 0

    return-void
.end method

.method public icCardPowerOn()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public icCardTransmitApdu([B)[B
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method public init()V
    .locals 0

    invoke-virtual {p0}, Lcom/sunrise/reader/pos/YifengPosReader;->bind()V

    return-void
.end method

.method public isConnected()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public stopFindICCard()V
    .locals 0

    return-void
.end method

.method public stopFindIDCard()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/sunrise/reader/pos/YifengPosReader;->iService:Lcom/yifengcom/yfpos/service/IService;

    invoke-interface {v0}, Lcom/yifengcom/yfpos/service/IService;->rfidCloseEx()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public transceive([B)[B
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/sunrise/reader/pos/YifengPosReader;->iService:Lcom/yifengcom/yfpos/service/IService;

    const/4 v2, 0x2

    invoke-interface {v0, p1, v2}, Lcom/yifengcom/yfpos/service/IService;->rfidApduEx([BI)[B

    move-result-object v2

    const/4 v0, 0x0

    aget-byte v0, v2, v0

    and-int/lit16 v0, v0, 0xff

    const/4 v3, 0x1

    aget-byte v3, v2, v3

    and-int/lit16 v3, v3, 0xff

    mul-int/lit16 v3, v3, 0x100

    add-int/2addr v3, v0

    add-int/lit8 v0, v3, 0x1

    new-array v0, v0, [B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x2

    const/4 v4, 0x0

    :try_start_1
    invoke-static {v2, v1, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v1, 0x0

    aput-byte v1, v0, v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    :goto_1
    :try_start_2
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    if-eqz v0, :cond_0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    :goto_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v0, v1

    :goto_3
    if-eqz v0, :cond_0

    goto :goto_0

    :catchall_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method public unBind()V
    .locals 2

    iget-object v0, p0, Lcom/sunrise/reader/pos/YifengPosReader;->myconn:Lcom/sunrise/reader/pos/YifengPosReader$Myconn;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/sunrise/reader/pos/YifengPosReader;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/sunrise/reader/pos/YifengPosReader;->myconn:Lcom/sunrise/reader/pos/YifengPosReader$Myconn;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "\u89e3\u9664\u7ed1\u5b9a"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sunrise/reader/pos/YifengPosReader;->isBind:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sunrise/reader/pos/YifengPosReader;->myconn:Lcom/sunrise/reader/pos/YifengPosReader$Myconn;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
