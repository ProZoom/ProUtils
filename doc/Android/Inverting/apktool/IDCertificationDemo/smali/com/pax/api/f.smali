.class public Lcom/pax/api/f;
.super Ljava/lang/Exception;


# instance fields
.field public exceptionCode:B


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/pax/api/f;->searchMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x63

    iput-byte v0, p0, Lcom/pax/api/f;->exceptionCode:B

    invoke-static {p1}, Lcom/pax/api/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x64

    iput-byte v0, p0, Lcom/pax/api/f;->exceptionCode:B

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
    const-string v0, "Open as O_CREATE method if the file exist."

    goto :goto_0

    :sswitch_3
    const-string v0, "File does not exist."

    goto :goto_0

    :sswitch_4
    const-string v0, "No enough space"

    goto :goto_0

    :sswitch_5
    const-string v0, "Too many file handles, over 255, Can not create new files."

    goto :goto_0

    :sswitch_6
    const-string v0, "Invalid file handle."

    goto :goto_0

    :sswitch_7
    const-string v0, "mode is not O_RDWR or O_CREATE"

    goto :goto_0

    :sswitch_8
    const-string v0, "No file system"

    goto :goto_0

    :sswitch_9
    const-string v0, "File not opened"

    goto :goto_0

    :sswitch_a
    const-string v0, "File opened"

    goto :goto_0

    :sswitch_b
    const-string v0, "Exceeding total length of file in backward moving"

    goto :goto_0

    :sswitch_c
    const-string v0, "Overflow in forward moving"

    goto :goto_0

    :sswitch_d
    const-string v0, "No permission"

    goto :goto_0

    :sswitch_e
    const-string v0, "FS corrupt"

    goto :goto_0

    :sswitch_f
    const-string v0, "Get application info error"

    goto :goto_0

    :sswitch_10
    const-string v0, "File Not exist"

    goto :goto_0

    :sswitch_11
    const-string v0, "File signature error"

    goto :goto_0

    :sswitch_12
    const-string v0, "Too many application"

    goto :goto_0

    :sswitch_13
    const-string v0, "Sub application has same name with application manager"

    goto :goto_0

    :sswitch_14
    const-string v0, "File type error"

    goto :goto_0

    :sswitch_15
    const-string v0, "Write file error"

    goto :goto_0

    :sswitch_16
    const-string v0, "Read file error"

    goto :goto_0

    :sswitch_17
    const-string v0, "No application name"

    goto :goto_0

    :sswitch_18
    const-string v0, "Too many file"

    goto :goto_0

    :sswitch_19
    const-string v0, "application not found"

    goto :goto_0

    :sswitch_1a
    const-string v0, "Param error"

    goto :goto_0

    :sswitch_1b
    const-string v0, "Font error"

    goto :goto_0

    :sswitch_1c
    const-string v0, "File too big"

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0xe -> :sswitch_1c
        -0xd -> :sswitch_1b
        -0xc -> :sswitch_1a
        -0xb -> :sswitch_19
        -0xa -> :sswitch_18
        -0x9 -> :sswitch_17
        -0x8 -> :sswitch_16
        -0x7 -> :sswitch_15
        -0x6 -> :sswitch_14
        -0x5 -> :sswitch_13
        -0x4 -> :sswitch_12
        -0x3 -> :sswitch_11
        -0x2 -> :sswitch_10
        -0x1 -> :sswitch_f
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x3 -> :sswitch_4
        0x4 -> :sswitch_5
        0x5 -> :sswitch_6
        0x6 -> :sswitch_7
        0x7 -> :sswitch_8
        0x8 -> :sswitch_9
        0x9 -> :sswitch_a
        0xa -> :sswitch_b
        0xb -> :sswitch_c
        0xc -> :sswitch_d
        0xd -> :sswitch_e
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
    invoke-static {v0}, Lcom/pax/api/f;->searchMessage(B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
