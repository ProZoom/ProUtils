.class Lcom/sunrise/reader/d;
.super Ljava/lang/Thread;


# instance fields
.field a:I

.field final synthetic b:Lcom/sunrise/reader/c;

.field private c:Lcom/sunrise/reader/a;

.field private d:Lcom/sunrise/reader/f;

.field private e:J

.field private f:J


# direct methods
.method public constructor <init>(Lcom/sunrise/reader/c;Lcom/sunrise/reader/a;Lcom/sunrise/reader/f;)V
    .locals 4

    const-wide/16 v2, -0x1

    iput-object p1, p0, Lcom/sunrise/reader/d;->b:Lcom/sunrise/reader/c;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, -0x7

    iput v0, p0, Lcom/sunrise/reader/d;->a:I

    iput-wide v2, p0, Lcom/sunrise/reader/d;->e:J

    iput-wide v2, p0, Lcom/sunrise/reader/d;->f:J

    const-string v0, "Reader-Trans"

    invoke-virtual {p0, v0}, Lcom/sunrise/reader/d;->setName(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/sunrise/reader/f;->a()Lcom/sunrise/reader/ReaderServerInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sunrise/reader/ReaderServerInfo;->priority()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/sunrise/reader/d;->f:J

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sunrise/reader/d;->setDaemon(Z)V

    iput-object p2, p0, Lcom/sunrise/reader/d;->c:Lcom/sunrise/reader/a;

    iput-object p3, p0, Lcom/sunrise/reader/d;->d:Lcom/sunrise/reader/f;

    return-void
.end method

.method static synthetic a(Lcom/sunrise/reader/d;)J
    .locals 2

    invoke-direct {p0}, Lcom/sunrise/reader/d;->b()J

    move-result-wide v0

    return-wide v0
.end method

.method private b()J
    .locals 4

    const-wide/16 v2, -0x1

    iget-wide v0, p0, Lcom/sunrise/reader/d;->e:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/sunrise/reader/d;->f:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iput-wide v2, p0, Lcom/sunrise/reader/d;->e:J

    :cond_0
    :goto_0
    iget-wide v0, p0, Lcom/sunrise/reader/d;->e:J

    return-wide v0

    :cond_1
    iget-wide v0, p0, Lcom/sunrise/reader/d;->f:J

    const-wide/16 v2, 0x96

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sunrise/reader/d;->e:J

    goto :goto_0
.end method


# virtual methods
.method a()I
    .locals 1

    iget v0, p0, Lcom/sunrise/reader/d;->a:I

    return v0
.end method

.method public run()V
    .locals 7

    const/4 v5, 0x3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/sunrise/reader/d;->b:Lcom/sunrise/reader/c;

    invoke-static {v1}, Lcom/sunrise/reader/c;->e(Lcom/sunrise/reader/c;)Z

    move-result v1

    if-nez v1, :cond_b

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sunrise/reader/d;->b:Lcom/sunrise/reader/c;

    invoke-static {v2}, Lcom/sunrise/reader/c;->a(Lcom/sunrise/reader/c;)Lcom/sunrise/reader/ManagerInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sunrise/reader/ManagerInfo;->accessAccount()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sunrise/reader/d;->b:Lcom/sunrise/reader/c;

    invoke-static {v2}, Lcom/sunrise/reader/c;->a(Lcom/sunrise/reader/c;)Lcom/sunrise/reader/ManagerInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sunrise/reader/ManagerInfo;->accessAccount()Ljava/lang/String;

    move-result-object v2

    const-string v3, "china_telecom"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sunrise/reader/d;->b:Lcom/sunrise/reader/c;

    iget-object v3, p0, Lcom/sunrise/reader/d;->b:Lcom/sunrise/reader/c;

    invoke-virtual {v3}, Lcom/sunrise/reader/c;->f()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/sunrise/reader/c;->a(Lcom/sunrise/reader/c;Z)Z

    const-string v2, "BTReaderDriver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sunrise/reader/d;->b:Lcom/sunrise/reader/c;

    invoke-static {v4}, Lcom/sunrise/reader/c;->f(Lcom/sunrise/reader/c;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/sunrise/reader/d;->b:Lcom/sunrise/reader/c;

    invoke-static {v2}, Lcom/sunrise/reader/c;->g(Lcom/sunrise/reader/c;)Lcom/sunrise/reader/j;

    move-result-object v2

    const/16 v3, 0xa

    invoke-interface {v2, v3}, Lcom/sunrise/reader/j;->stateChanged(I)V

    move v6, v0

    move-object v0, v1

    move v1, v6

    :cond_1
    if-ge v1, v5, :cond_5

    iget-object v0, p0, Lcom/sunrise/reader/d;->b:Lcom/sunrise/reader/c;

    invoke-static {v0}, Lcom/sunrise/reader/c;->f(Lcom/sunrise/reader/c;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sunrise/reader/d;->c:Lcom/sunrise/reader/a;

    new-instance v2, Lcom/sunrise/u/a;

    invoke-direct {v2}, Lcom/sunrise/u/a;-><init>()V

    const/16 v3, -0x70

    invoke-virtual {v2, v3}, Lcom/sunrise/u/a;->a(B)Lcom/sunrise/u/a;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sunrise/u/a;->c(B)Lcom/sunrise/u/a;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sunrise/reader/a;->a(Lcom/sunrise/u/a;)Lcom/sunrise/u/a;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sunrise/u/a;->f()B

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lcom/sunrise/u/a;->b()[B

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/sunrise/u/a;->b()[B

    move-result-object v2

    array-length v2, v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/sunrise/u/a;->b()[B

    move-result-object v2

    array-length v2, v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    :cond_2
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/sunrise/u/a;->a()[B

    move-result-object v2

    array-length v2, v2

    if-lez v2, :cond_4

    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/sunrise/u/a;->a()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-static {v2}, Lcom/sunrise/reader/r;->b(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    if-ne v1, v5, :cond_1

    const/4 v0, -0x8

    iput v0, p0, Lcom/sunrise/reader/d;->a:I

    const-string v0, "BTReaderDriver"

    const-string v1, "\u6253\u5f00\u8eab\u4efd\u8bc1: \u5931\u8d25"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "\u6253\u5f00\u8eab\u4efd\u8bc1: \u5931\u8d25"

    invoke-static {v0}, Lcom/sunrise/reader/r;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v0, p0, Lcom/sunrise/reader/d;->b:Lcom/sunrise/reader/c;

    invoke-static {v0}, Lcom/sunrise/reader/c;->l(Lcom/sunrise/reader/c;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/sunrise/reader/d;->b:Lcom/sunrise/reader/c;

    invoke-static {v0}, Lcom/sunrise/reader/c;->l(Lcom/sunrise/reader/c;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :goto_2
    return-void

    :cond_3
    :try_start_2
    new-instance v0, Lcom/sunrise/u/a;

    invoke-direct {v0}, Lcom/sunrise/u/a;-><init>()V

    iget-object v2, p0, Lcom/sunrise/reader/d;->b:Lcom/sunrise/reader/c;

    invoke-static {v2}, Lcom/sunrise/reader/c;->h(Lcom/sunrise/reader/c;)Lcom/sunrise/bluetooth/Reader;

    iget-object v2, p0, Lcom/sunrise/reader/d;->c:Lcom/sunrise/reader/a;

    invoke-static {v2}, Lcom/sunrise/bluetooth/Reader;->read_cmcc0(Ljava/lang/Object;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sunrise/u/a;->b([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    iget-object v0, p0, Lcom/sunrise/reader/d;->b:Lcom/sunrise/reader/c;

    invoke-static {v0}, Lcom/sunrise/reader/c;->l(Lcom/sunrise/reader/c;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_4
    iget-object v0, p0, Lcom/sunrise/reader/d;->b:Lcom/sunrise/reader/c;

    invoke-static {v0}, Lcom/sunrise/reader/c;->l(Lcom/sunrise/reader/c;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :cond_4
    :try_start_5
    const-string v2, "BTReaderDriver"

    const-string v3, "OPENID REUTN NULL"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "OPENID REUTN NULL"

    invoke-static {v2}, Lcom/sunrise/reader/r;->b(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/sunrise/reader/d;->b:Lcom/sunrise/reader/c;

    invoke-static {v1}, Lcom/sunrise/reader/c;->l(Lcom/sunrise/reader/c;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_6
    iget-object v2, p0, Lcom/sunrise/reader/d;->b:Lcom/sunrise/reader/c;

    invoke-static {v2}, Lcom/sunrise/reader/c;->l(Lcom/sunrise/reader/c;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    throw v0

    :catchall_2
    move-exception v0

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v0

    :cond_5
    :try_start_8
    const-string v1, "\u6253\u5f00\u8eab\u4efd\u8bc1: \u6210\u529f"

    invoke-static {v1}, Lcom/sunrise/reader/r;->b(Ljava/lang/String;)V

    const-string v1, "BTReaderDriver"

    const-string v2, "\u6253\u5f00\u8eab\u4efd\u8bc1: \u6210\u529f"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sunrise/reader/d;->d:Lcom/sunrise/reader/f;

    iget-object v2, p0, Lcom/sunrise/reader/d;->b:Lcom/sunrise/reader/c;

    invoke-static {v2}, Lcom/sunrise/reader/c;->a(Lcom/sunrise/reader/c;)Lcom/sunrise/reader/ManagerInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sunrise/reader/f;->a(Lcom/sunrise/reader/ManagerInfo;)I

    move-result v1

    iget-object v2, p0, Lcom/sunrise/reader/d;->b:Lcom/sunrise/reader/c;

    invoke-static {v2}, Lcom/sunrise/reader/c;->i(Lcom/sunrise/reader/c;)Lcom/sunrise/reader/g;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/sunrise/reader/d;->b:Lcom/sunrise/reader/c;

    invoke-static {v2}, Lcom/sunrise/reader/c;->i(Lcom/sunrise/reader/c;)Lcom/sunrise/reader/g;

    move-result-object v2

    iget-object v3, p0, Lcom/sunrise/reader/d;->d:Lcom/sunrise/reader/f;

    invoke-virtual {v3}, Lcom/sunrise/reader/f;->a()Lcom/sunrise/reader/ReaderServerInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sunrise/reader/ReaderServerInfo;->host()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sunrise/reader/d;->d:Lcom/sunrise/reader/f;

    invoke-virtual {v4}, Lcom/sunrise/reader/f;->a()Lcom/sunrise/reader/ReaderServerInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sunrise/reader/ReaderServerInfo;->port()I

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/sunrise/reader/g;->a(Ljava/lang/String;I)V

    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connect sam result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sunrise/reader/r;->b(Ljava/lang/String;)V

    const-string v2, "BTReaderDriver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connect sam result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v1, :cond_7

    const/16 v0, -0xb

    iput v0, p0, Lcom/sunrise/reader/d;->a:I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    iget-object v0, p0, Lcom/sunrise/reader/d;->b:Lcom/sunrise/reader/c;

    invoke-static {v0}, Lcom/sunrise/reader/c;->l(Lcom/sunrise/reader/c;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_9
    iget-object v0, p0, Lcom/sunrise/reader/d;->b:Lcom/sunrise/reader/c;

    invoke-static {v0}, Lcom/sunrise/reader/c;->l(Lcom/sunrise/reader/c;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    goto/16 :goto_2

    :catchall_3
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v0

    :cond_7
    if-gez v1, :cond_a

    const/16 v0, -0x9

    :try_start_a
    iput v0, p0, Lcom/sunrise/reader/d;->a:I

    iget-object v0, p0, Lcom/sunrise/reader/d;->b:Lcom/sunrise/reader/c;

    invoke-static {v0}, Lcom/sunrise/reader/c;->j(Lcom/sunrise/reader/c;)Lcom/sunrise/reader/ReaderManagerService;

    move-result-object v0

    iget-object v1, p0, Lcom/sunrise/reader/d;->d:Lcom/sunrise/reader/f;

    invoke-virtual {v1}, Lcom/sunrise/reader/f;->a()Lcom/sunrise/reader/ReaderServerInfo;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sunrise/reader/ReaderManagerService;->serverError(Lcom/sunrise/reader/ReaderServerInfo;I)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    iget-object v0, p0, Lcom/sunrise/reader/d;->b:Lcom/sunrise/reader/c;

    invoke-static {v0}, Lcom/sunrise/reader/c;->l(Lcom/sunrise/reader/c;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_b
    iget-object v0, p0, Lcom/sunrise/reader/d;->b:Lcom/sunrise/reader/c;

    invoke-static {v0}, Lcom/sunrise/reader/c;->l(Lcom/sunrise/reader/c;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    goto/16 :goto_2

    :catchall_4
    move-exception v0

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    throw v0

    :cond_8
    :try_start_c
    invoke-virtual {v0}, Lcom/sunrise/u/a;->d()B

    move-result v1

    const/16 v2, -0x5c

    if-ne v1, v2, :cond_9

    iget-object v1, p0, Lcom/sunrise/reader/d;->b:Lcom/sunrise/reader/c;

    invoke-static {v1}, Lcom/sunrise/reader/c;->f(Lcom/sunrise/reader/c;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/sunrise/reader/d;->b:Lcom/sunrise/reader/c;

    invoke-static {v1}, Lcom/sunrise/reader/c;->h(Lcom/sunrise/reader/c;)Lcom/sunrise/bluetooth/Reader;

    iget-object v1, p0, Lcom/sunrise/reader/d;->c:Lcom/sunrise/reader/a;

    invoke-virtual {v0}, Lcom/sunrise/u/a;->a()[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sunrise/bluetooth/Reader;->read_cmcc2(Ljava/lang/Object;[B)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sunrise/u/a;->b([B)V

    :cond_9
    invoke-virtual {v0}, Lcom/sunrise/u/a;->d()B

    move-result v1

    const/16 v2, -0x5b

    if-ne v1, v2, :cond_a

    iget-object v1, p0, Lcom/sunrise/reader/d;->b:Lcom/sunrise/reader/c;

    invoke-static {v1}, Lcom/sunrise/reader/c;->f(Lcom/sunrise/reader/c;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/sunrise/reader/d;->b:Lcom/sunrise/reader/c;

    invoke-static {v1}, Lcom/sunrise/reader/c;->h(Lcom/sunrise/reader/c;)Lcom/sunrise/bluetooth/Reader;

    iget-object v1, p0, Lcom/sunrise/reader/d;->c:Lcom/sunrise/reader/a;

    invoke-virtual {v0}, Lcom/sunrise/u/a;->a()[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sunrise/bluetooth/Reader;->read_cmcc3(Ljava/lang/Object;[B)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sunrise/u/a;->b([B)V

    :cond_a
    iget-object v1, p0, Lcom/sunrise/reader/d;->b:Lcom/sunrise/reader/c;

    invoke-static {v1}, Lcom/sunrise/reader/c;->e(Lcom/sunrise/reader/c;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "BTReaderDriver"

    const-string v2, "STS"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sunrise/reader/d;->d:Lcom/sunrise/reader/f;

    invoke-virtual {v1, v0}, Lcom/sunrise/reader/f;->a(Lcom/sunrise/u/a;)Lcom/sunrise/u/a;

    move-result-object v0

    const-string v1, "BTReaderDriver"

    const-string v2, "RFS"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "BTReaderDriver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CMD:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sunrise/u/a;->d()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "SAM resStatus:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sunrise/u/a;->f()B

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/sunrise/u/a;->d()B

    move-result v1

    const/16 v2, -0xe

    if-ne v1, v2, :cond_d

    iget-object v1, p0, Lcom/sunrise/reader/d;->b:Lcom/sunrise/reader/c;

    invoke-static {v1}, Lcom/sunrise/reader/c;->g(Lcom/sunrise/reader/c;)Lcom/sunrise/reader/j;

    move-result-object v1

    const/16 v2, 0x10

    invoke-interface {v1, v2}, Lcom/sunrise/reader/j;->stateChanged(I)V

    invoke-virtual {v0}, Lcom/sunrise/u/a;->f()B

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "\u8eab\u4efd\u8bc1\u8bc6\u522b\u6210\u529f"

    invoke-static {v1}, Lcom/sunrise/reader/r;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sunrise/reader/d;->b:Lcom/sunrise/reader/c;

    invoke-static {v1, v0}, Lcom/sunrise/reader/c;->a(Lcom/sunrise/reader/c;Lcom/sunrise/u/a;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sunrise/reader/d;->a:I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :cond_b
    :goto_3
    iget-object v0, p0, Lcom/sunrise/reader/d;->b:Lcom/sunrise/reader/c;

    invoke-static {v0}, Lcom/sunrise/reader/c;->l(Lcom/sunrise/reader/c;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_d
    iget-object v0, p0, Lcom/sunrise/reader/d;->b:Lcom/sunrise/reader/c;

    invoke-static {v0}, Lcom/sunrise/reader/c;->l(Lcom/sunrise/reader/c;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    goto/16 :goto_2

    :catchall_5
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    throw v0

    :cond_c
    :try_start_e
    const-string v0, "\u8eab\u4efd\u8bc1\u8bc6\u522b\u5931\u8d25:SAM\u5904\u7406\u5931\u8d25"

    invoke-static {v0}, Lcom/sunrise/reader/r;->b(Ljava/lang/String;)V

    const/4 v0, -0x5

    iput v0, p0, Lcom/sunrise/reader/d;->a:I

    goto :goto_3

    :cond_d
    invoke-virtual {v0}, Lcom/sunrise/u/a;->d()B

    move-result v1

    const/16 v2, -0xd

    if-ne v1, v2, :cond_f

    iget-object v1, p0, Lcom/sunrise/reader/d;->b:Lcom/sunrise/reader/c;

    invoke-static {v1}, Lcom/sunrise/reader/c;->g(Lcom/sunrise/reader/c;)Lcom/sunrise/reader/j;

    move-result-object v1

    const/16 v2, 0x10

    invoke-interface {v1, v2}, Lcom/sunrise/reader/j;->stateChanged(I)V

    invoke-virtual {v0}, Lcom/sunrise/u/a;->f()B

    move-result v1

    if-nez v1, :cond_e

    const-string v1, "\u8bc6\u522b\u6210\u529f"

    invoke-static {v1}, Lcom/sunrise/reader/r;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sunrise/reader/d;->b:Lcom/sunrise/reader/c;

    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/sunrise/u/a;->b()[B

    move-result-object v0

    const-string v3, "UTF-8"

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v2, v1, Lcom/sunrise/reader/c;->c:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sunrise/reader/d;->a:I

    iget-object v0, p0, Lcom/sunrise/reader/d;->b:Lcom/sunrise/reader/c;

    invoke-static {v0}, Lcom/sunrise/reader/c;->f(Lcom/sunrise/reader/c;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/sunrise/reader/d;->b:Lcom/sunrise/reader/c;

    invoke-static {v0}, Lcom/sunrise/reader/c;->k(Lcom/sunrise/reader/c;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/sunrise/reader/d;->b:Lcom/sunrise/reader/c;

    invoke-static {v0}, Lcom/sunrise/reader/c;->k(Lcom/sunrise/reader/c;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "X-SR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/sunrise/reader/d;->c:Lcom/sunrise/reader/a;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Lcom/sunrise/reader/a;->send_cmd_to_reader([B)[B

    goto :goto_3

    :cond_e
    const-string v0, "\u8bc6\u522b\u5931\u8d25:SAM\u5904\u7406\u5931\u8d25"

    invoke-static {v0}, Lcom/sunrise/reader/r;->b(Ljava/lang/String;)V

    const/4 v0, -0x5

    iput v0, p0, Lcom/sunrise/reader/d;->a:I

    goto/16 :goto_3

    :cond_f
    invoke-virtual {v0}, Lcom/sunrise/u/a;->d()B

    move-result v1

    const/16 v2, -0xc

    if-ne v1, v2, :cond_11

    iget-object v1, p0, Lcom/sunrise/reader/d;->b:Lcom/sunrise/reader/c;

    invoke-static {v1}, Lcom/sunrise/reader/c;->g(Lcom/sunrise/reader/c;)Lcom/sunrise/reader/j;

    move-result-object v1

    const/16 v2, 0x10

    invoke-interface {v1, v2}, Lcom/sunrise/reader/j;->stateChanged(I)V

    invoke-virtual {v0}, Lcom/sunrise/u/a;->f()B

    move-result v1

    if-nez v1, :cond_10

    const-string v1, "\u8bc6\u522b\u6210\u529f"

    invoke-static {v1}, Lcom/sunrise/reader/r;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sunrise/reader/d;->b:Lcom/sunrise/reader/c;

    invoke-static {v1, v0}, Lcom/sunrise/reader/c;->a(Lcom/sunrise/reader/c;Lcom/sunrise/u/a;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sunrise/reader/d;->a:I

    goto/16 :goto_3

    :cond_10
    const-string v0, "\u8bc6\u522b\u5931\u8d25:SAM\u5904\u7406\u5931\u8d25"

    invoke-static {v0}, Lcom/sunrise/reader/r;->b(Ljava/lang/String;)V

    const/4 v0, -0x5

    iput v0, p0, Lcom/sunrise/reader/d;->a:I

    goto/16 :goto_3

    :cond_11
    iget-object v1, p0, Lcom/sunrise/reader/d;->b:Lcom/sunrise/reader/c;

    invoke-static {v1}, Lcom/sunrise/reader/c;->f(Lcom/sunrise/reader/c;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/sunrise/reader/d;->c:Lcom/sunrise/reader/a;

    invoke-virtual {v1, v0}, Lcom/sunrise/reader/a;->a(Lcom/sunrise/u/a;)Lcom/sunrise/u/a;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/sunrise/u/a;->f()B

    move-result v1

    if-eqz v1, :cond_8

    :cond_12
    const/4 v1, -0x6

    iput v1, p0, Lcom/sunrise/reader/d;->a:I

    const-string v1, "\u9519\u8bef:-6"

    invoke-static {v1}, Lcom/sunrise/reader/r;->b(Ljava/lang/String;)V

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/sunrise/u/a;->a()[B

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/sunrise/u/a;->a()[B

    move-result-object v0

    array-length v0, v0

    invoke-static {v1, v2, v3, v0}, Lcom/sunrise/v/a;->a([BIII)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sunrise/reader/r;->b(Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto/16 :goto_3

    :catchall_6
    move-exception v0

    :try_start_f
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    throw v0

    :array_0
    .array-data 1
        0xbt
        0x0t
        0x0t
        0x5t
        0x0t
    .end array-data
.end method
