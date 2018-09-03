.class Lcom/sunrise/reader/c$1;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sunrise/reader/c;->a(J)I
.end annotation


# instance fields
.field final synthetic a:[I

.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:Lcom/sunrise/reader/c;


# direct methods
.method constructor <init>(Lcom/sunrise/reader/c;[ILjava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/sunrise/reader/c$1;->c:Lcom/sunrise/reader/c;

    iput-object p2, p0, Lcom/sunrise/reader/c$1;->a:[I

    iput-object p3, p0, Lcom/sunrise/reader/c$1;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/sunrise/reader/c$1;->c:Lcom/sunrise/reader/c;

    invoke-static {v0}, Lcom/sunrise/reader/c;->a(Lcom/sunrise/reader/c;)Lcom/sunrise/reader/ManagerInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sunrise/reader/ManagerInfo;->accessAccount()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sunrise/reader/c$1;->c:Lcom/sunrise/reader/c;

    invoke-static {v0}, Lcom/sunrise/reader/c;->a(Lcom/sunrise/reader/c;)Lcom/sunrise/reader/ManagerInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sunrise/reader/ManagerInfo;->accessAccount()Ljava/lang/String;

    move-result-object v0

    const-string v1, "china_telecom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sunrise/reader/c$1;->c:Lcom/sunrise/reader/c;

    invoke-virtual {v0}, Lcom/sunrise/reader/c;->g()[B

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sunrise/reader/c$1;->c:Lcom/sunrise/reader/c;

    invoke-static {v0}, Lcom/sunrise/reader/c;->a(Lcom/sunrise/reader/c;)Lcom/sunrise/reader/ManagerInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sunrise/reader/ManagerInfo;->theSetServer()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunrise/reader/ReaderServerInfo;

    iget-object v2, p0, Lcom/sunrise/reader/c$1;->c:Lcom/sunrise/reader/c;

    invoke-virtual {v0}, Lcom/sunrise/reader/ReaderServerInfo;->host()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sunrise/reader/ReaderServerInfo;->port()I

    move-result v0

    invoke-static {v2, v1, v3, v0}, Lcom/sunrise/reader/c;->a(Lcom/sunrise/reader/c;[BLjava/lang/String;I)[B

    move-result-object v0

    iget-object v1, p0, Lcom/sunrise/reader/c$1;->c:Lcom/sunrise/reader/c;

    invoke-virtual {v1, v0}, Lcom/sunrise/reader/c;->a([B)V

    :cond_0
    iget-object v0, p0, Lcom/sunrise/reader/c$1;->a:[I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sunrise/reader/c$1;->c:Lcom/sunrise/reader/c;

    invoke-static {v2}, Lcom/sunrise/reader/c;->b(Lcom/sunrise/reader/c;)I

    move-result v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/sunrise/reader/c$1;->c:Lcom/sunrise/reader/c;

    invoke-static {v0}, Lcom/sunrise/reader/c;->d(Lcom/sunrise/reader/c;)Lcom/sunrise/reader/h;

    move-result-object v0

    iget-object v1, p0, Lcom/sunrise/reader/c$1;->c:Lcom/sunrise/reader/c;

    invoke-static {v1}, Lcom/sunrise/reader/c;->c(Lcom/sunrise/reader/c;)J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/sunrise/reader/h;->onNetDelayChange(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/sunrise/reader/c$1;->b:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    iget-object v0, p0, Lcom/sunrise/reader/c$1;->c:Lcom/sunrise/reader/c;

    invoke-virtual {v0}, Lcom/sunrise/reader/c;->a()V

    iget-object v0, p0, Lcom/sunrise/reader/c$1;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
