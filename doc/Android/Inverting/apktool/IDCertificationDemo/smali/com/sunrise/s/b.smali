.class Lcom/sunrise/s/b;
.super Ljava/lang/Thread;


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "\u65e5\u5fd7\u6587\u4ef6\u8bb0\u5f55\u7ebf\u7a0b\u5df2\u7ecf\u542f\u52a8"

    invoke-static {v0}, Lcom/sunrise/v/c;->a(Ljava/lang/String;)Lcom/sunrise/v/d;

    new-instance v1, Ljava/io/File;

    const-string v0, "logs"

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_1
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/sunrise/s/a;->a()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_2

    invoke-static {}, Lcom/sunrise/s/a;->a()Ljava/util/Vector;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunrise/s/c;

    invoke-interface {v0}, Lcom/sunrise/s/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sunrise/s/a;->a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-interface {v0}, Lcom/sunrise/s/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/sunrise/s/a;->b(Ljava/io/File;Ljava/lang/String;)V

    const-wide/16 v2, 0x32

    invoke-static {v2, v3}, Lcom/sunrise/s/b;->sleep(J)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_2
    const-wide/16 v2, 0xc8

    invoke-static {v2, v3}, Lcom/sunrise/s/b;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method
