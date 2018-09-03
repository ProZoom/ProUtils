.class public Lcom/pax/api/l;
.super Ljava/lang/Exception;


# instance fields
.field public a:I

.field public a:Lcom/pax/api/m$a;

.field public a:[B

.field public b:[B

.field public c:[B

.field public d:[B


# direct methods
.method public constructor <init>(I)V
    .locals 2

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/pax/api/l;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x63

    iput v0, p0, Lcom/pax/api/l;->a:I

    iput-object v1, p0, Lcom/pax/api/l;->a:Lcom/pax/api/m$a;

    iput-object v1, p0, Lcom/pax/api/l;->a:[B

    iput-object v1, p0, Lcom/pax/api/l;->b:[B

    iput-object v1, p0, Lcom/pax/api/l;->c:[B

    iput-object v1, p0, Lcom/pax/api/l;->d:[B

    iput p1, p0, Lcom/pax/api/l;->a:I

    return-void
.end method

.method private static a(I)Ljava/lang/String;
    .locals 1

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
    const-string v0, "Start value of error code"

    goto :goto_0

    :sswitch_3
    const-string v0, "End value of error code"

    goto :goto_0

    :sswitch_4
    const-string v0, "Key does not exist."

    goto :goto_0

    :sswitch_5
    const-string v0, "Key index error, parameter index is not in the range."

    goto :goto_0

    :sswitch_6
    const-string v0, "When key is written, the source key level is lower than the destination level."

    goto :goto_0

    :sswitch_7
    const-string v0, "Key verification failed."

    goto :goto_0

    :sswitch_8
    const-string v0, "No PIN input"

    goto :goto_0

    :sswitch_9
    const-string v0, "Cancel to enter PIN."

    goto :goto_0

    :sswitch_a
    const-string v0, "Calling function interval is less than minimum interval time."

    goto :goto_0

    :sswitch_b
    const-string v0, "KCV mode error, do not support."

    goto :goto_0

    :sswitch_c
    const-string v0, "Not allowed to use the key. When key label is not correct or source key type is bigger than destination key type, PED will return this code."

    goto :goto_0

    :sswitch_d
    const-string v0, "Key type error"

    goto :goto_0

    :sswitch_e
    const-string v0, "Expected PIN length string error"

    goto :goto_0

    :sswitch_f
    const-string v0, "Destination key index error"

    goto :goto_0

    :sswitch_10
    const-string v0, "Source key index error"

    goto :goto_0

    :sswitch_11
    const-string v0, "Key length error"

    goto :goto_0

    :sswitch_12
    const-string v0, "PIN input timeout"

    goto :goto_0

    :sswitch_13
    const-string v0, "IC card does not exist"

    goto :goto_0

    :sswitch_14
    const-string v0, "IC card is not intilized"

    goto :goto_0

    :sswitch_15
    const-string v0, "DUKPT index error"

    goto :goto_0

    :sswitch_16
    const-string v0, "Pointer parameter error"

    goto :goto_0

    :sswitch_17
    const-string v0, "PED locked"

    goto :goto_0

    :sswitch_18
    const-string v0, "PED general error"

    goto :goto_0

    :sswitch_19
    const-string v0, "No free buffer"

    goto :goto_0

    :sswitch_1a
    const-string v0, "Not administration"

    goto :goto_0

    :sswitch_1b
    const-string v0, "DUKPT overflow"

    goto :goto_0

    :sswitch_1c
    const-string v0, "KCV check error"

    goto :goto_0

    :sswitch_1d
    const-string v0, "When key is written, the ID of source key does not match the type of source key."

    goto :goto_0

    :sswitch_1e
    const-string v0, "Command not supprt"

    goto :goto_0

    :sswitch_1f
    const-string v0, "Communication error"

    goto :goto_0

    :sswitch_20
    const-string v0, "No user authentication public key"

    goto :goto_0

    :sswitch_21
    const-string v0, "Administration error"

    goto :goto_0

    :sswitch_22
    const-string v0, "PED download inactive"

    goto :goto_0

    :sswitch_23
    const-string v0, "KCV parity check fail"

    goto :goto_0

    :sswitch_24
    const-string v0, "Read PED data fail"

    goto :goto_0

    :sswitch_25
    const-string v0, "ICC operation fail"

    goto :goto_0

    :sswitch_26
    const-string v0, "Pressing CLEAR to exit input"

    goto :goto_0

    :sswitch_27
    const-string v0, "PED No enough space"

    goto :goto_0

    :sswitch_28
    const-string v0, "DUKPT need inc ksn"

    goto :goto_0

    :sswitch_29
    const-string v0, "KCV MODE error"

    goto :goto_0

    :sswitch_2a
    const-string v0, "NO KCV"

    goto/16 :goto_0

    :sswitch_2b
    const-string v0, "press FN/ATM4 KEY for PIN input"

    goto/16 :goto_0

    :sswitch_2c
    const-string v0, "verify MAC error"

    goto/16 :goto_0

    :sswitch_2d
    const-string v0, "verify CRC error"

    goto/16 :goto_0

    :sswitch_2e
    const-string v0, "Invalid param"

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x1f4 -> :sswitch_3
        -0x15e -> :sswitch_2e
        -0x15d -> :sswitch_2d
        -0x15c -> :sswitch_2c
        -0x15b -> :sswitch_2b
        -0x15a -> :sswitch_2a
        -0x159 -> :sswitch_29
        -0x158 -> :sswitch_28
        -0x157 -> :sswitch_27
        -0x153 -> :sswitch_26
        -0x14e -> :sswitch_25
        -0x14d -> :sswitch_24
        -0x14c -> :sswitch_23
        -0x14b -> :sswitch_22
        -0x14a -> :sswitch_21
        -0x149 -> :sswitch_20
        -0x148 -> :sswitch_1f
        -0x147 -> :sswitch_1e
        -0x146 -> :sswitch_1d
        -0x145 -> :sswitch_1c
        -0x144 -> :sswitch_1b
        -0x143 -> :sswitch_1a
        -0x142 -> :sswitch_19
        -0x141 -> :sswitch_18
        -0x140 -> :sswitch_17
        -0x13f -> :sswitch_16
        -0x13e -> :sswitch_15
        -0x13d -> :sswitch_14
        -0x13c -> :sswitch_13
        -0x13b -> :sswitch_12
        -0x13a -> :sswitch_11
        -0x139 -> :sswitch_10
        -0x138 -> :sswitch_f
        -0x137 -> :sswitch_e
        -0x136 -> :sswitch_d
        -0x135 -> :sswitch_c
        -0x134 -> :sswitch_b
        -0x133 -> :sswitch_a
        -0x132 -> :sswitch_9
        -0x131 -> :sswitch_8
        -0x130 -> :sswitch_7
        -0x12f -> :sswitch_6
        -0x12e -> :sswitch_5
        -0x12d -> :sswitch_4
        -0x12c -> :sswitch_2
        0x62 -> :sswitch_0
        0x63 -> :sswitch_1
    .end sparse-switch
.end method
