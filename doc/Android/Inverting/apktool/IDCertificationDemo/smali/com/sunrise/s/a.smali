.class public Lcom/sunrise/s/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/util/Vector;

.field private static b:Ljava/text/SimpleDateFormat;

.field private static c:Lcom/sunrise/s/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/Vector;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    sput-object v0, Lcom/sunrise/s/a;->a:Ljava/util/Vector;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sunrise/s/a;->b:Ljava/text/SimpleDateFormat;

    const/4 v0, 0x0

    sput-object v0, Lcom/sunrise/s/a;->c:Lcom/sunrise/s/b;

    return-void
.end method

.method static synthetic a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    invoke-static {p0, p1}, Lcom/sunrise/s/a;->c(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a()Ljava/util/Vector;
    .locals 1

    sget-object v0, Lcom/sunrise/s/a;->a:Ljava/util/Vector;

    return-object v0
.end method

.method public static a(Lcom/sunrise/s/c;)V
    .locals 1

    sget-object v0, Lcom/sunrise/s/a;->a:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic b(Ljava/io/File;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/sunrise/s/a;->d(Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method private static c(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 6

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sunrise/s/a;->b:Ljava/text/SimpleDateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".txt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static d(Ljava/io/File;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    :cond_1
    new-instance v0, Ljava/io/PrintWriter;

    new-instance v1, Ljava/io/FileOutputStream;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    return-void
.end method
