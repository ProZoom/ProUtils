.class public Lcom/bjw/bean/ComBean;
.super Ljava/lang/Object;
.source "ComBean.java"


# instance fields
.field public bRec:[B

.field public sComPort:Ljava/lang/String;

.field public sRecTime:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[BI)V
    .locals 4
    .param p1, "sPort"    # Ljava/lang/String;
    .param p2, "buffer"    # [B
    .param p3, "size"    # I

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/bjw/bean/ComBean;->bRec:[B

    .line 11
    const-string v2, ""

    iput-object v2, p0, Lcom/bjw/bean/ComBean;->sRecTime:Ljava/lang/String;

    .line 12
    const-string v2, ""

    iput-object v2, p0, Lcom/bjw/bean/ComBean;->sComPort:Ljava/lang/String;

    .line 14
    iput-object p1, p0, Lcom/bjw/bean/ComBean;->sComPort:Ljava/lang/String;

    .line 15
    new-array v2, p3, [B

    iput-object v2, p0, Lcom/bjw/bean/ComBean;->bRec:[B

    .line 16
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, p3, :cond_0

    .line 20
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "hh:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 21
    .local v1, "sDateFormat":Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/bjw/bean/ComBean;->sRecTime:Ljava/lang/String;

    .line 22
    return-void

    .line 18
    .end local v1    # "sDateFormat":Ljava/text/SimpleDateFormat;
    :cond_0
    iget-object v2, p0, Lcom/bjw/bean/ComBean;->bRec:[B

    aget-byte v3, p2, v0

    aput-byte v3, v2, v0

    .line 16
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
