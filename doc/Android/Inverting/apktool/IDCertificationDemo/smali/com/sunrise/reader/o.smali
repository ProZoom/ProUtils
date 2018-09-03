.class Lcom/sunrise/reader/o;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/sunrise/reader/n;

.field private b:Lcom/sunrise/reader/m;

.field private c:Lcom/sunrise/reader/f;

.field private d:J

.field private e:J


# direct methods
.method public constructor <init>(Lcom/sunrise/reader/n;Lcom/sunrise/reader/m;Lcom/sunrise/reader/f;)V
    .locals 1

    iput-object p1, p0, Lcom/sunrise/reader/o;->a:Lcom/sunrise/reader/n;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const-string v0, "Reader-Trans"

    invoke-virtual {p0, v0}, Lcom/sunrise/reader/o;->setName(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sunrise/reader/o;->setDaemon(Z)V

    iput-object p2, p0, Lcom/sunrise/reader/o;->b:Lcom/sunrise/reader/m;

    iput-object p3, p0, Lcom/sunrise/reader/o;->c:Lcom/sunrise/reader/f;

    return-void
.end method

.method static synthetic a(Lcom/sunrise/reader/o;)J
    .locals 2

    invoke-direct {p0}, Lcom/sunrise/reader/o;->b()J

    move-result-wide v0

    return-wide v0
.end method

.method private a(J)V
    .locals 1

    iput-wide p1, p0, Lcom/sunrise/reader/o;->d:J

    return-void
.end method

.method private b()J
    .locals 4

    const-wide/16 v2, -0x1

    iget-wide v0, p0, Lcom/sunrise/reader/o;->d:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/sunrise/reader/o;->e:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iput-wide v2, p0, Lcom/sunrise/reader/o;->d:J

    :cond_0
    :goto_0
    iget-wide v0, p0, Lcom/sunrise/reader/o;->d:J

    return-wide v0

    :cond_1
    iget-wide v0, p0, Lcom/sunrise/reader/o;->e:J

    const-wide/16 v2, 0x96

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sunrise/reader/o;->d:J

    goto :goto_0
.end method


# virtual methods
.method a()I
    .locals 1

    iget-object v0, p0, Lcom/sunrise/reader/o;->a:Lcom/sunrise/reader/n;

    invoke-static {v0}, Lcom/sunrise/reader/n;->f(Lcom/sunrise/reader/n;)I

    move-result v0

    return v0
.end method

.method public run()V
    .locals 9

    const/16 v8, -0x5c

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/sunrise/reader/o;->a:Lcom/sunrise/reader/n;

    invoke-static {v1}, Lcom/sunrise/reader/n;->g(Lcom/sunrise/reader/n;)Lcom/sunrise/reader/j;

    move-result-object v1

    const/16 v2, 0xa

    invoke-interface {v1, v2}, Lcom/sunrise/reader/j;->stateChanged(I)V

    iget-object v1, p0, Lcom/sunrise/reader/o;->a:Lcom/sunrise/reader/n;

    invoke-static {v1}, Lcom/sunrise/reader/n;->b(Lcom/sunrise/reader/n;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sunrise/reader/o;->b:Lcom/sunrise/reader/m;

    new-instance v2, Lcom/sunrise/u/a;

    invoke-direct {v2}, Lcom/sunrise/u/a;-><init>()V

    const/16 v3, -0x70

    invoke-virtual {v2, v3}, Lcom/sunrise/u/a;->a(B)Lcom/sunrise/u/a;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sunrise/u/a;->c(B)Lcom/sunrise/u/a;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sunrise/reader/m;->a(Lcom/sunrise/u/a;)Lcom/sunrise/u/a;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sunrise/u/a;->f()B

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/sunrise/u/a;->b()[B

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/sunrise/u/a;->b()[B

    move-result-object v2

    array-length v2, v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/sunrise/u/a;->b()[B

    move-result-object v2

    array-length v2, v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/sunrise/reader/o;->a:Lcom/sunrise/reader/n;

    const/4 v2, -0x8

    invoke-static {v0, v2}, Lcom/sunrise/reader/n;->a(Lcom/sunrise/reader/n;I)I

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "\u6253\u5f00\u8eab\u4efd\u8bc1: \u5931\u8d25"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v0, "\u6253\u5f00\u8eab\u4efd\u8bc1: \u5931\u8d25"

    invoke-static {v0}, Lcom/sunrise/reader/r;->b(Ljava/lang/String;)V

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/sunrise/u/a;->a()[B

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_2

    const-string v0, "OTGReaderDrvier"

    invoke-virtual {v1}, Lcom/sunrise/u/a;->a()[B

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1}, Lcom/sunrise/u/a;->a()[B

    move-result-object v5

    array-length v5, v5

    invoke-static {v2, v3, v4, v5}, Lcom/sunrise/v/a;->a([BIII)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/String;

    invoke-virtual {v1}, Lcom/sunrise/u/a;->a()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0}, Lcom/sunrise/reader/r;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    :goto_1
    iget-object v0, p0, Lcom/sunrise/reader/o;->a:Lcom/sunrise/reader/n;

    invoke-static {v0}, Lcom/sunrise/reader/n;->l(Lcom/sunrise/reader/n;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/sunrise/reader/o;->a:Lcom/sunrise/reader/n;

    invoke-static {v0}, Lcom/sunrise/reader/n;->l(Lcom/sunrise/reader/n;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :goto_2
    return-void

    :cond_1
    :try_start_2
    new-instance v1, Lcom/sunrise/u/a;

    invoke-direct {v1}, Lcom/sunrise/u/a;-><init>()V

    iget-object v2, p0, Lcom/sunrise/reader/o;->a:Lcom/sunrise/reader/n;

    invoke-static {v2}, Lcom/sunrise/reader/n;->h(Lcom/sunrise/reader/n;)Lcom/sunrise/bluetooth/Reader;

    iget-object v2, p0, Lcom/sunrise/reader/o;->b:Lcom/sunrise/reader/m;

    invoke-static {v2}, Lcom/sunrise/bluetooth/Reader;->read_cmcc0(Ljava/lang/Object;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sunrise/u/a;->b([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    iget-object v0, p0, Lcom/sunrise/reader/o;->a:Lcom/sunrise/reader/n;

    const/4 v1, -0x6

    invoke-static {v0, v1}, Lcom/sunrise/reader/n;->a(Lcom/sunrise/reader/n;I)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    iget-object v0, p0, Lcom/sunrise/reader/o;->a:Lcom/sunrise/reader/n;

    invoke-static {v0}, Lcom/sunrise/reader/n;->l(Lcom/sunrise/reader/n;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_4
    iget-object v0, p0, Lcom/sunrise/reader/o;->a:Lcom/sunrise/reader/n;

    invoke-static {v0}, Lcom/sunrise/reader/n;->l(Lcom/sunrise/reader/n;)Ljava/lang/Object;

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

    :cond_2
    :try_start_5
    const-string v0, "OTGReaderDrvier"

    const-string v1, "OPENID REUTN NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "OPENID REUTN NULL"

    invoke-static {v0}, Lcom/sunrise/reader/r;->b(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, p0, Lcom/sunrise/reader/o;->a:Lcom/sunrise/reader/n;

    const/4 v1, -0x6

    invoke-static {v0, v1}, Lcom/sunrise/reader/n;->a(Lcom/sunrise/reader/n;I)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    iget-object v0, p0, Lcom/sunrise/reader/o;->a:Lcom/sunrise/reader/n;

    invoke-static {v0}, Lcom/sunrise/reader/n;->l(Lcom/sunrise/reader/n;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lcom/sunrise/reader/o;->a:Lcom/sunrise/reader/n;

    invoke-static {v0}, Lcom/sunrise/reader/n;->l(Lcom/sunrise/reader/n;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    goto :goto_2

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v0

    :cond_3
    :try_start_9
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "\u6253\u5f00\u8eab\u4efd\u8bc1: \u6210\u529f"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v2, "\u6253\u5f00\u8eab\u4efd\u8bc1: \u6210\u529f"

    invoke-static {v2}, Lcom/sunrise/reader/r;->b(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sunrise/reader/o;->c:Lcom/sunrise/reader/f;

    iget-object v3, p0, Lcom/sunrise/reader/o;->a:Lcom/sunrise/reader/n;

    invoke-static {v3}, Lcom/sunrise/reader/n;->a(Lcom/sunrise/reader/n;)Lcom/sunrise/reader/ManagerInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sunrise/reader/f;->a(Lcom/sunrise/reader/ManagerInfo;)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connect sam result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sunrise/reader/r;->b(Ljava/lang/String;)V

    if-lez v2, :cond_4

    iget-object v0, p0, Lcom/sunrise/reader/o;->a:Lcom/sunrise/reader/n;

    const/16 v1, -0xb

    invoke-static {v0, v1}, Lcom/sunrise/reader/n;->a(Lcom/sunrise/reader/n;I)I
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    iget-object v0, p0, Lcom/sunrise/reader/o;->a:Lcom/sunrise/reader/n;

    invoke-static {v0}, Lcom/sunrise/reader/n;->l(Lcom/sunrise/reader/n;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_a
    iget-object v0, p0, Lcom/sunrise/reader/o;->a:Lcom/sunrise/reader/n;

    invoke-static {v0}, Lcom/sunrise/reader/n;->l(Lcom/sunrise/reader/n;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    goto/16 :goto_2

    :catchall_3
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    throw v0

    :cond_4
    if-gez v2, :cond_5

    :try_start_b
    iget-object v0, p0, Lcom/sunrise/reader/o;->a:Lcom/sunrise/reader/n;

    const/16 v1, -0x9

    invoke-static {v0, v1}, Lcom/sunrise/reader/n;->a(Lcom/sunrise/reader/n;I)I

    iget-object v0, p0, Lcom/sunrise/reader/o;->a:Lcom/sunrise/reader/n;

    invoke-static {v0}, Lcom/sunrise/reader/n;->i(Lcom/sunrise/reader/n;)Lcom/sunrise/reader/ReaderManagerService;

    move-result-object v0

    iget-object v1, p0, Lcom/sunrise/reader/o;->c:Lcom/sunrise/reader/f;

    invoke-virtual {v1}, Lcom/sunrise/reader/f;->a()Lcom/sunrise/reader/ReaderServerInfo;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sunrise/reader/ReaderManagerService;->serverError(Lcom/sunrise/reader/ReaderServerInfo;I)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    iget-object v0, p0, Lcom/sunrise/reader/o;->a:Lcom/sunrise/reader/n;

    invoke-static {v0}, Lcom/sunrise/reader/n;->l(Lcom/sunrise/reader/n;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_c
    iget-object v0, p0, Lcom/sunrise/reader/o;->a:Lcom/sunrise/reader/n;

    invoke-static {v0}, Lcom/sunrise/reader/n;->l(Lcom/sunrise/reader/n;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    goto/16 :goto_2

    :catchall_4
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    throw v0

    :cond_5
    :try_start_d
    iget-object v2, p0, Lcom/sunrise/reader/o;->a:Lcom/sunrise/reader/n;

    invoke-static {v2}, Lcom/sunrise/reader/n;->j(Lcom/sunrise/reader/n;)Lcom/sunrise/reader/g;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/sunrise/reader/o;->a:Lcom/sunrise/reader/n;

    invoke-static {v2}, Lcom/sunrise/reader/n;->j(Lcom/sunrise/reader/n;)Lcom/sunrise/reader/g;

    move-result-object v2

    iget-object v3, p0, Lcom/sunrise/reader/o;->c:Lcom/sunrise/reader/f;

    invoke-virtual {v3}, Lcom/sunrise/reader/f;->a()Lcom/sunrise/reader/ReaderServerInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sunrise/reader/ReaderServerInfo;->host()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sunrise/reader/o;->c:Lcom/sunrise/reader/f;

    invoke-virtual {v4}, Lcom/sunrise/reader/f;->a()Lcom/sunrise/reader/ReaderServerInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sunrise/reader/ReaderServerInfo;->port()I

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/sunrise/reader/g;->a(Ljava/lang/String;I)V

    :cond_6
    :goto_3
    const/16 v2, 0x14

    if-gt v0, v2, :cond_7

    add-int/lit8 v2, v0, 0x1

    iget-object v0, p0, Lcom/sunrise/reader/o;->a:Lcom/sunrise/reader/n;

    invoke-static {v0}, Lcom/sunrise/reader/n;->g(Lcom/sunrise/reader/n;)Lcom/sunrise/reader/j;

    move-result-object v0

    const/16 v3, 0xb

    invoke-interface {v0, v3}, Lcom/sunrise/reader/j;->stateChanged(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v0, p0, Lcom/sunrise/reader/o;->c:Lcom/sunrise/reader/f;

    invoke-virtual {v0, v1}, Lcom/sunrise/reader/f;->a(Lcom/sunrise/u/a;)Lcom/sunrise/u/a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CMD:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sunrise/u/a;->d()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "SAM resStatus:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/sunrise/u/a;->f()B

    move-result v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    :goto_4
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sunrise/reader/r;->b(Ljava/lang/String;)V

    const-string v1, "OTGReaderDrvier"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CMD:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sunrise/u/a;->d()B

    move-result v6

    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ","

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "SAM resStatus:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sunrise/u/a;->f()B

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ",pkgLen:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sunrise/u/a;->e()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/sunrise/reader/o;->a:Lcom/sunrise/reader/n;

    const/4 v1, -0x3

    invoke-static {v0, v1}, Lcom/sunrise/reader/n;->a(Lcom/sunrise/reader/n;I)I

    const-string v0, "\u670d\u52a1\u5668\u5904\u7406\u5931\u8d25\uff1aERR_NET_ERROR"

    invoke-static {v0}, Lcom/sunrise/reader/r;->b(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    :cond_7
    :goto_5
    iget-object v0, p0, Lcom/sunrise/reader/o;->a:Lcom/sunrise/reader/n;

    invoke-static {v0}, Lcom/sunrise/reader/n;->l(Lcom/sunrise/reader/n;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_e
    iget-object v0, p0, Lcom/sunrise/reader/o;->a:Lcom/sunrise/reader/n;

    invoke-static {v0}, Lcom/sunrise/reader/n;->l(Lcom/sunrise/reader/n;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    goto/16 :goto_2

    :catchall_5
    move-exception v0

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    throw v0

    :cond_8
    const/4 v1, 0x0

    goto :goto_4

    :cond_9
    :try_start_f
    invoke-virtual {v0}, Lcom/sunrise/u/a;->f()B

    move-result v1

    if-eqz v1, :cond_a

    iget-object v0, p0, Lcom/sunrise/reader/o;->a:Lcom/sunrise/reader/n;

    const/4 v1, -0x5

    invoke-static {v0, v1}, Lcom/sunrise/reader/n;->a(Lcom/sunrise/reader/n;I)I

    const-string v0, "\u670d\u52a1\u5668\u5904\u7406\u5931\u8d25\uff1aERR_SAM_ERROR"

    invoke-static {v0}, Lcom/sunrise/reader/r;->b(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_0
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    goto :goto_5

    :catchall_6
    move-exception v0

    iget-object v1, p0, Lcom/sunrise/reader/o;->a:Lcom/sunrise/reader/n;

    invoke-static {v1}, Lcom/sunrise/reader/n;->l(Lcom/sunrise/reader/n;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_10
    iget-object v2, p0, Lcom/sunrise/reader/o;->a:Lcom/sunrise/reader/n;

    invoke-static {v2}, Lcom/sunrise/reader/n;->l(Lcom/sunrise/reader/n;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    throw v0

    :cond_a
    :try_start_11
    invoke-virtual {v0}, Lcom/sunrise/u/a;->d()B

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_b

    iget-object v0, p0, Lcom/sunrise/reader/o;->a:Lcom/sunrise/reader/n;

    const/4 v1, -0x5

    invoke-static {v0, v1}, Lcom/sunrise/reader/n;->a(Lcom/sunrise/reader/n;I)I

    goto :goto_5

    :cond_b
    invoke-virtual {v0}, Lcom/sunrise/u/a;->d()B

    move-result v1

    if-ne v1, v8, :cond_c

    iget-object v1, p0, Lcom/sunrise/reader/o;->a:Lcom/sunrise/reader/n;

    invoke-static {v1}, Lcom/sunrise/reader/n;->g(Lcom/sunrise/reader/n;)Lcom/sunrise/reader/j;

    move-result-object v1

    const/16 v3, 0xc

    invoke-interface {v1, v3}, Lcom/sunrise/reader/j;->stateChanged(I)V

    const-string v1, "\u670d\u52a1\u5668\u5904\u7406\uff1aSTATE_AUTH_ID"

    invoke-static {v1}, Lcom/sunrise/reader/r;->b(Ljava/lang/String;)V

    :cond_c
    invoke-virtual {v0}, Lcom/sunrise/u/a;->d()B

    move-result v1

    const/16 v3, -0x5b

    if-ne v1, v3, :cond_d

    iget-object v1, p0, Lcom/sunrise/reader/o;->a:Lcom/sunrise/reader/n;

    invoke-static {v1}, Lcom/sunrise/reader/n;->g(Lcom/sunrise/reader/n;)Lcom/sunrise/reader/j;

    move-result-object v1

    const/16 v3, 0xe

    invoke-interface {v1, v3}, Lcom/sunrise/reader/j;->stateChanged(I)V

    const-string v1, "\u670d\u52a1\u5668\u5904\u7406\uff1aSTATE_READ_INFO"

    invoke-static {v1}, Lcom/sunrise/reader/r;->b(Ljava/lang/String;)V

    :cond_d
    invoke-virtual {v0}, Lcom/sunrise/u/a;->d()B

    move-result v1

    const/16 v3, -0xe

    if-ne v1, v3, :cond_f

    const-string v1, "\u8eab\u4efd\u8bc1\u8bc6\u522b\u6210\u529f"

    invoke-static {v1}, Lcom/sunrise/reader/r;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sunrise/reader/o;->a:Lcom/sunrise/reader/n;

    invoke-static {v1}, Lcom/sunrise/reader/n;->g(Lcom/sunrise/reader/n;)Lcom/sunrise/reader/j;

    move-result-object v1

    const/16 v2, 0x10

    invoke-interface {v1, v2}, Lcom/sunrise/reader/j;->stateChanged(I)V

    invoke-virtual {v0}, Lcom/sunrise/u/a;->f()B

    move-result v1

    if-nez v1, :cond_e

    iget-object v1, p0, Lcom/sunrise/reader/o;->a:Lcom/sunrise/reader/n;

    invoke-static {v1, v0}, Lcom/sunrise/reader/n;->a(Lcom/sunrise/reader/n;Lcom/sunrise/u/a;)V

    iget-object v0, p0, Lcom/sunrise/reader/o;->a:Lcom/sunrise/reader/n;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sunrise/reader/n;->a(Lcom/sunrise/reader/n;I)I

    goto/16 :goto_5

    :cond_e
    iget-object v0, p0, Lcom/sunrise/reader/o;->a:Lcom/sunrise/reader/n;

    const/4 v1, -0x5

    invoke-static {v0, v1}, Lcom/sunrise/reader/n;->a(Lcom/sunrise/reader/n;I)I

    goto/16 :goto_5

    :cond_f
    invoke-virtual {v0}, Lcom/sunrise/u/a;->d()B

    move-result v1

    const/16 v3, -0xd

    if-ne v1, v3, :cond_11

    iget-object v1, p0, Lcom/sunrise/reader/o;->a:Lcom/sunrise/reader/n;

    invoke-static {v1}, Lcom/sunrise/reader/n;->g(Lcom/sunrise/reader/n;)Lcom/sunrise/reader/j;

    move-result-object v1

    const/16 v2, 0x10

    invoke-interface {v1, v2}, Lcom/sunrise/reader/j;->stateChanged(I)V

    invoke-virtual {v0}, Lcom/sunrise/u/a;->f()B

    move-result v1

    if-nez v1, :cond_10

    const-string v1, "\u8eab\u4efd\u8bc1\u8bc6\u522b\u6210\u529f"

    invoke-static {v1}, Lcom/sunrise/reader/r;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sunrise/reader/o;->a:Lcom/sunrise/reader/n;

    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/sunrise/u/a;->b()[B

    move-result-object v0

    const-string v3, "UTF-8"

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v2, v1, Lcom/sunrise/reader/n;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/sunrise/reader/o;->a:Lcom/sunrise/reader/n;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sunrise/reader/n;->a(Lcom/sunrise/reader/n;I)I

    iget-object v0, p0, Lcom/sunrise/reader/o;->a:Lcom/sunrise/reader/n;

    invoke-static {v0}, Lcom/sunrise/reader/n;->b(Lcom/sunrise/reader/n;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sunrise/reader/o;->a:Lcom/sunrise/reader/n;

    invoke-static {v0}, Lcom/sunrise/reader/n;->k(Lcom/sunrise/reader/n;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/sunrise/reader/o;->a:Lcom/sunrise/reader/n;

    invoke-static {v0}, Lcom/sunrise/reader/n;->k(Lcom/sunrise/reader/n;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "X-SR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/sunrise/reader/o;->b:Lcom/sunrise/reader/m;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Lcom/sunrise/reader/m;->send_cmd_to_reader([B)[B

    goto/16 :goto_5

    :cond_10
    const-string v0, "\u8eab\u4efd\u8bc1\u8bc6\u522b\u5931\u8d25:SAM\u5904\u7406\u5931\u8d25"

    invoke-static {v0}, Lcom/sunrise/reader/r;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sunrise/reader/o;->a:Lcom/sunrise/reader/n;

    const/4 v1, -0x5

    invoke-static {v0, v1}, Lcom/sunrise/reader/n;->a(Lcom/sunrise/reader/n;I)I

    goto/16 :goto_5

    :cond_11
    invoke-virtual {v0}, Lcom/sunrise/u/a;->d()B

    move-result v1

    const/16 v3, -0xc

    if-ne v1, v3, :cond_13

    iget-object v1, p0, Lcom/sunrise/reader/o;->a:Lcom/sunrise/reader/n;

    invoke-static {v1}, Lcom/sunrise/reader/n;->g(Lcom/sunrise/reader/n;)Lcom/sunrise/reader/j;

    move-result-object v1

    const/16 v2, 0x10

    invoke-interface {v1, v2}, Lcom/sunrise/reader/j;->stateChanged(I)V

    invoke-virtual {v0}, Lcom/sunrise/u/a;->f()B

    move-result v1

    if-nez v1, :cond_12

    const-string v1, "\u8eab\u4efd\u8bc1\u8bc6\u522b\u6210\u529f"

    invoke-static {v1}, Lcom/sunrise/reader/r;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sunrise/reader/o;->a:Lcom/sunrise/reader/n;

    invoke-static {v1, v0}, Lcom/sunrise/reader/n;->a(Lcom/sunrise/reader/n;Lcom/sunrise/u/a;)V

    iget-object v0, p0, Lcom/sunrise/reader/o;->a:Lcom/sunrise/reader/n;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sunrise/reader/n;->a(Lcom/sunrise/reader/n;I)I

    goto/16 :goto_5

    :cond_12
    const-string v0, "\u8eab\u4efd\u8bc1\u8bc6\u522b\u5931\u8d25:SAM\u5904\u7406\u5931\u8d25"

    invoke-static {v0}, Lcom/sunrise/reader/r;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sunrise/reader/o;->a:Lcom/sunrise/reader/n;

    const/4 v1, -0x5

    invoke-static {v0, v1}, Lcom/sunrise/reader/n;->a(Lcom/sunrise/reader/n;I)I

    goto/16 :goto_5

    :cond_13
    iget-object v1, p0, Lcom/sunrise/reader/o;->a:Lcom/sunrise/reader/n;

    invoke-static {v1}, Lcom/sunrise/reader/n;->b(Lcom/sunrise/reader/n;)Z

    move-result v1

    if-nez v1, :cond_16

    iget-object v1, p0, Lcom/sunrise/reader/o;->b:Lcom/sunrise/reader/m;

    invoke-virtual {v1, v0}, Lcom/sunrise/reader/m;->a(Lcom/sunrise/u/a;)Lcom/sunrise/u/a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CMD:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sunrise/u/a;->d()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "Reader resStatus:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/sunrise/u/a;->f()B

    move-result v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    :goto_6
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sunrise/reader/r;->b(Ljava/lang/String;)V

    const-string v1, "OTGReaderDrvier"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CMD:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sunrise/u/a;->d()B

    move-result v6

    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ","

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "Reader resStatus:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sunrise/u/a;->f()B

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ",pkgLen:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sunrise/u/a;->e()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lcom/sunrise/u/a;->f()B

    move-result v1

    if-eqz v1, :cond_16

    :cond_14
    iget-object v0, p0, Lcom/sunrise/reader/o;->a:Lcom/sunrise/reader/n;

    const/4 v1, -0x6

    invoke-static {v0, v1}, Lcom/sunrise/reader/n;->a(Lcom/sunrise/reader/n;I)I

    const-string v0, "\u5176\u4ed6\u9605\u8bfb\u5668\u9519\u8bef"

    invoke-static {v0}, Lcom/sunrise/reader/r;->b(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_15
    const/4 v1, 0x0

    goto :goto_6

    :cond_16
    invoke-virtual {v0}, Lcom/sunrise/u/a;->d()B

    move-result v1

    if-ne v1, v8, :cond_18

    iget-object v1, p0, Lcom/sunrise/reader/o;->a:Lcom/sunrise/reader/n;

    invoke-static {v1}, Lcom/sunrise/reader/n;->b(Lcom/sunrise/reader/n;)Z

    move-result v1

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/sunrise/reader/o;->a:Lcom/sunrise/reader/n;

    invoke-static {v1}, Lcom/sunrise/reader/n;->h(Lcom/sunrise/reader/n;)Lcom/sunrise/bluetooth/Reader;

    iget-object v1, p0, Lcom/sunrise/reader/o;->b:Lcom/sunrise/reader/m;

    invoke-virtual {v0}, Lcom/sunrise/u/a;->a()[B

    move-result-object v3

    invoke-static {v1, v3}, Lcom/sunrise/bluetooth/Reader;->read_cmcc2(Ljava/lang/Object;[B)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sunrise/u/a;->b([B)V

    :cond_17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v4, v6, v4

    invoke-direct {p0, v4, v5}, Lcom/sunrise/reader/o;->a(J)V

    const-string v1, "\u670d\u52a1\u5668\u5904\u7406\uff1aSTATE_AUTH_ID_SAM"

    invoke-static {v1}, Lcom/sunrise/reader/r;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sunrise/reader/o;->a:Lcom/sunrise/reader/n;

    invoke-static {v1}, Lcom/sunrise/reader/n;->g(Lcom/sunrise/reader/n;)Lcom/sunrise/reader/j;

    move-result-object v1

    const/16 v3, 0xd

    invoke-interface {v1, v3}, Lcom/sunrise/reader/j;->stateChanged(I)V

    :cond_18
    invoke-virtual {v0}, Lcom/sunrise/u/a;->d()B

    move-result v1

    const/16 v3, -0x5b

    if-ne v1, v3, :cond_1a

    iget-object v1, p0, Lcom/sunrise/reader/o;->a:Lcom/sunrise/reader/n;

    invoke-static {v1}, Lcom/sunrise/reader/n;->b(Lcom/sunrise/reader/n;)Z

    move-result v1

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/sunrise/reader/o;->a:Lcom/sunrise/reader/n;

    invoke-static {v1}, Lcom/sunrise/reader/n;->h(Lcom/sunrise/reader/n;)Lcom/sunrise/bluetooth/Reader;

    iget-object v1, p0, Lcom/sunrise/reader/o;->b:Lcom/sunrise/reader/m;

    invoke-virtual {v0}, Lcom/sunrise/u/a;->a()[B

    move-result-object v3

    invoke-static {v1, v3}, Lcom/sunrise/bluetooth/Reader;->read_cmcc3(Ljava/lang/Object;[B)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sunrise/u/a;->b([B)V

    :cond_19
    const-string v1, "\u670d\u52a1\u5668\u5904\u7406\uff1aSTATE_READ_INFO_SAM"

    invoke-static {v1}, Lcom/sunrise/reader/r;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sunrise/reader/o;->a:Lcom/sunrise/reader/n;

    invoke-static {v1}, Lcom/sunrise/reader/n;->g(Lcom/sunrise/reader/n;)Lcom/sunrise/reader/j;

    move-result-object v1

    const/16 v3, 0xf

    invoke-interface {v1, v3}, Lcom/sunrise/reader/j;->stateChanged(I)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_0
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_1
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    :cond_1a
    move-object v1, v0

    move v0, v2

    goto/16 :goto_3

    :catchall_7
    move-exception v0

    :try_start_12
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    throw v0

    nop

    :array_0
    .array-data 1
        0xbt
        0x0t
        0x0t
        0x5t
        0x0t
    .end array-data
.end method
