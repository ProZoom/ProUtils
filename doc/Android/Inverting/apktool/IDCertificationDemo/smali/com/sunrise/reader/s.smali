.class Lcom/sunrise/reader/s;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/sunrise/reader/ReaderManagerService;


# direct methods
.method public constructor <init>(Lcom/sunrise/reader/ReaderManagerService;)V
    .locals 1

    iput-object p1, p0, Lcom/sunrise/reader/s;->a:Lcom/sunrise/reader/ReaderManagerService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const-string v0, "BACKGROUND-NET-CHACK-THREAD"

    invoke-virtual {p0, v0}, Lcom/sunrise/reader/s;->setName(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/sunrise/reader/ReaderManagerService;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u8fdb\u5165\u7ba1\u63a7\u7ebf\u7a0b"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "\u8fdb\u5165\u7ba1\u63a7\u7ebf\u7a0b"

    invoke-static {v0}, Lcom/sunrise/reader/r;->b(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/sunrise/reader/s;->a:Lcom/sunrise/reader/ReaderManagerService;

    invoke-static {v0}, Lcom/sunrise/reader/ReaderManagerService;->access$700(Lcom/sunrise/reader/ReaderManagerService;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sunrise/reader/s;->a:Lcom/sunrise/reader/ReaderManagerService;

    invoke-static {}, Lcom/sunrise/reader/ReaderManagerService;->access$800()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sunrise/reader/ReaderManagerService;->access$000(Lcom/sunrise/reader/ReaderManagerService;Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-eqz v0, :cond_3

    const-wide/16 v0, 0xbb8

    :try_start_1
    invoke-static {v0, v1}, Lcom/sunrise/reader/s;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    invoke-static {}, Lcom/sunrise/reader/ReaderManagerService;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u7ba1\u63a7\u7ebf\u7a0b\u8dd1\u8d77"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "\u7ba1\u63a7\u7ebf\u7a0b\u8dd1\u8d77"

    invoke-static {v0}, Lcom/sunrise/reader/r;->b(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/sunrise/reader/s;->a:Lcom/sunrise/reader/ReaderManagerService;

    invoke-static {v2}, Lcom/sunrise/reader/ReaderManagerService;->access$100(Lcom/sunrise/reader/ReaderManagerService;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/sunrise/reader/s;->a:Lcom/sunrise/reader/ReaderManagerService;

    invoke-static {v2}, Lcom/sunrise/reader/ReaderManagerService;->access$900(Lcom/sunrise/reader/ReaderManagerService;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/sunrise/reader/s;->a:Lcom/sunrise/reader/ReaderManagerService;

    invoke-static {v0}, Lcom/sunrise/reader/ReaderManagerService;->access$1000(Lcom/sunrise/reader/ReaderManagerService;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sunrise/reader/s;->a:Lcom/sunrise/reader/ReaderManagerService;

    invoke-static {v0}, Lcom/sunrise/reader/ReaderManagerService;->access$1000(Lcom/sunrise/reader/ReaderManagerService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sunrise/reader/s;->a:Lcom/sunrise/reader/ReaderManagerService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sunrise/reader/ReaderManagerService;->getService(Z)I

    iget-object v0, p0, Lcom/sunrise/reader/s;->a:Lcom/sunrise/reader/ReaderManagerService;

    invoke-static {v0}, Lcom/sunrise/reader/ReaderManagerService;->access$1100(Lcom/sunrise/reader/ReaderManagerService;)V

    iget-object v0, p0, Lcom/sunrise/reader/s;->a:Lcom/sunrise/reader/ReaderManagerService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/sunrise/reader/ReaderManagerService;->access$102(Lcom/sunrise/reader/ReaderManagerService;J)J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/sunrise/reader/s;->a:Lcom/sunrise/reader/ReaderManagerService;

    invoke-static {v0}, Lcom/sunrise/reader/ReaderManagerService;->access$300(Lcom/sunrise/reader/ReaderManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :try_start_4
    iget-object v0, p0, Lcom/sunrise/reader/s;->a:Lcom/sunrise/reader/ReaderManagerService;

    invoke-static {v0}, Lcom/sunrise/reader/ReaderManagerService;->access$300(Lcom/sunrise/reader/ReaderManagerService;)Ljava/lang/Object;

    move-result-object v0

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :catch_0
    move-exception v0

    :try_start_6
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    invoke-static {}, Lcom/sunrise/reader/ReaderManagerService;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u9000\u51fa\u7ba1\u63a7\u7cfb\u7edf"

    invoke-static {v0, v1}, Lcom/sunrise/reader/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_2
    move-exception v0

    :try_start_7
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    :cond_3
    const-string v0, "\u7f51\u7edc\u4e0d\u53ef\u7528"

    invoke-static {v0}, Lcom/sunrise/reader/r;->b(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_0
.end method
