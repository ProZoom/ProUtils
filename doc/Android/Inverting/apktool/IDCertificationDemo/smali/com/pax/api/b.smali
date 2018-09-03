.class public Lcom/pax/api/b;
.super Ljava/lang/Exception;


# instance fields
.field public exceptionCode:B


# direct methods
.method public constructor <init>(B)V
    .locals 1

    invoke-static {p1}, Lcom/pax/api/b;->searchMessage(B)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x63

    iput-byte v0, p0, Lcom/pax/api/b;->exceptionCode:B

    iput-byte p1, p0, Lcom/pax/api/b;->exceptionCode:B

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
    const-string v0, "parameter invalid"

    goto :goto_0

    :sswitch_1
    const-string v0, "RPC I/O error"

    goto :goto_0

    :sswitch_2
    const-string v0, "Invalid year"

    goto :goto_0

    :sswitch_3
    const-string v0, "Invalid month"

    goto :goto_0

    :sswitch_4
    const-string v0, "Invalid day"

    goto :goto_0

    :sswitch_5
    const-string v0, "Invalid hour"

    goto :goto_0

    :sswitch_6
    const-string v0, "Invalid minute"

    goto :goto_0

    :sswitch_7
    const-string v0, "Invalid second"

    goto :goto_0

    :sswitch_8
    const-string v0, "Invalid time length"

    goto :goto_0

    :sswitch_9
    const-string v0, "failure occured when read/write clock chip"

    goto :goto_0

    :sswitch_a
    const-string v0, "unsupported encoding"

    goto :goto_0

    :sswitch_b
    const-string v0, "Not Support for this device"

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_9
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x3 -> :sswitch_4
        0x4 -> :sswitch_5
        0x5 -> :sswitch_6
        0x6 -> :sswitch_7
        0x7 -> :sswitch_8
        0x61 -> :sswitch_a
        0x62 -> :sswitch_0
        0x63 -> :sswitch_1
        0x64 -> :sswitch_b
    .end sparse-switch
.end method
