.class public Lpax/util/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Lpax/util/a;

.field private static a:[Z

.field private static c:Z


# instance fields
.field public final a:Ljava/lang/Object;

.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lpax/util/a;->a:Lpax/util/a;

    const/4 v0, 0x0

    sput-boolean v0, Lpax/util/a;->c:Z

    const/16 v0, 0xc

    new-array v0, v0, [Z

    sput-object v0, Lpax/util/a;->a:[Z

    return-void
.end method

.method private constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/pax/api/p;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lpax/util/a;->b:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lpax/util/a;->a:Ljava/lang/Object;

    invoke-direct {p0}, Lpax/util/a;->a()Z

    return-void
.end method

.method public static declared-synchronized a()Lpax/util/a;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/pax/api/p;
        }
    .end annotation

    const-class v1, Lpax/util/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lpax/util/a;->a:Lpax/util/a;

    if-nez v0, :cond_0

    new-instance v0, Lpax/util/a;

    invoke-direct {v0}, Lpax/util/a;-><init>()V

    sput-object v0, Lpax/util/a;->a:Lpax/util/a;

    :cond_0
    sget-object v0, Lpax/util/a;->a:Lpax/util/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a()V
    .locals 2

    iget-boolean v0, p0, Lpax/util/a;->b:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "RpcClient close rpc"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lpax/util/a;->b:Z

    invoke-static {}, Lpax/util/OsPaxApi;->close_rpc()V

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/Object;Z)V
    .locals 5

    const/4 v1, 0x0

    instance-of v0, p0, Lcom/pax/api/c;

    if-eqz v0, :cond_1

    sget-object v0, Lpax/util/a;->a:[Z

    sget-object v2, Lpax/util/a$a;->a:Lpax/util/a$a;

    invoke-virtual {v2}, Lpax/util/a$a;->ordinal()I

    move-result v2

    aput-boolean p1, v0, v2

    :cond_0
    :goto_0
    sget-object v2, Lpax/util/a;->a:[Z

    array-length v3, v2

    move v0, v1

    :goto_1
    if-lt v0, v3, :cond_9

    :goto_2
    return-void

    :cond_1
    instance-of v0, p0, Lcom/pax/api/e;

    if-eqz v0, :cond_2

    sget-object v0, Lpax/util/a;->a:[Z

    sget-object v2, Lpax/util/a$a;->b:Lpax/util/a$a;

    invoke-virtual {v2}, Lpax/util/a$a;->ordinal()I

    move-result v2

    aput-boolean p1, v0, v2

    goto :goto_0

    :cond_2
    instance-of v0, p0, Lcom/pax/api/g;

    if-eqz v0, :cond_3

    sget-object v0, Lpax/util/a;->a:[Z

    sget-object v2, Lpax/util/a$a;->c:Lpax/util/a$a;

    invoke-virtual {v2}, Lpax/util/a$a;->ordinal()I

    move-result v2

    aput-boolean p1, v0, v2

    goto :goto_0

    :cond_3
    instance-of v0, p0, Lcom/pax/api/i;

    if-eqz v0, :cond_4

    sget-object v0, Lpax/util/a;->a:[Z

    sget-object v2, Lpax/util/a$a;->d:Lpax/util/a$a;

    invoke-virtual {v2}, Lpax/util/a$a;->ordinal()I

    move-result v2

    aput-boolean p1, v0, v2

    goto :goto_0

    :cond_4
    instance-of v0, p0, Lcom/pax/api/k;

    if-eqz v0, :cond_5

    sget-object v0, Lpax/util/a;->a:[Z

    sget-object v2, Lpax/util/a$a;->f:Lpax/util/a$a;

    invoke-virtual {v2}, Lpax/util/a$a;->ordinal()I

    move-result v2

    aput-boolean p1, v0, v2

    goto :goto_0

    :cond_5
    instance-of v0, p0, Lcom/pax/api/m;

    if-eqz v0, :cond_6

    sget-object v0, Lpax/util/a;->a:[Z

    sget-object v2, Lpax/util/a$a;->h:Lpax/util/a$a;

    invoke-virtual {v2}, Lpax/util/a$a;->ordinal()I

    move-result v2

    aput-boolean p1, v0, v2

    goto :goto_0

    :cond_6
    instance-of v0, p0, Lcom/pax/api/PiccManager;

    if-eqz v0, :cond_7

    sget-object v0, Lpax/util/a;->a:[Z

    sget-object v2, Lpax/util/a$a;->i:Lpax/util/a$a;

    invoke-virtual {v2}, Lpax/util/a$a;->ordinal()I

    move-result v2

    aput-boolean p1, v0, v2

    goto :goto_0

    :cond_7
    instance-of v0, p0, Lcom/pax/api/o;

    if-eqz v0, :cond_8

    sget-object v0, Lpax/util/a;->a:[Z

    sget-object v2, Lpax/util/a$a;->j:Lpax/util/a$a;

    invoke-virtual {v2}, Lpax/util/a$a;->ordinal()I

    move-result v2

    aput-boolean p1, v0, v2

    goto :goto_0

    :cond_8
    instance-of v0, p0, Lcom/pax/api/r;

    if-eqz v0, :cond_0

    sget-object v0, Lpax/util/a;->a:[Z

    sget-object v2, Lpax/util/a$a;->l:Lpax/util/a$a;

    invoke-virtual {v2}, Lpax/util/a$a;->ordinal()I

    move-result v2

    aput-boolean p1, v0, v2

    goto :goto_0

    :cond_9
    aget-boolean v4, v2, v0

    if-eqz v4, :cond_a

    sput-boolean v1, Lpax/util/a;->c:Z

    goto :goto_2

    :cond_a
    const/4 v4, 0x1

    sput-boolean v4, Lpax/util/a;->c:Z

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1
.end method

.method private a()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/pax/api/p;
        }
    .end annotation

    const/4 v2, 0x0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "RpcClient open rpc"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {}, Lpax/util/OsPaxApi;->open_rpc()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "RpcClient open rpc success!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lpax/util/a;->b:Z

    iget-boolean v0, p0, Lpax/util/a;->b:Z

    return v0

    :cond_0
    const v1, -0x7ffff000

    if-ne v0, v1, :cond_1

    iput-boolean v2, p0, Lpax/util/a;->b:Z

    const-string v1, "RpcClient"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "open rpc failure:ERROR_DATA_INITED,"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/pax/api/p;

    const-string v1, "ERROR_DATA_INITED"

    invoke-direct {v0, v1}, Lcom/pax/api/p;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/high16 v1, -0x7fff0000

    if-ne v0, v1, :cond_2

    iput-boolean v2, p0, Lpax/util/a;->b:Z

    const-string v1, "RpcClient"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "open rpc failure:ERROR_DATA_CONNECT,"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/pax/api/p;

    const-string v1, "ERROR_DATA_CONNECT"

    invoke-direct {v0, v1}, Lcom/pax/api/p;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput-boolean v2, p0, Lpax/util/a;->b:Z

    const-string v1, "RpcClient"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "open rpc failure:other,"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/pax/api/p;

    const-string v1, "ERROR_DATA_CONNECT"

    invoke-direct {v0, v1}, Lcom/pax/api/p;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    sget-boolean v0, Lpax/util/a;->c:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lpax/util/a;->b:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lpax/util/a;->a()V

    const/4 v0, 0x0

    sput-object v0, Lpax/util/a;->a:Lpax/util/a;

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "RpcClient finalize()"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    :cond_0
    return-void
.end method
