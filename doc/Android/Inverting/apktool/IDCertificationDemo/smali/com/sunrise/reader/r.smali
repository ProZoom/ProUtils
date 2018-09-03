.class public Lcom/sunrise/reader/r;
.super Ljava/lang/Object;


# static fields
.field static a:[Ljava/lang/String;

.field static b:Ljava/lang/String;

.field static c:Lcom/sunrise/x/b;

.field static d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/sunrise/reader/r;->a:[Ljava/lang/String;

    sput-object v1, Lcom/sunrise/reader/r;->b:Ljava/lang/String;

    new-instance v0, Lcom/sunrise/x/b;

    invoke-direct {v0}, Lcom/sunrise/x/b;-><init>()V

    sput-object v0, Lcom/sunrise/reader/r;->c:Lcom/sunrise/x/b;

    sput-object v1, Lcom/sunrise/reader/r;->d:Ljava/lang/String;

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    sput-object p0, Lcom/sunrise/reader/r;->d:Ljava/lang/String;

    sget-object v0, Lcom/sunrise/reader/r;->c:Lcom/sunrise/x/b;

    invoke-static {}, Lcom/sunrise/x/b;->a()V

    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 5

    :try_start_0
    invoke-static {}, Lcom/sunrise/reader/r;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "hh:mm:ss.SSS"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v2, Lcom/sunrise/reader/r;->a:[Ljava/lang/String;

    const/4 v3, 0x0

    sget-object v4, Lcom/sunrise/reader/r;->d:Ljava/lang/String;

    aput-object v4, v2, v3

    sget-object v2, Lcom/sunrise/reader/r;->a:[Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v1, v2, v3

    sget-object v1, Lcom/sunrise/reader/r;->a:[Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v0, v1, v2

    sget-object v0, Lcom/sunrise/reader/r;->a:[Ljava/lang/String;

    const/4 v1, 0x3

    aput-object p0, v0, v1

    new-instance v0, Lcom/sunrise/x/a;

    const-string v1, "btreader_log"

    sget-object v2, Lcom/sunrise/reader/r;->a:[Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/sunrise/x/a;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    sget-object v1, Lcom/sunrise/reader/r;->c:Lcom/sunrise/x/b;

    invoke-static {v0}, Lcom/sunrise/x/b;->a(Lcom/sunrise/s/c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
