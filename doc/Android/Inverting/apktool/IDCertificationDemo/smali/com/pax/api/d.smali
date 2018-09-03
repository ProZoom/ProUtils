.class public Lcom/pax/api/d;
.super Ljava/lang/Exception;


# instance fields
.field public exceptionCode:B


# direct methods
.method public constructor <init>(B)V
    .locals 1

    invoke-static {p1}, Lcom/pax/api/d;->searchMessage(B)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x63

    iput-byte v0, p0, Lcom/pax/api/d;->exceptionCode:B

    iput-byte p1, p0, Lcom/pax/api/d;->exceptionCode:B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/pax/api/d;->searchMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x63

    iput-byte v0, p0, Lcom/pax/api/d;->exceptionCode:B

    invoke-static {p1}, Lcom/pax/api/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x64

    iput-byte v0, p0, Lcom/pax/api/d;->exceptionCode:B

    :cond_0
    return-void
.end method

.method private static searchMessage(B)Ljava/lang/String;
    .locals 1
    .param p0, "exCode"    # B

    .prologue
    const-string v0, ""

    sparse-switch p0, :sswitch_data_0

    :goto_0
    return-object v0

    :sswitch_0
    const-string v0, "parameter cannot be null"

    goto :goto_0

    :sswitch_1
    const-string v0, "RPC I/O error"

    goto :goto_0

    :sswitch_2
    const-string v0, "Parameter iProtoKeyBit error"

    goto :goto_0

    :sswitch_3
    const-string v0, "Parameter iPubEType error"

    goto :goto_0

    :sswitch_4
    const-string v0, "Generate data failed"

    goto :goto_0

    :sswitch_5
    const-string v0, "Random data failed"

    goto :goto_0

    :sswitch_6
    const-string v0, "Encryption operation failed"

    goto :goto_0

    :sswitch_7
    const-string v0, "Decryption operation failed"

    goto :goto_0

    :sswitch_8
    const-string v0, "Encryption and decryption authentication failed"

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7 -> :sswitch_8
        -0x6 -> :sswitch_7
        -0x5 -> :sswitch_6
        -0x4 -> :sswitch_5
        -0x3 -> :sswitch_4
        -0x2 -> :sswitch_3
        -0x1 -> :sswitch_2
        0x62 -> :sswitch_0
        0x63 -> :sswitch_1
    .end sparse-switch
.end method

.method private static searchMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    const/16 v0, 0x63

    invoke-static {p0}, Lcom/pax/api/a;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x64

    :cond_0
    invoke-static {v0}, Lcom/pax/api/d;->searchMessage(B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
