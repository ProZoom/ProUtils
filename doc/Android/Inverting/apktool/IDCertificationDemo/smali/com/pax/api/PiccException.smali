.class public Lcom/pax/api/PiccException;
.super Ljava/lang/Exception;


# static fields
.field public static final CARD_NO_ACTIVATION:B = 0x13t

.field public static final CARD_SENSE_ERR:B = 0x1bt

.field public static final CARD_STATUS_ERR:B = 0x1ct

.field public static final CARD_TOO_MANY:B = 0x4t

.field public static final CONN_ERROR:B = 0x63t

.field public static final DATA_BLOCK_ERR:B = 0x1at

.field public static final ERR_NULL_POINT:B = 0x62t

.field public static final FAN_NOT_VERIFY:B = 0x19t

.field public static final IO_ERR:B = 0x17t

.field public static final M1_CARD_VERIFY_ERR:B = 0x18t

.field public static final MUTI_CARD_ERR:B = 0x14t

.field public static final NOT_CALL:B = -0x1t

.field public static final NOT_OPEN:B = 0x2t

.field public static final NOT_SEARCH_CARD:B = 0x3t

.field public static final NO_SUPPORT_ERROR:B = 0x64t

.field public static final PARAMETER_ERR:B = 0x1t

.field public static final PROTOCOL_ERR:B = 0x6t

.field public static final PROTOCOL_ERR2:B = 0x16t

.field public static final TIMEOUT:B = 0x15t

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public exceptionCode:B


# direct methods
.method public constructor <init>(B)V
    .locals 1
    .param p1, "exCode"    # B

    .prologue
    invoke-static {p1}, Lcom/pax/api/PiccException;->searchMessage(B)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x63

    iput-byte v0, p0, Lcom/pax/api/PiccException;->exceptionCode:B

    iput-byte p1, p0, Lcom/pax/api/PiccException;->exceptionCode:B

    return-void
.end method

.method public constructor <init>(BLjava/lang/String;)V
    .locals 1
    .param p1, "exCode"    # B
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x63

    iput-byte v0, p0, Lcom/pax/api/PiccException;->exceptionCode:B

    iput-byte p1, p0, Lcom/pax/api/PiccException;->exceptionCode:B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    invoke-static {p1}, Lcom/pax/api/PiccException;->searchMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x63

    iput-byte v0, p0, Lcom/pax/api/PiccException;->exceptionCode:B

    invoke-static {p1}, Lcom/pax/api/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x64

    iput-byte v0, p0, Lcom/pax/api/PiccException;->exceptionCode:B

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
    const-string v0, "Parameter error"

    goto :goto_0

    :sswitch_3
    const-string v0, "RF module close"

    goto :goto_0

    :sswitch_4
    const-string v0, "No specific card in sensing area"

    goto :goto_0

    :sswitch_5
    const-string v0, "Too much card in sensing area(communication conflict)"

    goto :goto_0

    :sswitch_6
    const-string v0, "Protocol error(The data reeponse from card breaches the agreement)"

    goto :goto_0

    :sswitch_7
    const-string v0, "Card not activated"

    goto :goto_0

    :sswitch_8
    const-string v0, "Multi-card conflict"

    goto :goto_0

    :sswitch_9
    const-string v0, "No response timeout"

    goto :goto_0

    :sswitch_a
    const-string v0, "Protocol error"

    goto :goto_0

    :sswitch_b
    const-string v0, "Communication transmission error"

    goto :goto_0

    :sswitch_c
    const-string v0, "M1 Card authentication failure."

    goto :goto_0

    :sswitch_d
    const-string v0, "Sector is not certified"

    goto :goto_0

    :sswitch_e
    const-string v0, "The data format of value block is incorrect."

    goto :goto_0

    :sswitch_f
    const-string v0, "Card is still in sensing area."

    goto :goto_0

    :sswitch_10
    const-string v0, "Card status error(If A/B card call M1 card interface, or M1 card call PiccIsoCommand interface)"

    goto :goto_0

    :sswitch_11
    const-string v0, "Interface chip does not exist or abnormal."

    goto :goto_0

    :sswitch_12
    const-string v0, "Not Support for this device"

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_11
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x3 -> :sswitch_4
        0x4 -> :sswitch_5
        0x6 -> :sswitch_6
        0x13 -> :sswitch_7
        0x14 -> :sswitch_8
        0x15 -> :sswitch_9
        0x16 -> :sswitch_a
        0x17 -> :sswitch_b
        0x18 -> :sswitch_c
        0x19 -> :sswitch_d
        0x1a -> :sswitch_e
        0x1b -> :sswitch_f
        0x1c -> :sswitch_10
        0x62 -> :sswitch_0
        0x63 -> :sswitch_1
        0x64 -> :sswitch_12
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
    invoke-static {v0}, Lcom/pax/api/PiccException;->searchMessage(B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
