.class Lcom/sunrise/reader/ReaderManagerService$1;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sunrise/reader/ReaderManagerService;
.end annotation


# instance fields
.field final synthetic a:Lcom/sunrise/reader/ReaderManagerService;


# direct methods
.method constructor <init>(Lcom/sunrise/reader/ReaderManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/sunrise/reader/ReaderManagerService$1;->a:Lcom/sunrise/reader/ReaderManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/sunrise/reader/ReaderManagerService$1;->a:Lcom/sunrise/reader/ReaderManagerService;

    invoke-static {v0, p1}, Lcom/sunrise/reader/ReaderManagerService;->access$000(Lcom/sunrise/reader/ReaderManagerService;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sunrise/reader/ReaderManagerService$1;->a:Lcom/sunrise/reader/ReaderManagerService;

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/sunrise/reader/ReaderManagerService;->access$102(Lcom/sunrise/reader/ReaderManagerService;J)J

    iget-object v0, p0, Lcom/sunrise/reader/ReaderManagerService$1;->a:Lcom/sunrise/reader/ReaderManagerService;

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/sunrise/reader/ReaderManagerService;->access$202(Lcom/sunrise/reader/ReaderManagerService;J)J

    iget-object v0, p0, Lcom/sunrise/reader/ReaderManagerService$1;->a:Lcom/sunrise/reader/ReaderManagerService;

    invoke-static {v0}, Lcom/sunrise/reader/ReaderManagerService;->access$300(Lcom/sunrise/reader/ReaderManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/sunrise/reader/ReaderManagerService$1;->a:Lcom/sunrise/reader/ReaderManagerService;

    invoke-static {v0}, Lcom/sunrise/reader/ReaderManagerService;->access$300(Lcom/sunrise/reader/ReaderManagerService;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/sunrise/reader/ReaderManagerService;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u68c0\u67e5\u5931\u8d25"

    invoke-static {v1, v2, v0}, Lcom/sunrise/reader/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method
