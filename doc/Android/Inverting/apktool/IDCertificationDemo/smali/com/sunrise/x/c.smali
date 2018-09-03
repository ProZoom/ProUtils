.class Lcom/sunrise/x/c;
.super Ljava/lang/Thread;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sunrise/x/c;->setDaemon(Z)V

    const-string v0, "FILE-LOGGER"

    invoke-virtual {p0, v0}, Lcom/sunrise/x/c;->setName(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/sunrise/reader/r;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "\u65e0\u6cd5\u83b7\u53d6SDCard\u8def\u5f84,\u65e5\u5fd7\u8bb0\u5f55\u5931\u8d25"

    invoke-static {v0}, Lcom/sunrise/v/c;->a(Ljava/lang/String;)Lcom/sunrise/v/d;

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "sunrise"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "btreader"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "logs"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_2
    const-string v0, "\u65e5\u5fd7\u6587\u4ef6\u8bb0\u5f55\u7ebf\u7a0b\u5df2\u7ecf\u542f\u52a8"

    invoke-static {v0}, Lcom/sunrise/v/c;->a(Ljava/lang/String;)Lcom/sunrise/v/d;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    :try_start_1
    invoke-static {}, Lcom/sunrise/x/b;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    invoke-static {}, Lcom/sunrise/x/b;->b()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunrise/s/c;

    invoke-interface {v0}, Lcom/sunrise/s/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sunrise/x/b;->a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-interface {v0}, Lcom/sunrise/s/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/sunrise/x/b;->b(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "\u65e5\u5fd7\u6587\u4ef6\u8bb0\u5f55\u7ebf\u7a0b\u542f\u52a8"

    invoke-static {v1}, Lcom/sunrise/v/c;->a(Ljava/lang/String;)Lcom/sunrise/v/d;

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_3
    const-wide/16 v2, 0xc8

    :try_start_3
    invoke-static {v2, v3}, Lcom/sunrise/x/c;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1
.end method
