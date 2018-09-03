.class Lcom/sunrise/reader/n$1;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sunrise/reader/n;->a(J)I
.end annotation


# instance fields
.field final synthetic a:[I

.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:Lcom/sunrise/reader/n;


# direct methods
.method constructor <init>(Lcom/sunrise/reader/n;[ILjava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/sunrise/reader/n$1;->c:Lcom/sunrise/reader/n;

    iput-object p2, p0, Lcom/sunrise/reader/n$1;->a:[I

    iput-object p3, p0, Lcom/sunrise/reader/n$1;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/sunrise/reader/n$1;->c:Lcom/sunrise/reader/n;

    invoke-static {v0}, Lcom/sunrise/reader/n;->a(Lcom/sunrise/reader/n;)Lcom/sunrise/reader/ManagerInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sunrise/reader/ManagerInfo;->accessAccount()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sunrise/reader/n$1;->c:Lcom/sunrise/reader/n;

    invoke-static {v0}, Lcom/sunrise/reader/n;->a(Lcom/sunrise/reader/n;)Lcom/sunrise/reader/ManagerInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sunrise/reader/ManagerInfo;->accessAccount()Ljava/lang/String;

    move-result-object v0

    const-string v1, "china_telecom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sunrise/reader/n$1;->c:Lcom/sunrise/reader/n;

    iget-object v1, p0, Lcom/sunrise/reader/n$1;->c:Lcom/sunrise/reader/n;

    invoke-virtual {v1}, Lcom/sunrise/reader/n;->g()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/sunrise/reader/n;->a(Lcom/sunrise/reader/n;Z)Z

    iget-object v0, p0, Lcom/sunrise/reader/n$1;->c:Lcom/sunrise/reader/n;

    invoke-static {v0}, Lcom/sunrise/reader/n;->b(Lcom/sunrise/reader/n;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "N"

    invoke-static {v0}, Lcom/sunrise/reader/r;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sunrise/reader/n$1;->c:Lcom/sunrise/reader/n;

    invoke-virtual {v0}, Lcom/sunrise/reader/n;->i()[B

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sunrise/reader/n$1;->c:Lcom/sunrise/reader/n;

    invoke-static {v0}, Lcom/sunrise/reader/n;->a(Lcom/sunrise/reader/n;)Lcom/sunrise/reader/ManagerInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sunrise/reader/ManagerInfo;->theSetServer()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunrise/reader/ReaderServerInfo;

    iget-object v2, p0, Lcom/sunrise/reader/n$1;->c:Lcom/sunrise/reader/n;

    invoke-virtual {v0}, Lcom/sunrise/reader/ReaderServerInfo;->host()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sunrise/reader/ReaderServerInfo;->port()I

    move-result v0

    invoke-static {v2, v1, v3, v0}, Lcom/sunrise/reader/n;->a(Lcom/sunrise/reader/n;[BLjava/lang/String;I)[B

    move-result-object v0

    iget-object v1, p0, Lcom/sunrise/reader/n$1;->c:Lcom/sunrise/reader/n;

    invoke-virtual {v1, v0}, Lcom/sunrise/reader/n;->a([B)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sunrise/reader/n$1;->a:[I

    iget-object v1, p0, Lcom/sunrise/reader/n$1;->c:Lcom/sunrise/reader/n;

    invoke-static {v1}, Lcom/sunrise/reader/n;->c(Lcom/sunrise/reader/n;)I

    move-result v1

    aput v1, v0, v4

    iget-object v0, p0, Lcom/sunrise/reader/n$1;->c:Lcom/sunrise/reader/n;

    invoke-static {v0}, Lcom/sunrise/reader/n;->e(Lcom/sunrise/reader/n;)Lcom/sunrise/reader/h;

    move-result-object v0

    iget-object v1, p0, Lcom/sunrise/reader/n$1;->c:Lcom/sunrise/reader/n;

    invoke-static {v1}, Lcom/sunrise/reader/n;->d(Lcom/sunrise/reader/n;)J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/sunrise/reader/h;->onNetDelayChange(J)V

    :try_start_0
    iget-object v1, p0, Lcom/sunrise/reader/n$1;->b:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/sunrise/reader/n$1;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    return-void

    :cond_1
    const-string v0, "O"

    invoke-static {v0}, Lcom/sunrise/reader/r;->b(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method
