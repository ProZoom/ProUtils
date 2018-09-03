.class public Lcom/pax/api/j;
.super Ljava/lang/Exception;


# instance fields
.field public exceptionCode:B


# direct methods
.method public constructor <init>(B)V
    .locals 1

    invoke-static {p1}, Lcom/pax/api/j;->searchMessage(B)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x63

    iput-byte v0, p0, Lcom/pax/api/j;->exceptionCode:B

    iput-byte p1, p0, Lcom/pax/api/j;->exceptionCode:B

    return-void
.end method

.method private static searchMessage(B)Ljava/lang/String;
    .locals 1
    .param p0, "exCode"    # B

    .prologue
    const-string v0, ""

    packed-switch p0, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "parameter cannot be null"

    goto :goto_0

    :pswitch_1
    const-string v0, "RPC I/O error"

    goto :goto_0

    :pswitch_2
    const-string v0, "Not Support for this device"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x62
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
