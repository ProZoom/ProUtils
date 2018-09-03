.class Lcom/sunrise/reader/p;
.super Ljava/lang/Thread;


# instance fields
.field a:I

.field final synthetic b:Lcom/sunrise/reader/ReadIDCardDriver;

.field private c:Lcom/sunrise/reader/i;

.field private d:Lcom/sunrise/reader/f;

.field private e:J

.field private f:J


# direct methods
.method public constructor <init>(Lcom/sunrise/reader/ReadIDCardDriver;Lcom/sunrise/reader/i;Lcom/sunrise/reader/f;)V
    .locals 4

    const-wide/16 v2, -0x1

    iput-object p1, p0, Lcom/sunrise/reader/p;->b:Lcom/sunrise/reader/ReadIDCardDriver;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, -0x6

    iput v0, p0, Lcom/sunrise/reader/p;->a:I

    iput-wide v2, p0, Lcom/sunrise/reader/p;->e:J

    iput-wide v2, p0, Lcom/sunrise/reader/p;->f:J

    const-string v0, "Reader-Trans"

    invoke-virtual {p0, v0}, Lcom/sunrise/reader/p;->setName(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/sunrise/reader/f;->a()Lcom/sunrise/reader/ReaderServerInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sunrise/reader/ReaderServerInfo;->priority()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/sunrise/reader/p;->f:J

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sunrise/reader/p;->setDaemon(Z)V

    iput-object p2, p0, Lcom/sunrise/reader/p;->c:Lcom/sunrise/reader/i;

    iput-object p3, p0, Lcom/sunrise/reader/p;->d:Lcom/sunrise/reader/f;

    return-void
.end method

.method static synthetic a(Lcom/sunrise/reader/p;)J
    .locals 2

    invoke-direct {p0}, Lcom/sunrise/reader/p;->b()J

    move-result-wide v0

    return-wide v0
.end method

.method private a(J)V
    .locals 1

    iput-wide p1, p0, Lcom/sunrise/reader/p;->e:J

    return-void
.end method

.method private b()J
    .locals 4

    const-wide/16 v2, -0x1

    iget-wide v0, p0, Lcom/sunrise/reader/p;->e:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/sunrise/reader/p;->f:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iput-wide v2, p0, Lcom/sunrise/reader/p;->e:J

    :cond_0
    :goto_0
    iget-wide v0, p0, Lcom/sunrise/reader/p;->e:J

    return-wide v0

    :cond_1
    iget-wide v0, p0, Lcom/sunrise/reader/p;->f:J

    const-wide/16 v2, 0x96

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sunrise/reader/p;->e:J

    goto :goto_0
.end method


# virtual methods
.method a()I
    .locals 1

    iget v0, p0, Lcom/sunrise/reader/p;->a:I

    return v0
.end method

.method public run()V
    .locals 8

    const/16 v7, -0x5b

    const/16 v6, -0x5c

    :try_start_0
    iget-object v0, p0, Lcom/sunrise/reader/p;->b:Lcom/sunrise/reader/ReadIDCardDriver;

    invoke-static {v0}, Lcom/sunrise/reader/ReadIDCardDriver;->access$400(Lcom/sunrise/reader/ReadIDCardDriver;)Lcom/sunrise/reader/j;

    move-result-object v0

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Lcom/sunrise/reader/j;->stateChanged(I)V

    iget-object v0, p0, Lcom/sunrise/reader/p;->c:Lcom/sunrise/reader/i;

    invoke-interface {v0}, Lcom/sunrise/reader/i;->openId()Lcom/sunrise/u/a;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sunrise/u/a;->f()B

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Lcom/sunrise/u/a;->b()[B

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/sunrise/u/a;->b()[B

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, -0x8

    iput v0, p0, Lcom/sunrise/reader/p;->a:I

    const-string v0, "\u6253\u5f00\u8eab\u4efd\u8bc1: \u5931\u8d25"

    invoke-static {v0}, Lcom/sunrise/reader/r;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    iget-object v0, p0, Lcom/sunrise/reader/p;->b:Lcom/sunrise/reader/ReadIDCardDriver;

    invoke-static {v0}, Lcom/sunrise/reader/ReadIDCardDriver;->access$900(Lcom/sunrise/reader/ReadIDCardDriver;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/sunrise/reader/p;->b:Lcom/sunrise/reader/ReadIDCardDriver;

    invoke-static {v0}, Lcom/sunrise/reader/ReadIDCardDriver;->access$900(Lcom/sunrise/reader/ReadIDCardDriver;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    :try_start_2
    const-string v0, "\u6253\u5f00\u8eab\u4efd\u8bc1: \u6210\u529f"

    invoke-static {v0}, Lcom/sunrise/reader/r;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sunrise/reader/p;->d:Lcom/sunrise/reader/f;

    iget-object v2, p0, Lcom/sunrise/reader/p;->b:Lcom/sunrise/reader/ReadIDCardDriver;

    invoke-static {v2}, Lcom/sunrise/reader/ReadIDCardDriver;->access$500(Lcom/sunrise/reader/ReadIDCardDriver;)Lcom/sunrise/reader/ManagerInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sunrise/reader/f;->a(Lcom/sunrise/reader/ManagerInfo;)I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connect sam result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sunrise/reader/r;->b(Ljava/lang/String;)V

    if-lez v0, :cond_2

    iput v0, p0, Lcom/sunrise/reader/p;->a:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    iget-object v0, p0, Lcom/sunrise/reader/p;->b:Lcom/sunrise/reader/ReadIDCardDriver;

    invoke-static {v0}, Lcom/sunrise/reader/ReadIDCardDriver;->access$900(Lcom/sunrise/reader/ReadIDCardDriver;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/sunrise/reader/p;->b:Lcom/sunrise/reader/ReadIDCardDriver;

    invoke-static {v0}, Lcom/sunrise/reader/ReadIDCardDriver;->access$900(Lcom/sunrise/reader/ReadIDCardDriver;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_2
    if-gez v0, :cond_5

    const/16 v0, -0x9

    :try_start_4
    iput v0, p0, Lcom/sunrise/reader/p;->a:I

    iget-object v0, p0, Lcom/sunrise/reader/p;->b:Lcom/sunrise/reader/ReadIDCardDriver;

    invoke-static {v0}, Lcom/sunrise/reader/ReadIDCardDriver;->access$600(Lcom/sunrise/reader/ReadIDCardDriver;)Lcom/sunrise/reader/ReaderManagerService;

    move-result-object v0

    iget-object v1, p0, Lcom/sunrise/reader/p;->d:Lcom/sunrise/reader/f;

    invoke-virtual {v1}, Lcom/sunrise/reader/f;->a()Lcom/sunrise/reader/ReaderServerInfo;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sunrise/reader/ReaderManagerService;->serverError(Lcom/sunrise/reader/ReaderServerInfo;I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    iget-object v0, p0, Lcom/sunrise/reader/p;->b:Lcom/sunrise/reader/ReadIDCardDriver;

    invoke-static {v0}, Lcom/sunrise/reader/ReadIDCardDriver;->access$900(Lcom/sunrise/reader/ReadIDCardDriver;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_5
    iget-object v0, p0, Lcom/sunrise/reader/p;->b:Lcom/sunrise/reader/ReadIDCardDriver;

    invoke-static {v0}, Lcom/sunrise/reader/ReadIDCardDriver;->access$900(Lcom/sunrise/reader/ReadIDCardDriver;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    goto :goto_0

    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    :cond_3
    const/4 v0, 0x0

    :goto_1
    :try_start_6
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sunrise/reader/r;->b(Ljava/lang/String;)V

    const-string v0, "BTReaderDriver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CMD:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/sunrise/u/a;->d()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Reader resStatus:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/sunrise/u/a;->f()B

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/sunrise/u/a;->d()B

    move-result v0

    if-ne v0, v6, :cond_4

    const-string v0, "\u670d\u52a1\u5668\u5904\u7406\uff1aSTATE_AUTH_ID_SAM"

    invoke-static {v0}, Lcom/sunrise/reader/r;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sunrise/reader/p;->b:Lcom/sunrise/reader/ReadIDCardDriver;

    invoke-static {v0}, Lcom/sunrise/reader/ReadIDCardDriver;->access$400(Lcom/sunrise/reader/ReadIDCardDriver;)Lcom/sunrise/reader/j;

    move-result-object v0

    const/16 v2, 0xd

    invoke-interface {v0, v2}, Lcom/sunrise/reader/j;->stateChanged(I)V

    :cond_4
    invoke-virtual {v1}, Lcom/sunrise/u/a;->d()B

    move-result v0

    if-ne v0, v7, :cond_5

    const-string v0, "\u670d\u52a1\u5668\u5904\u7406\uff1aSTATE_READ_INFO_SAM"

    invoke-static {v0}, Lcom/sunrise/reader/r;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sunrise/reader/p;->b:Lcom/sunrise/reader/ReadIDCardDriver;

    invoke-static {v0}, Lcom/sunrise/reader/ReadIDCardDriver;->access$400(Lcom/sunrise/reader/ReadIDCardDriver;)Lcom/sunrise/reader/j;

    move-result-object v0

    const/16 v2, 0xf

    invoke-interface {v0, v2}, Lcom/sunrise/reader/j;->stateChanged(I)V

    :cond_5
    iget-object v0, p0, Lcom/sunrise/reader/p;->b:Lcom/sunrise/reader/ReadIDCardDriver;

    invoke-static {v0}, Lcom/sunrise/reader/ReadIDCardDriver;->access$700(Lcom/sunrise/reader/ReadIDCardDriver;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/sunrise/reader/p;->b:Lcom/sunrise/reader/ReadIDCardDriver;

    invoke-static {v0}, Lcom/sunrise/reader/ReadIDCardDriver;->access$400(Lcom/sunrise/reader/ReadIDCardDriver;)Lcom/sunrise/reader/j;

    move-result-object v0

    const/16 v2, 0xb

    invoke-interface {v0, v2}, Lcom/sunrise/reader/j;->stateChanged(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/sunrise/reader/p;->d:Lcom/sunrise/reader/f;

    invoke-virtual {v0, v1}, Lcom/sunrise/reader/f;->a(Lcom/sunrise/u/a;)Lcom/sunrise/u/a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CMD:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sunrise/u/a;->d()B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "SAM resStatus:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/sunrise/u/a;->f()B

    move-result v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    :goto_2
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sunrise/reader/r;->b(Ljava/lang/String;)V

    const-string v1, "BTReaderDriver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CMD:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sunrise/u/a;->d()B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "SAM resStatus:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sunrise/u/a;->f()B

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_8

    const/4 v0, -0x3

    iput v0, p0, Lcom/sunrise/reader/p;->a:I

    const-string v0, "\u670d\u52a1\u5668\u5904\u7406\u5931\u8d25\uff1aERR_NET_ERROR"

    invoke-static {v0}, Lcom/sunrise/reader/r;->b(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    :cond_6
    :goto_3
    iget-object v0, p0, Lcom/sunrise/reader/p;->b:Lcom/sunrise/reader/ReadIDCardDriver;

    invoke-static {v0}, Lcom/sunrise/reader/ReadIDCardDriver;->access$900(Lcom/sunrise/reader/ReadIDCardDriver;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lcom/sunrise/reader/p;->b:Lcom/sunrise/reader/ReadIDCardDriver;

    invoke-static {v0}, Lcom/sunrise/reader/ReadIDCardDriver;->access$900(Lcom/sunrise/reader/ReadIDCardDriver;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    goto/16 :goto_0

    :catchall_3
    move-exception v0

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0

    :cond_7
    const/4 v1, 0x0

    goto :goto_2

    :cond_8
    :try_start_8
    invoke-virtual {v0}, Lcom/sunrise/u/a;->f()B

    move-result v1

    if-eqz v1, :cond_9

    const/4 v0, -0x5

    iput v0, p0, Lcom/sunrise/reader/p;->a:I

    const-string v0, "\u670d\u52a1\u5668\u5904\u7406\u5931\u8d25\uff1aERR_SAM_ERROR"

    invoke-static {v0}, Lcom/sunrise/reader/r;->b(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    goto :goto_3

    :catch_0
    move-exception v0

    :try_start_9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    iget-object v0, p0, Lcom/sunrise/reader/p;->b:Lcom/sunrise/reader/ReadIDCardDriver;

    invoke-static {v0}, Lcom/sunrise/reader/ReadIDCardDriver;->access$900(Lcom/sunrise/reader/ReadIDCardDriver;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_a
    iget-object v0, p0, Lcom/sunrise/reader/p;->b:Lcom/sunrise/reader/ReadIDCardDriver;

    invoke-static {v0}, Lcom/sunrise/reader/ReadIDCardDriver;->access$900(Lcom/sunrise/reader/ReadIDCardDriver;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    goto/16 :goto_0

    :catchall_4
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    throw v0

    :cond_9
    :try_start_b
    invoke-virtual {v0}, Lcom/sunrise/u/a;->d()B

    move-result v1

    const/4 v4, -0x1

    if-ne v1, v4, :cond_a

    const/4 v0, -0x5

    iput v0, p0, Lcom/sunrise/reader/p;->a:I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto :goto_3

    :catchall_5
    move-exception v0

    iget-object v1, p0, Lcom/sunrise/reader/p;->b:Lcom/sunrise/reader/ReadIDCardDriver;

    invoke-static {v1}, Lcom/sunrise/reader/ReadIDCardDriver;->access$900(Lcom/sunrise/reader/ReadIDCardDriver;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_c
    iget-object v2, p0, Lcom/sunrise/reader/p;->b:Lcom/sunrise/reader/ReadIDCardDriver;

    invoke-static {v2}, Lcom/sunrise/reader/ReadIDCardDriver;->access$900(Lcom/sunrise/reader/ReadIDCardDriver;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    throw v0

    :cond_a
    :try_start_d
    invoke-virtual {v0}, Lcom/sunrise/u/a;->d()B

    move-result v1

    if-ne v1, v6, :cond_b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    invoke-direct {p0, v2, v3}, Lcom/sunrise/reader/p;->a(J)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u670d\u52a1\u5668\u5ef6\u8fdf\uff1a"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sunrise/reader/r;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sunrise/reader/p;->b:Lcom/sunrise/reader/ReadIDCardDriver;

    invoke-static {v1}, Lcom/sunrise/reader/ReadIDCardDriver;->access$400(Lcom/sunrise/reader/ReadIDCardDriver;)Lcom/sunrise/reader/j;

    move-result-object v1

    const/16 v2, 0xc

    invoke-interface {v1, v2}, Lcom/sunrise/reader/j;->stateChanged(I)V

    const-string v1, "\u670d\u52a1\u5668\u5904\u7406\uff1aSTATE_AUTH_ID"

    invoke-static {v1}, Lcom/sunrise/reader/r;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sunrise/reader/p;->c:Lcom/sunrise/reader/i;

    invoke-interface {v1, v0}, Lcom/sunrise/reader/i;->authId(Lcom/sunrise/u/a;)Lcom/sunrise/u/a;

    move-result-object v0

    :cond_b
    invoke-virtual {v0}, Lcom/sunrise/u/a;->d()B

    move-result v1

    if-ne v1, v7, :cond_14

    iget-object v1, p0, Lcom/sunrise/reader/p;->b:Lcom/sunrise/reader/ReadIDCardDriver;

    invoke-static {v1}, Lcom/sunrise/reader/ReadIDCardDriver;->access$400(Lcom/sunrise/reader/ReadIDCardDriver;)Lcom/sunrise/reader/j;

    move-result-object v1

    const/16 v2, 0xe

    invoke-interface {v1, v2}, Lcom/sunrise/reader/j;->stateChanged(I)V

    const-string v1, "\u670d\u52a1\u5668\u5904\u7406\uff1aSTATE_READ_INFO"

    invoke-static {v1}, Lcom/sunrise/reader/r;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sunrise/reader/p;->c:Lcom/sunrise/reader/i;

    invoke-interface {v1, v0}, Lcom/sunrise/reader/i;->readInfo(Lcom/sunrise/u/a;)Lcom/sunrise/u/a;

    move-result-object v0

    move-object v1, v0

    :goto_4
    invoke-virtual {v1}, Lcom/sunrise/u/a;->d()B

    move-result v0

    const/16 v2, -0xe

    if-ne v0, v2, :cond_d

    iget-object v0, p0, Lcom/sunrise/reader/p;->b:Lcom/sunrise/reader/ReadIDCardDriver;

    invoke-static {v0}, Lcom/sunrise/reader/ReadIDCardDriver;->access$400(Lcom/sunrise/reader/ReadIDCardDriver;)Lcom/sunrise/reader/j;

    move-result-object v0

    const/16 v2, 0x10

    invoke-interface {v0, v2}, Lcom/sunrise/reader/j;->stateChanged(I)V

    invoke-virtual {v1}, Lcom/sunrise/u/a;->f()B

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "\u8eab\u4efd\u8bc1\u8bc6\u522b\u6210\u529f"

    invoke-static {v0}, Lcom/sunrise/reader/r;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sunrise/reader/p;->b:Lcom/sunrise/reader/ReadIDCardDriver;

    invoke-static {v0, v1}, Lcom/sunrise/reader/ReadIDCardDriver;->access$800(Lcom/sunrise/reader/ReadIDCardDriver;Lcom/sunrise/u/a;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sunrise/reader/p;->a:I

    goto/16 :goto_3

    :cond_c
    const-string v0, "\u8eab\u4efd\u8bc1\u8bc6\u522b\u5931\u8d25:SAM\u5904\u7406\u5931\u8d25"

    invoke-static {v0}, Lcom/sunrise/reader/r;->b(Ljava/lang/String;)V

    const/4 v0, -0x5

    iput v0, p0, Lcom/sunrise/reader/p;->a:I

    goto/16 :goto_3

    :cond_d
    invoke-virtual {v1}, Lcom/sunrise/u/a;->d()B

    move-result v0

    const/16 v2, -0xd

    if-ne v0, v2, :cond_f

    iget-object v0, p0, Lcom/sunrise/reader/p;->b:Lcom/sunrise/reader/ReadIDCardDriver;

    invoke-static {v0}, Lcom/sunrise/reader/ReadIDCardDriver;->access$400(Lcom/sunrise/reader/ReadIDCardDriver;)Lcom/sunrise/reader/j;

    move-result-object v0

    const/16 v2, 0x10

    invoke-interface {v0, v2}, Lcom/sunrise/reader/j;->stateChanged(I)V

    invoke-virtual {v1}, Lcom/sunrise/u/a;->f()B

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "\u8eab\u4efd\u8bc1\u8bc6\u522b\u6210\u529f"

    invoke-static {v0}, Lcom/sunrise/reader/r;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sunrise/reader/p;->b:Lcom/sunrise/reader/ReadIDCardDriver;

    new-instance v2, Ljava/lang/String;

    invoke-virtual {v1}, Lcom/sunrise/u/a;->b()[B

    move-result-object v1

    const-string v3, "UTF-8"

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v2, v0, Lcom/sunrise/reader/ReadIDCardDriver;->dianxinData:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sunrise/reader/p;->a:I

    goto/16 :goto_3

    :cond_e
    const-string v0, "\u8eab\u4efd\u8bc1\u8bc6\u522b\u5931\u8d25:SAM\u5904\u7406\u5931\u8d25"

    invoke-static {v0}, Lcom/sunrise/reader/r;->b(Ljava/lang/String;)V

    const/4 v0, -0x5

    iput v0, p0, Lcom/sunrise/reader/p;->a:I

    goto/16 :goto_3

    :cond_f
    invoke-virtual {v1}, Lcom/sunrise/u/a;->d()B

    move-result v0

    const/16 v2, -0xc

    if-ne v0, v2, :cond_11

    iget-object v0, p0, Lcom/sunrise/reader/p;->b:Lcom/sunrise/reader/ReadIDCardDriver;

    invoke-static {v0}, Lcom/sunrise/reader/ReadIDCardDriver;->access$400(Lcom/sunrise/reader/ReadIDCardDriver;)Lcom/sunrise/reader/j;

    move-result-object v0

    const/16 v2, 0x10

    invoke-interface {v0, v2}, Lcom/sunrise/reader/j;->stateChanged(I)V

    invoke-virtual {v1}, Lcom/sunrise/u/a;->f()B

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "\u8eab\u4efd\u8bc1\u8bc6\u522b\u6210\u529f"

    invoke-static {v0}, Lcom/sunrise/reader/r;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sunrise/reader/p;->b:Lcom/sunrise/reader/ReadIDCardDriver;

    invoke-static {v0, v1}, Lcom/sunrise/reader/ReadIDCardDriver;->access$800(Lcom/sunrise/reader/ReadIDCardDriver;Lcom/sunrise/u/a;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sunrise/reader/p;->a:I

    goto/16 :goto_3

    :cond_10
    const-string v0, "\u8eab\u4efd\u8bc1\u8bc6\u522b\u5931\u8d25:SAM\u5904\u7406\u5931\u8d25"

    invoke-static {v0}, Lcom/sunrise/reader/r;->b(Ljava/lang/String;)V

    const/4 v0, -0x5

    iput v0, p0, Lcom/sunrise/reader/p;->a:I

    goto/16 :goto_3

    :cond_11
    invoke-virtual {v1}, Lcom/sunrise/u/a;->a()[B

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1}, Lcom/sunrise/u/a;->a()[B

    move-result-object v4

    array-length v4, v4

    invoke-static {v0, v2, v3, v4}, Lcom/sunrise/v/a;->a([BIII)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sunrise/reader/r;->b(Ljava/lang/String;)V

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Lcom/sunrise/u/a;->f()B

    move-result v0

    if-eqz v0, :cond_13

    :cond_12
    const/4 v0, -0x6

    iput v0, p0, Lcom/sunrise/reader/p;->a:I

    const-string v0, "\u5176\u4ed6\u9605\u8bfb\u5668\u9519\u8bef"

    invoke-static {v0}, Lcom/sunrise/reader/r;->b(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CMD:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/sunrise/u/a;->d()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "Reader resStatus:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/sunrise/u/a;->f()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    move-result-object v0

    goto/16 :goto_1

    :catchall_6
    move-exception v0

    :try_start_e
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    throw v0

    :cond_14
    move-object v1, v0

    goto/16 :goto_4
.end method
