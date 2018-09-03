.class public Lcom/pax/api/g;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/pax/api/g;


# instance fields
.field private mRpcClient:Lpax/util/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/pax/api/g;->a:Lcom/pax/api/g;

    return-void
.end method

.method private constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/pax/api/f;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    invoke-static {}, Lpax/util/a;->a()Lpax/util/a;

    move-result-object v0

    iput-object v0, p0, Lcom/pax/api/g;->mRpcClient:Lpax/util/a;
    :try_end_0
    .catch Lcom/pax/api/p; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lpax/util/a;->a(Ljava/lang/Object;Z)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/pax/api/p;->printStackTrace()V

    new-instance v1, Lcom/pax/api/f;

    invoke-virtual {v0}, Lcom/pax/api/p;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/pax/api/f;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/pax/api/f;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/pax/api/g;->mRpcClient:Lpax/util/a;

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "FileOperateManager finalize()"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lpax/util/a;->a(Ljava/lang/Object;Z)V

    iget-object v0, p0, Lcom/pax/api/g;->mRpcClient:Lpax/util/a;

    invoke-virtual {v0}, Lpax/util/a;->finalize()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pax/api/g;->mRpcClient:Lpax/util/a;

    const/4 v0, 0x0

    sput-object v0, Lcom/pax/api/g;->a:Lcom/pax/api/g;

    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v1, Lcom/pax/api/f;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/pax/api/f;-><init>(Ljava/lang/String;)V

    throw v1
.end method
