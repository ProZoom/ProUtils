.class public Lcom/sunrise/reader/pos/BaifuPosReader;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sunrise/reader/pos/IPOSCardReader;


# instance fields
.field private TAG:Ljava/lang/String;

.field private idCardReader:Lcom/pax/idcard/IdCardReader;

.field private piccManager:Lcom/pax/api/PiccManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sunrise/reader/pos/BaifuPosReader;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/sunrise/reader/pos/BaifuPosReader;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sunrise/reader/pos/BaifuPosReader;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sunrise/reader/pos/BaifuPosReader;)Lcom/pax/api/PiccManager;
    .locals 1

    iget-object v0, p0, Lcom/sunrise/reader/pos/BaifuPosReader;->piccManager:Lcom/pax/api/PiccManager;

    return-object v0
.end method


# virtual methods
.method public findCardInAsyncTask(Landroid/nfc/NfcAdapter$ReaderCallback;)V
    .locals 2

    new-instance v0, Lcom/sunrise/reader/pos/BaifuPosReader$1;

    invoke-direct {v0, p0, p1}, Lcom/sunrise/reader/pos/BaifuPosReader$1;-><init>(Lcom/sunrise/reader/pos/BaifuPosReader;Landroid/nfc/NfcAdapter$ReaderCallback;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/sunrise/reader/pos/BaifuPosReader$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public findICCard()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public findIDCard(Landroid/nfc/NfcAdapter$ReaderCallback;)Z
    .locals 4

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/sunrise/reader/pos/BaifuPosReader;->piccManager:Lcom/pax/api/PiccManager;

    invoke-virtual {v1}, Lcom/pax/api/PiccManager;->piccOpen()V

    iget-object v1, p0, Lcom/sunrise/reader/pos/BaifuPosReader;->piccManager:Lcom/pax/api/PiccManager;

    const/16 v2, 0x53

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/pax/api/PiccManager;->piccSetupIdCard(BI)V

    invoke-static {}, Lcom/pax/idcard/IdCardReader;->getInstance()Lcom/pax/idcard/IdCardReader;

    move-result-object v1

    iput-object v1, p0, Lcom/sunrise/reader/pos/BaifuPosReader;->idCardReader:Lcom/pax/idcard/IdCardReader;

    invoke-virtual {p0, p1}, Lcom/sunrise/reader/pos/BaifuPosReader;->findCardInAsyncTask(Landroid/nfc/NfcAdapter$ReaderCallback;)V
    :try_end_0
    .catch Lcom/pax/api/PiccException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/sunrise/reader/pos/BaifuPosReader;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Picc errCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, v0, Lcom/pax/api/PiccException;->exceptionCode:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/pax/api/PiccException;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
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
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/pax/api/PiccManager;->getInstance()Lcom/pax/api/PiccManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sunrise/reader/pos/BaifuPosReader;->piccManager:Lcom/pax/api/PiccManager;
    :try_end_0
    .catch Lcom/pax/api/PiccException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/sunrise/reader/pos/BaifuPosReader;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Picc errCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, v0, Lcom/pax/api/PiccException;->exceptionCode:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/pax/api/PiccException;->printStackTrace()V

    goto :goto_0
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
    iget-object v0, p0, Lcom/sunrise/reader/pos/BaifuPosReader;->piccManager:Lcom/pax/api/PiccManager;

    invoke-virtual {v0}, Lcom/pax/api/PiccManager;->piccClose()V
    :try_end_0
    .catch Lcom/pax/api/PiccException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/pax/api/PiccException;->printStackTrace()V

    goto :goto_0
.end method

.method public transceive([B)[B
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sunrise/reader/pos/BaifuPosReader;->idCardReader:Lcom/pax/idcard/IdCardReader;

    invoke-virtual {v0, p1}, Lcom/pax/idcard/IdCardReader;->exePiccCommand([B)[B

    move-result-object v0

    array-length v1, v0

    add-int/lit8 v2, v1, 0x1

    new-array v2, v2, [B

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-byte v3, v2, v1

    return-object v2
.end method
