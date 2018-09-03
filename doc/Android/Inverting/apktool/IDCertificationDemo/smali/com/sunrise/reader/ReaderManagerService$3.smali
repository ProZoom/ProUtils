.class Lcom/sunrise/reader/ReaderManagerService$3;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sunrise/reader/ReaderManagerService;->checkNetwork(Ljava/util/List;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/sunrise/reader/ReaderServerInfo;

.field final synthetic b:Lcom/sunrise/reader/t;

.field final synthetic c:Lcom/sunrise/reader/ReaderManagerService;


# direct methods
.method constructor <init>(Lcom/sunrise/reader/ReaderManagerService;Lcom/sunrise/reader/ReaderServerInfo;Lcom/sunrise/reader/t;)V
    .locals 0

    iput-object p1, p0, Lcom/sunrise/reader/ReaderManagerService$3;->c:Lcom/sunrise/reader/ReaderManagerService;

    iput-object p2, p0, Lcom/sunrise/reader/ReaderManagerService$3;->a:Lcom/sunrise/reader/ReaderServerInfo;

    iput-object p3, p0, Lcom/sunrise/reader/ReaderManagerService$3;->b:Lcom/sunrise/reader/t;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :goto_0
    iget-object v0, p0, Lcom/sunrise/reader/ReaderManagerService$3;->c:Lcom/sunrise/reader/ReaderManagerService;

    iget-boolean v0, v0, Lcom/sunrise/reader/ReaderManagerService;->a:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-static {v0, v1}, Lcom/sunrise/reader/ReaderManagerService$3;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sunrise/reader/ReaderManagerService$3;->c:Lcom/sunrise/reader/ReaderManagerService;

    iget-object v1, p0, Lcom/sunrise/reader/ReaderManagerService$3;->a:Lcom/sunrise/reader/ReaderServerInfo;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/sunrise/reader/ReaderManagerService;->checkServerNetWork(Lcom/sunrise/reader/ReaderServerInfo;I)I

    move-result v0

    iget-object v1, p0, Lcom/sunrise/reader/ReaderManagerService$3;->a:Lcom/sunrise/reader/ReaderServerInfo;

    if-gtz v0, :cond_1

    const v0, 0x7fffffff

    :cond_1
    invoke-virtual {v1, v0}, Lcom/sunrise/reader/ReaderServerInfo;->priority(I)Lcom/sunrise/reader/ReaderServerInfo;

    invoke-static {}, Lcom/sunrise/reader/ReaderManagerService;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u7f51\u7edc\u68c0\u6d4b\u7ed3\u679c  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sunrise/reader/ReaderManagerService$3;->a:Lcom/sunrise/reader/ReaderServerInfo;

    invoke-virtual {v2}, Lcom/sunrise/reader/ReaderServerInfo;->host()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   \t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sunrise/reader/ReaderManagerService$3;->a:Lcom/sunrise/reader/ReaderServerInfo;

    invoke-virtual {v2}, Lcom/sunrise/reader/ReaderServerInfo;->priority()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u6beb\u79d2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sunrise/reader/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sunrise/reader/ReaderManagerService$3;->b:Lcom/sunrise/reader/t;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/sunrise/reader/ReaderManagerService$3;->b:Lcom/sunrise/reader/t;

    invoke-virtual {v0}, Lcom/sunrise/reader/t;->a()V

    iget-object v0, p0, Lcom/sunrise/reader/ReaderManagerService$3;->b:Lcom/sunrise/reader/t;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
