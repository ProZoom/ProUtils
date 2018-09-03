.class public Lcom/sunrise/nfc/NormalNfcReadaer;
.super Ljava/lang/Object;


# instance fields
.field private flag:I

.field private nfcB:Landroid/nfc/tech/NfcB;


# direct methods
.method public constructor <init>(Landroid/nfc/tech/NfcB;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sunrise/nfc/NormalNfcReadaer;->flag:I

    iput-object p1, p0, Lcom/sunrise/nfc/NormalNfcReadaer;->nfcB:Landroid/nfc/tech/NfcB;

    return-void
.end method

.method private isConnected()Z
    .locals 1

    iget-object v0, p0, Lcom/sunrise/nfc/NormalNfcReadaer;->nfcB:Landroid/nfc/tech/NfcB;

    invoke-virtual {v0}, Landroid/nfc/tech/NfcB;->isConnected()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public changeFlagByTest(I)V
    .locals 0

    iput p1, p0, Lcom/sunrise/nfc/NormalNfcReadaer;->flag:I

    return-void
.end method

.method public transceive([B)[B
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/sunrise/nfc/NormalNfcReadaer;->nfcB:Landroid/nfc/tech/NfcB;

    invoke-virtual {v1, p1}, Landroid/nfc/tech/NfcB;->transceive([B)[B

    move-result-object v1

    if-eqz v1, :cond_0

    iget v2, p0, Lcom/sunrise/nfc/NormalNfcReadaer;->flag:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    array-length v2, v1

    add-int/lit8 v2, v2, 0x1

    new-array v0, v2, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    array-length v4, v1

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v1

    const/4 v2, 0x0

    aput-byte v2, v0, v1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget v2, p0, Lcom/sunrise/nfc/NormalNfcReadaer;->flag:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
