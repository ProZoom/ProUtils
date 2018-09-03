.class public Lcom/pax/api/q;
.super Ljava/lang/Exception;


# instance fields
.field public exceptionCode:B


# direct methods
.method public constructor <init>(B)V
    .locals 1

    invoke-static {p1}, Lcom/pax/api/q;->searchMessage(B)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x63

    iput-byte v0, p0, Lcom/pax/api/q;->exceptionCode:B

    iput-byte p1, p0, Lcom/pax/api/q;->exceptionCode:B

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
    const-string v0, "Printer busy"

    goto :goto_0

    :sswitch_3
    const-string v0, "Out of paper"

    goto :goto_0

    :sswitch_4
    const-string v0, "The format of print data packet error"

    goto :goto_0

    :sswitch_5
    const-string v0, "Printer is already open OR Printer problems "

    goto :goto_0

    :sswitch_6
    const-string v0, "Printer over heating"

    goto :goto_0

    :sswitch_7
    const-string v0, "Print unfinished"

    goto :goto_0

    :sswitch_8
    const-string v0, "Lack of font"

    goto :goto_0

    :sswitch_9
    const-string v0, "Data package is too long."

    goto :goto_0

    :sswitch_a
    const-string v0, "Unsupported encoding"

    goto :goto_0

    :sswitch_b
    const-string v0, "Not Support for this device"

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x10 -> :sswitch_7
        -0x4 -> :sswitch_8
        -0x2 -> :sswitch_9
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x3 -> :sswitch_4
        0x4 -> :sswitch_5
        0x8 -> :sswitch_6
        0x61 -> :sswitch_a
        0x62 -> :sswitch_0
        0x63 -> :sswitch_1
        0x64 -> :sswitch_b
    .end sparse-switch
.end method
