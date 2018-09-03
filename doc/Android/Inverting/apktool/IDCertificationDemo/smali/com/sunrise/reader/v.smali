.class public Lcom/sunrise/reader/v;
.super Ljava/lang/Object;


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Ljava/lang/String;

.field protected c:I

.field public d:Ljava/io/DataInputStream;

.field public e:Ljava/io/DataOutputStream;

.field private f:Ljava/net/Socket;

.field private g:Ljava/util/Map;


# direct methods
.method protected constructor <init>(Ljava/net/Socket;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sunrise/reader/v;->g:Ljava/util/Map;

    invoke-static {}, Lcom/sunrise/p/c;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sunrise/reader/v;->a:Ljava/lang/String;

    iput-object p1, p0, Lcom/sunrise/reader/v;->f:Ljava/net/Socket;

    iget-object v0, p0, Lcom/sunrise/reader/v;->f:Ljava/net/Socket;

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Ljava/io/DataInputStream;

    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/sunrise/reader/v;->d:Ljava/io/DataInputStream;

    new-instance v0, Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/sunrise/reader/v;->e:Ljava/io/DataOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p1}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sunrise/reader/v;->b:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/Socket;->getPort()I

    move-result v0

    iput v0, p0, Lcom/sunrise/reader/v;->c:I

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lcom/sunrise/v/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/sunrise/v/d;

    goto :goto_0
.end method

.method public static a(Lcom/sunrise/u/a;Ljava/io/DataInputStream;Lcom/sunrise/reader/v;)Lcom/sunrise/u/a;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "\u65e0\u6cd5\u83b7\u53d6\u8f93\u5165\u6d41"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-array v1, v8, [B

    invoke-virtual {p1, v1}, Ljava/io/DataInputStream;->readFully([B)V

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    new-array v1, v9, [B

    invoke-virtual {p1, v1}, Ljava/io/DataInputStream;->readFully([B)V

    invoke-static {v7, v7, v9, v1}, Lcom/sunrise/p/a;->a(ZII[B)I

    move-result v2

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    add-int/lit8 v1, v2, -0x2

    new-array v1, v1, [B

    invoke-virtual {p1, v1}, Ljava/io/DataInputStream;->readFully([B)V

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    new-array v1, v8, [B

    invoke-virtual {p1, v1}, Ljava/io/DataInputStream;->readFully([B)V

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const/16 v1, 0xbb8

    new-array v1, v1, [B

    new-array v2, v8, [S

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u63a5\u6536\u6570\u636e:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    array-length v6, v6

    invoke-static {v5, v8, v7, v6}, Lcom/sunrise/v/a;->a([BIII)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    array-length v0, v0

    int-to-short v0, v0

    invoke-static {v3, v0, v1, v2, v9}, Lcom/sunrise/y/a;->d([BS[B[SI)I

    move-result v0

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u89e3\u5305\u7ed3\u679c:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-short v4, v2, v7

    invoke-static {v1, v8, v7, v4}, Lcom/sunrise/v/a;->a([BIII)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    aget-short v0, v2, v7

    new-array v0, v0, [B

    aget-short v3, v2, v7

    invoke-static {v1, v7, v0, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "len:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-short v2, v2, v7

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sunrise/u/a;->b([B)V

    return-object p0
.end method

.method public static a(Lcom/sunrise/reader/v;Lcom/sunrise/u/a;Ljava/io/DataOutputStream;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/sunrise/u/a;->a()[B

    move-result-object v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u8bfb\u5934\u6570\u636e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v0

    invoke-static {v0, v7, v6, v3}, Lcom/sunrise/v/a;->a([BIII)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/16 v1, 0x1000

    new-array v1, v1, [B

    new-array v2, v7, [S

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "\u5f00\u59cb\u5c01\u5305"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    array-length v3, v0

    int-to-short v3, v3

    const/4 v4, 0x2

    invoke-static {v0, v3, v1, v2, v4}, Lcom/sunrise/y/a;->c([BS[B[SI)I

    move-result v0

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u7ec4\u5305\u7ed3\u679c:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "len:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-short v5, v2, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-short v5, v2, v6

    invoke-static {v1, v7, v6, v5}, Lcom/sunrise/v/a;->a([BIII)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    if-nez v0, :cond_0

    aget-short v0, v2, v6

    invoke-virtual {p2, v1, v6, v0}, Ljava/io/DataOutputStream;->write([BII)V

    invoke-virtual {p2}, Ljava/io/DataOutputStream;->flush()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/sunrise/u/a;)Lcom/sunrise/u/a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sunrise/reader/v;->d:Ljava/io/DataInputStream;

    invoke-static {p1, v0, p0}, Lcom/sunrise/reader/v;->a(Lcom/sunrise/u/a;Ljava/io/DataInputStream;Lcom/sunrise/reader/v;)Lcom/sunrise/u/a;

    move-result-object v0

    return-object v0
.end method

.method public a(Z)V
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    new-instance v0, Lcom/sunrise/u/a;

    invoke-direct {v0}, Lcom/sunrise/u/a;-><init>()V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/sunrise/u/a;->a(B)Lcom/sunrise/u/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sunrise/reader/v;->b(Lcom/sunrise/u/a;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sunrise/reader/v;->f:Ljava/net/Socket;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sunrise/reader/v;->f:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_0
    iput-object v2, p0, Lcom/sunrise/reader/v;->d:Ljava/io/DataInputStream;

    iput-object v2, p0, Lcom/sunrise/reader/v;->e:Ljava/io/DataOutputStream;

    iput-object v2, p0, Lcom/sunrise/reader/v;->f:Ljava/net/Socket;

    :goto_1
    return-void

    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/sunrise/reader/v;->d:Ljava/io/DataInputStream;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sunrise/reader/v;->d:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    :cond_3
    iget-object v0, p0, Lcom/sunrise/reader/v;->e:Ljava/io/DataOutputStream;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sunrise/reader/v;->e:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_3
    iget-object v0, p0, Lcom/sunrise/reader/v;->f:Ljava/net/Socket;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sunrise/reader/v;->f:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_4
    :goto_2
    iput-object v2, p0, Lcom/sunrise/reader/v;->d:Ljava/io/DataInputStream;

    iput-object v2, p0, Lcom/sunrise/reader/v;->e:Ljava/io/DataOutputStream;

    iput-object v2, p0, Lcom/sunrise/reader/v;->f:Ljava/net/Socket;

    goto :goto_1

    :cond_5
    :try_start_4
    iget-object v0, p0, Lcom/sunrise/reader/v;->d:Ljava/io/DataInputStream;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sunrise/reader/v;->d:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    :cond_6
    iget-object v0, p0, Lcom/sunrise/reader/v;->e:Ljava/io/DataOutputStream;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sunrise/reader/v;->e:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_2

    :catchall_0
    move-exception v0

    :try_start_5
    iget-object v1, p0, Lcom/sunrise/reader/v;->f:Ljava/net/Socket;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/sunrise/reader/v;->f:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_7
    :goto_3
    iput-object v2, p0, Lcom/sunrise/reader/v;->d:Ljava/io/DataInputStream;

    iput-object v2, p0, Lcom/sunrise/reader/v;->e:Ljava/io/DataOutputStream;

    iput-object v2, p0, Lcom/sunrise/reader/v;->f:Ljava/net/Socket;

    throw v0

    :cond_8
    :try_start_6
    iget-object v1, p0, Lcom/sunrise/reader/v;->d:Ljava/io/DataInputStream;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/sunrise/reader/v;->d:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    :cond_9
    iget-object v1, p0, Lcom/sunrise/reader/v;->e:Ljava/io/DataOutputStream;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/sunrise/reader/v;->e:Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_3
.end method

.method public b(Lcom/sunrise/u/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sunrise/reader/v;->e:Ljava/io/DataOutputStream;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "\u65e0\u6cd5\u83b7\u53d6\u8f93\u51fa\u6d41"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "\u670d\u52a1\u7aef\u83b7\u53d6\u8f93\u51fa\u5f02\u5e38"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/sunrise/reader/v;->e:Ljava/io/DataOutputStream;

    invoke-static {p0, p1, v0}, Lcom/sunrise/reader/v;->a(Lcom/sunrise/reader/v;Lcom/sunrise/u/a;Ljava/io/DataOutputStream;)V

    return-void
.end method
