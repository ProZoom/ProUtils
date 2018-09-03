.class public Lcom/sunrise/reader/pos/JBPosNFC;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sunrise/reader/pos/IPOSCardReader;


# instance fields
.field private TAG:Ljava/lang/String;

.field private mPosCardManager:Lcom/pos/sdk/card/PosCardManager;

.field private nfcCallBack:Landroid/nfc/NfcAdapter$ReaderCallback;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sunrise/reader/pos/JBPosNFC;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sunrise/reader/pos/JBPosNFC;->nfcCallBack:Landroid/nfc/NfcAdapter$ReaderCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/sunrise/reader/pos/JBPosNFC;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sunrise/reader/pos/JBPosNFC;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sunrise/reader/pos/JBPosNFC;)Landroid/nfc/NfcAdapter$ReaderCallback;
    .locals 1

    iget-object v0, p0, Lcom/sunrise/reader/pos/JBPosNFC;->nfcCallBack:Landroid/nfc/NfcAdapter$ReaderCallback;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sunrise/reader/pos/JBPosNFC;Landroid/nfc/NfcAdapter$ReaderCallback;)Landroid/nfc/NfcAdapter$ReaderCallback;
    .locals 0

    iput-object p1, p0, Lcom/sunrise/reader/pos/JBPosNFC;->nfcCallBack:Landroid/nfc/NfcAdapter$ReaderCallback;

    return-object p1
.end method


# virtual methods
.method public findICCard()Z
    .locals 1

    iget-object v0, p0, Lcom/sunrise/reader/pos/JBPosNFC;->nfcCallBack:Landroid/nfc/NfcAdapter$ReaderCallback;

    invoke-virtual {p0, v0}, Lcom/sunrise/reader/pos/JBPosNFC;->findIDCard(Landroid/nfc/NfcAdapter$ReaderCallback;)Z

    move-result v0

    return v0
.end method

.method public findIDCard(Landroid/nfc/NfcAdapter$ReaderCallback;)Z
    .locals 4

    const/4 v0, 0x1

    iput-object p1, p0, Lcom/sunrise/reader/pos/JBPosNFC;->nfcCallBack:Landroid/nfc/NfcAdapter$ReaderCallback;

    :try_start_0
    invoke-static {}, Lcom/sunrise/n/k;->a()Lcom/sunrise/n/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sunrise/n/k;->b()Lcom/sunrise/n/b;

    move-result-object v1

    const v2, 0xea60

    new-instance v3, Lcom/sunrise/reader/pos/JBPosNFC$1;

    invoke-direct {v3, p0}, Lcom/sunrise/reader/pos/JBPosNFC$1;-><init>(Lcom/sunrise/reader/pos/JBPosNFC;)V

    invoke-virtual {v1, v2, v3}, Lcom/sunrise/n/b;->a(ILcom/sunrise/l/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_0
.end method

.method public icCardPowerOff()V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/sunrise/reader/pos/JBPosNFC;->mPosCardManager:Lcom/pos/sdk/card/PosCardManager;

    const-string v1, "picccard-mode"

    const-string v2, "h"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sunrise/reader/pos/JBPosNFC;->mPosCardManager:Lcom/pos/sdk/card/PosCardManager;

    invoke-virtual {v1, v0}, Lcom/pos/sdk/card/PosCardManager;->removeCard(Landroid/os/Bundle;)I

    return-void
.end method

.method public icCardPowerOn()Z
    .locals 1

    iget-object v0, p0, Lcom/sunrise/reader/pos/JBPosNFC;->mPosCardManager:Lcom/pos/sdk/card/PosCardManager;

    invoke-virtual {v0}, Lcom/pos/sdk/card/PosCardManager;->resetCard()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public icCardTransmitApdu([B)[B
    .locals 9

    const/4 v7, 0x0

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/sunrise/reader/pos/JBPosNFC;->mPosCardManager:Lcom/pos/sdk/card/PosCardManager;

    if-eqz v1, :cond_0

    new-instance v2, Lcom/pos/sdk/utils/PosByteArray;

    invoke-direct {v2}, Lcom/pos/sdk/utils/PosByteArray;-><init>()V

    new-instance v3, Lcom/pos/sdk/utils/PosByteArray;

    invoke-direct {v3}, Lcom/pos/sdk/utils/PosByteArray;-><init>()V

    iget-object v1, p0, Lcom/sunrise/reader/pos/JBPosNFC;->mPosCardManager:Lcom/pos/sdk/card/PosCardManager;

    array-length v4, p1

    invoke-virtual {v1, p1, v4, v2, v3}, Lcom/pos/sdk/card/PosCardManager;->transmitApduToCard([BILcom/pos/sdk/utils/PosByteArray;Lcom/pos/sdk/utils/PosByteArray;)I

    iget-object v1, v2, Lcom/pos/sdk/utils/PosByteArray;->buffer:[B

    if-eqz v1, :cond_1

    iget-object v1, v2, Lcom/pos/sdk/utils/PosByteArray;->buffer:[B

    array-length v1, v1

    iget-object v4, v3, Lcom/pos/sdk/utils/PosByteArray;->buffer:[B

    array-length v4, v4

    add-int/2addr v1, v4

    new-array v1, v1, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, v2, Lcom/pos/sdk/utils/PosByteArray;->buffer:[B

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, v2, Lcom/pos/sdk/utils/PosByteArray;->buffer:[B

    array-length v6, v6

    invoke-static {v0, v4, v1, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, v3, Lcom/pos/sdk/utils/PosByteArray;->buffer:[B

    const/4 v4, 0x0

    iget-object v2, v2, Lcom/pos/sdk/utils/PosByteArray;->buffer:[B

    array-length v2, v2

    iget-object v3, v3, Lcom/pos/sdk/utils/PosByteArray;->buffer:[B

    array-length v3, v3

    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_2
    array-length v3, v0

    invoke-static {v0, v1, v2, v3}, Lcom/sunrise/v/a;->a([BIII)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sunrise/reader/r;->b(Ljava/lang/String;)V

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    iget-object v0, v3, Lcom/pos/sdk/utils/PosByteArray;->buffer:[B
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_2
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sunrise/reader/r;->b(Ljava/lang/String;)V

    array-length v2, v0

    invoke-static {v0, v7, v7, v2}, Lcom/sunrise/v/a;->a([BIII)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sunrise/reader/r;->b(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    goto :goto_2
.end method

.method public init()V
    .locals 0

    return-void
.end method

.method public isConnected()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public stopFindICCard()V
    .locals 0

    invoke-virtual {p0}, Lcom/sunrise/reader/pos/JBPosNFC;->stopFindIDCard()V

    return-void
.end method

.method public stopFindIDCard()V
    .locals 0

    return-void
.end method

.method public transceive([B)[B
    .locals 5

    :try_start_0
    new-instance v0, Lcom/pos/sdk/utils/PosByteArray;

    invoke-direct {v0}, Lcom/pos/sdk/utils/PosByteArray;-><init>()V

    invoke-static {}, Lcom/sunrise/n/k;->a()Lcom/sunrise/n/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sunrise/n/k;->b()Lcom/sunrise/n/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sunrise/n/b;->a([B)Lcom/pos/sdk/utils/PosByteArray;

    move-result-object v0

    iget-object v1, v0, Lcom/pos/sdk/utils/PosByteArray;->buffer:[B

    array-length v0, v1

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method
