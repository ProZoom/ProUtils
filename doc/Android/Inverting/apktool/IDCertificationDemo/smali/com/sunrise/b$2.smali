.class Lcom/sunrise/b$2;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sunrise/b;->a()V
.end annotation


# instance fields
.field final synthetic a:Lcom/sunrise/b;


# direct methods
.method constructor <init>(Lcom/sunrise/b;)V
    .locals 0

    iput-object p1, p0, Lcom/sunrise/b$2;->a:Lcom/sunrise/b;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v1, 0x0

    const/4 v5, -0x8

    :try_start_0
    iget-object v0, p0, Lcom/sunrise/b$2;->a:Lcom/sunrise/b;

    invoke-static {v0}, Lcom/sunrise/b;->c(Lcom/sunrise/b;)Lcom/sunrise/reader/ManagerInfo;

    move-result-object v0

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lcom/sunrise/reader/ManagerInfo;->setConnectMethod(I)Lcom/sunrise/reader/ManagerInfo;

    iget-object v0, p0, Lcom/sunrise/b$2;->a:Lcom/sunrise/b;

    invoke-static {v0}, Lcom/sunrise/b;->c(Lcom/sunrise/b;)Lcom/sunrise/reader/ManagerInfo;

    move-result-object v0

    iget-object v2, p0, Lcom/sunrise/b$2;->a:Lcom/sunrise/b;

    invoke-static {v2}, Lcom/sunrise/b;->d(Lcom/sunrise/b;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sunrise/reader/u;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sunrise/reader/ManagerInfo;->deviceSn(Ljava/lang/String;)Lcom/sunrise/reader/ManagerInfo;

    iget-object v0, p0, Lcom/sunrise/b$2;->a:Lcom/sunrise/b;

    invoke-static {v0}, Lcom/sunrise/b;->c(Lcom/sunrise/b;)Lcom/sunrise/reader/ManagerInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sunrise/reader/ManagerInfo;->theSetServer()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunrise/reader/ReaderServerInfo;

    invoke-static {}, Lcom/sunrise/reader/GuidUtils;->getInstance()Lcom/sunrise/reader/GuidUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sunrise/reader/GuidUtils;->clearUUID()V

    iget-object v2, p0, Lcom/sunrise/b$2;->a:Lcom/sunrise/b;

    const/16 v3, -0x63

    iput v3, v2, Lcom/sunrise/b;->a:I

    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/sunrise/b$2;->a:Lcom/sunrise/b;

    invoke-static {v2}, Lcom/sunrise/b;->e(Lcom/sunrise/b;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "nfcSend"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v2, p0, Lcom/sunrise/b$2;->a:Lcom/sunrise/b;

    iget-boolean v2, v2, Lcom/sunrise/b;->d:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/sunrise/b$2;->a:Lcom/sunrise/b;

    invoke-static {v2}, Lcom/sunrise/b;->f(Lcom/sunrise/b;)Landroid/nfc/tech/NfcB;

    move-result-object v2

    invoke-virtual {v2}, Landroid/nfc/tech/NfcB;->isConnected()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sunrise/b$2;->a:Lcom/sunrise/b;

    invoke-static {v2}, Lcom/sunrise/b;->f(Lcom/sunrise/b;)Landroid/nfc/tech/NfcB;

    move-result-object v2

    invoke-virtual {v2}, Landroid/nfc/tech/NfcB;->connect()V

    :cond_0
    iget-object v2, p0, Lcom/sunrise/b$2;->a:Lcom/sunrise/b;

    new-instance v3, Lcom/sunrise/nfc/NormalNfcReadaer;

    iget-object v4, p0, Lcom/sunrise/b$2;->a:Lcom/sunrise/b;

    invoke-static {v4}, Lcom/sunrise/b;->f(Lcom/sunrise/b;)Landroid/nfc/tech/NfcB;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/sunrise/nfc/NormalNfcReadaer;-><init>(Landroid/nfc/tech/NfcB;)V

    invoke-static {v2, v3}, Lcom/sunrise/b;->a(Lcom/sunrise/b;Lcom/sunrise/nfc/NormalNfcReadaer;)Lcom/sunrise/nfc/NormalNfcReadaer;

    iget-object v2, p0, Lcom/sunrise/b$2;->a:Lcom/sunrise/b;

    invoke-static {v2}, Lcom/sunrise/b;->g(Lcom/sunrise/b;)Lcom/sunrise/nfc/NormalNfcReadaer;

    move-result-object v2

    invoke-static {}, Lcom/sunrise/b;->c()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sunrise/nfc/NormalNfcReadaer;->transceive([B)[B

    move-result-object v2

    if-nez v2, :cond_2

    iget-object v0, p0, Lcom/sunrise/b$2;->a:Lcom/sunrise/b;

    const/4 v1, -0x8

    iput v1, v0, Lcom/sunrise/b;->a:I
    :try_end_1
    .catch Landroid/nfc/TagLostException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :cond_1
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/sunrise/b$2;->a:Lcom/sunrise/b;

    invoke-static {v0}, Lcom/sunrise/b;->h(Lcom/sunrise/b;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :try_start_3
    iget-object v0, p0, Lcom/sunrise/b$2;->a:Lcom/sunrise/b;

    invoke-static {v0}, Lcom/sunrise/b;->h(Lcom/sunrise/b;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v0, p0, Lcom/sunrise/b$2;->a:Lcom/sunrise/b;

    invoke-static {v0}, Lcom/sunrise/b;->f(Lcom/sunrise/b;)Landroid/nfc/tech/NfcB;

    move-result-object v0

    invoke-virtual {v0}, Landroid/nfc/tech/NfcB;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :goto_2
    return-void

    :cond_2
    :try_start_5
    array-length v2, v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/sunrise/b$2;->a:Lcom/sunrise/b;

    invoke-static {v2}, Lcom/sunrise/b;->g(Lcom/sunrise/b;)Lcom/sunrise/nfc/NormalNfcReadaer;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/sunrise/nfc/NormalNfcReadaer;->changeFlagByTest(I)V

    :cond_3
    :goto_3
    iget-object v2, p0, Lcom/sunrise/b$2;->a:Lcom/sunrise/b;

    invoke-static {v2, v0}, Lcom/sunrise/b;->a(Lcom/sunrise/b;Lcom/sunrise/reader/ReaderServerInfo;)[B

    iget-object v2, p0, Lcom/sunrise/b$2;->a:Lcom/sunrise/b;

    iget v2, v2, Lcom/sunrise/b;->a:I

    if-gez v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_4
    iget-object v2, p0, Lcom/sunrise/b$2;->a:Lcom/sunrise/b;

    invoke-static {v2}, Lcom/sunrise/b;->g(Lcom/sunrise/b;)Lcom/sunrise/nfc/NormalNfcReadaer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sunrise/nfc/NormalNfcReadaer;->changeFlagByTest(I)V
    :try_end_5
    .catch Landroid/nfc/TagLostException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_3

    :catch_0
    move-exception v0

    :try_start_6
    iget-object v0, p0, Lcom/sunrise/b$2;->a:Lcom/sunrise/b;

    const/4 v1, -0x8

    iput v1, v0, Lcom/sunrise/b;->a:I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_7
    invoke-static {v0}, Lcom/sunrise/p/d;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sunrise/reader/r;->b(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, p0, Lcom/sunrise/b$2;->a:Lcom/sunrise/b;

    const/4 v1, -0x8

    iput v1, v0, Lcom/sunrise/b;->a:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    iget-object v0, p0, Lcom/sunrise/b$2;->a:Lcom/sunrise/b;

    invoke-static {v0}, Lcom/sunrise/b;->h(Lcom/sunrise/b;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    :try_start_9
    iget-object v0, p0, Lcom/sunrise/b$2;->a:Lcom/sunrise/b;

    invoke-static {v0}, Lcom/sunrise/b;->h(Lcom/sunrise/b;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    iget-object v0, p0, Lcom/sunrise/b$2;->a:Lcom/sunrise/b;

    invoke-static {v0}, Lcom/sunrise/b;->f(Lcom/sunrise/b;)Landroid/nfc/tech/NfcB;

    move-result-object v0

    invoke-virtual {v0}, Landroid/nfc/tech/NfcB;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    iget-object v0, p0, Lcom/sunrise/b$2;->a:Lcom/sunrise/b;

    iput v5, v0, Lcom/sunrise/b;->a:I

    goto :goto_2

    :catchall_0
    move-exception v0

    :try_start_b
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :try_start_c
    throw v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3

    :catch_3
    move-exception v0

    iget-object v0, p0, Lcom/sunrise/b$2;->a:Lcom/sunrise/b;

    iput v5, v0, Lcom/sunrise/b;->a:I

    goto :goto_2

    :catchall_1
    move-exception v0

    :try_start_d
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :try_start_e
    throw v0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_2

    :catchall_2
    move-exception v0

    :try_start_f
    iget-object v1, p0, Lcom/sunrise/b$2;->a:Lcom/sunrise/b;

    invoke-static {v1}, Lcom/sunrise/b;->h(Lcom/sunrise/b;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_4

    :try_start_10
    iget-object v1, p0, Lcom/sunrise/b$2;->a:Lcom/sunrise/b;

    invoke-static {v1}, Lcom/sunrise/b;->h(Lcom/sunrise/b;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    :try_start_11
    iget-object v1, p0, Lcom/sunrise/b$2;->a:Lcom/sunrise/b;

    invoke-static {v1}, Lcom/sunrise/b;->f(Lcom/sunrise/b;)Landroid/nfc/tech/NfcB;

    move-result-object v1

    invoke-virtual {v1}, Landroid/nfc/tech/NfcB;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_4

    :goto_4
    throw v0

    :catchall_3
    move-exception v1

    :try_start_12
    monitor-exit v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    :try_start_13
    throw v1
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_4

    :catch_4
    move-exception v1

    iget-object v1, p0, Lcom/sunrise/b$2;->a:Lcom/sunrise/b;

    iput v5, v1, Lcom/sunrise/b;->a:I

    goto :goto_4
.end method
