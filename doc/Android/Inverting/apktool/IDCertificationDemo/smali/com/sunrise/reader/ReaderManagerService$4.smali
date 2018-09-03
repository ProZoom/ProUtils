.class Lcom/sunrise/reader/ReaderManagerService$4;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sunrise/reader/ReaderManagerService;->checkPreferServerNetwork()V
.end annotation


# instance fields
.field final synthetic a:Lcom/sunrise/reader/ReaderManagerService;


# direct methods
.method constructor <init>(Lcom/sunrise/reader/ReaderManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/sunrise/reader/ReaderManagerService$4;->a:Lcom/sunrise/reader/ReaderManagerService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/sunrise/reader/ReaderManagerService$4;->a:Lcom/sunrise/reader/ReaderManagerService;

    invoke-static {v0}, Lcom/sunrise/reader/ReaderManagerService;->access$500(Lcom/sunrise/reader/ReaderManagerService;)Lcom/sunrise/reader/ManagerInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sunrise/reader/ReaderManagerService$4;->a:Lcom/sunrise/reader/ReaderManagerService;

    invoke-static {v0}, Lcom/sunrise/reader/ReaderManagerService;->access$500(Lcom/sunrise/reader/ReaderManagerService;)Lcom/sunrise/reader/ManagerInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sunrise/reader/ManagerInfo;->preferServer()Lcom/sunrise/reader/ReaderServerInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/sunrise/u/b;

    invoke-direct {v0}, Lcom/sunrise/u/b;-><init>()V

    const-string v2, "SEND_TIME"

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/sunrise/u/b;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/sunrise/u/b;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lcom/sunrise/u/b;->a(B)Lcom/sunrise/u/a;

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Lcom/sunrise/reader/ReaderManagerService;->access$400()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u6b63\u5728\u8fdb\u884c\u9884\u8bbe\u670d\u52a1\u5668\u68c0\u6d4b\uff1a "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/sunrise/reader/ReaderServerInfo;->host()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/sunrise/reader/ReaderServerInfo;->mport()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sunrise/reader/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sunrise/reader/ReaderManagerService$4;->a:Lcom/sunrise/reader/ReaderManagerService;

    invoke-virtual {v1}, Lcom/sunrise/reader/ReaderServerInfo;->host()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/sunrise/reader/ReaderServerInfo;->mport()I

    move-result v6

    invoke-static {v4, v0, v5, v6}, Lcom/sunrise/reader/ReaderManagerService;->access$600(Lcom/sunrise/reader/ReaderManagerService;Lcom/sunrise/u/a;Ljava/lang/String;I)Lcom/sunrise/u/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    long-to-int v0, v2

    invoke-virtual {v1, v0}, Lcom/sunrise/reader/ReaderServerInfo;->priority(I)Lcom/sunrise/reader/ReaderServerInfo;

    invoke-static {}, Lcom/sunrise/reader/ReaderManagerService;->access$400()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u68c0\u67e5\u6210\u529f:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/sunrise/reader/l;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const v2, 0x7fffffff

    invoke-virtual {v1, v2}, Lcom/sunrise/reader/ReaderServerInfo;->priority(I)Lcom/sunrise/reader/ReaderServerInfo;

    invoke-static {}, Lcom/sunrise/reader/ReaderManagerService;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u68c0\u67e5\u5931\u8d25"

    invoke-static {v1, v2}, Lcom/sunrise/reader/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sunrise/reader/ReaderManagerService;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u68c0\u67e5\u5931\u8d25"

    invoke-static {v1, v2, v0}, Lcom/sunrise/reader/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method
