.class public Lcom/sunrise/reader/f;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/sunrise/reader/ReaderServerInfo;

.field private c:I

.field private d:Lcom/sunrise/r/d;

.field private e:Lcom/sunrise/reader/v;

.field private f:Lcom/sunrise/reader/j;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sunrise/reader/j;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ReaderServer"

    iput-object v0, p0, Lcom/sunrise/reader/f;->a:Ljava/lang/String;

    const/4 v0, 0x4

    iput v0, p0, Lcom/sunrise/reader/f;->c:I

    const-string v0, ""

    iput-object v0, p0, Lcom/sunrise/reader/f;->g:Ljava/lang/String;

    iput-object p1, p0, Lcom/sunrise/reader/f;->f:Lcom/sunrise/reader/j;

    return-void
.end method


# virtual methods
.method public a(Lcom/sunrise/reader/ManagerInfo;)I
    .locals 5

    const/4 v4, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/sunrise/reader/f;->b:Lcom/sunrise/reader/ReaderServerInfo;

    if-nez v1, :cond_2

    :cond_0
    const/4 v0, -0x2

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v1, p0, Lcom/sunrise/reader/f;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u6b63\u5728\u8fde\u63a5\u540e\u53f0...  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sunrise/reader/f;->b:Lcom/sunrise/reader/ReaderServerInfo;

    invoke-virtual {v3}, Lcom/sunrise/reader/ReaderServerInfo;->host()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sunrise/reader/f;->b:Lcom/sunrise/reader/ReaderServerInfo;

    invoke-virtual {v3}, Lcom/sunrise/reader/ReaderServerInfo;->port()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6b63\u5728\u8fde\u63a5\u540e\u53f0...  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sunrise/reader/f;->b:Lcom/sunrise/reader/ReaderServerInfo;

    invoke-virtual {v2}, Lcom/sunrise/reader/ReaderServerInfo;->host()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sunrise/reader/f;->b:Lcom/sunrise/reader/ReaderServerInfo;

    invoke-virtual {v2}, Lcom/sunrise/reader/ReaderServerInfo;->port()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sunrise/reader/r;->b(Ljava/lang/String;)V

    const/16 v1, 0x7d0

    new-array v1, v1, [B

    new-array v2, v4, [S

    new-array v3, v0, [B

    invoke-static {v3, v0, v1, v2, v4}, Lcom/sunrise/y/a;->c([BS[B[SI)I

    const/4 v1, 0x5

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/sunrise/reader/f;->a(I)V

    new-instance v1, Ljava/net/Socket;

    invoke-direct {v1}, Ljava/net/Socket;-><init>()V

    const/16 v2, 0x12

    invoke-virtual {v1, v2}, Ljava/net/Socket;->setTrafficClass(I)V

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/net/Socket;->setReceiveBufferSize(I)V

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/net/Socket;->setSendBufferSize(I)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    const/16 v2, 0x1388

    invoke-virtual {v1, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    new-instance v2, Ljava/net/InetSocketAddress;

    iget-object v3, p0, Lcom/sunrise/reader/f;->b:Lcom/sunrise/reader/ReaderServerInfo;

    invoke-virtual {v3}, Lcom/sunrise/reader/ReaderServerInfo;->host()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sunrise/reader/f;->b:Lcom/sunrise/reader/ReaderServerInfo;

    invoke-virtual {v4}, Lcom/sunrise/reader/ReaderServerInfo;->port()I

    move-result v4

    invoke-direct {v2, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    const/16 v3, 0x1388

    invoke-virtual {v1, v2, v3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    invoke-virtual {p1}, Lcom/sunrise/reader/ManagerInfo;->accessAccount()Ljava/lang/String;

    move-result-object v2

    const-string v3, "unicom_china"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lcom/sunrise/reader/ManagerInfo;->accessAccount()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sunrise/reader/f;->g:Ljava/lang/String;

    new-instance v2, Lcom/sunrise/reader/v;

    invoke-direct {v2, v1}, Lcom/sunrise/reader/v;-><init>(Ljava/net/Socket;)V

    iput-object v2, p0, Lcom/sunrise/reader/f;->e:Lcom/sunrise/reader/v;

    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/sunrise/reader/f;->a(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sunrise/reader/f;->a(I)V

    const/16 v0, -0x9

    goto/16 :goto_0

    :cond_3
    :try_start_1
    const-string v0, ""

    iput-object v0, p0, Lcom/sunrise/reader/f;->g:Ljava/lang/String;

    const/4 v0, 0x0

    new-instance v2, Lcom/sunrise/reader/q;

    iget-object v3, p0, Lcom/sunrise/reader/f;->b:Lcom/sunrise/reader/ReaderServerInfo;

    invoke-direct {v2, p1, v3}, Lcom/sunrise/reader/q;-><init>(Lcom/sunrise/reader/ManagerInfo;Lcom/sunrise/reader/ReaderServerInfo;)V

    invoke-static {v1, v0, v2}, Lcom/sunrise/r/d;->a(Ljava/net/Socket;Lcom/sunrise/r/c;Lcom/sunrise/r/b;)Lcom/sunrise/r/d;

    move-result-object v0

    iput-object v0, p0, Lcom/sunrise/reader/f;->d:Lcom/sunrise/r/d;

    iget-object v0, p0, Lcom/sunrise/reader/f;->d:Lcom/sunrise/r/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sunrise/r/d;->a(Lcom/sunrise/u/b;)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/sunrise/reader/f;->a(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public a()Lcom/sunrise/reader/ReaderServerInfo;
    .locals 1

    iget-object v0, p0, Lcom/sunrise/reader/f;->b:Lcom/sunrise/reader/ReaderServerInfo;

    return-object v0
.end method

.method public a(Lcom/sunrise/reader/ReaderServerInfo;)Lcom/sunrise/reader/f;
    .locals 3

    iput-object p1, p0, Lcom/sunrise/reader/f;->b:Lcom/sunrise/reader/ReaderServerInfo;

    iget-object v0, p0, Lcom/sunrise/reader/f;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5207\u6362\u540e\u53f0\u670d\u52a1\u5668\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public a(Lcom/sunrise/u/a;)Lcom/sunrise/u/a;
    .locals 3

    const/4 v2, 0x6

    const/16 v0, 0x10

    :try_start_0
    invoke-virtual {p1, v0}, Lcom/sunrise/u/a;->b(B)Lcom/sunrise/u/a;

    iget-object v0, p0, Lcom/sunrise/reader/f;->g:Ljava/lang/String;

    const-string v1, "unicom_china"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sunrise/reader/f;->e:Lcom/sunrise/reader/v;

    invoke-virtual {v0, p1}, Lcom/sunrise/reader/v;->b(Lcom/sunrise/u/a;)V

    iget-object v0, p0, Lcom/sunrise/reader/f;->e:Lcom/sunrise/reader/v;

    invoke-virtual {v0, p1}, Lcom/sunrise/reader/v;->a(Lcom/sunrise/u/a;)Lcom/sunrise/u/a;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v2}, Lcom/sunrise/reader/f;->a(I)V

    :goto_1
    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sunrise/reader/f;->d:Lcom/sunrise/r/d;

    invoke-virtual {v0, p1}, Lcom/sunrise/r/d;->b(Lcom/sunrise/u/a;)V

    iget-object v0, p0, Lcom/sunrise/reader/f;->d:Lcom/sunrise/r/d;

    invoke-virtual {v0, p1}, Lcom/sunrise/r/d;->a(Lcom/sunrise/u/a;)Lcom/sunrise/u/a;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x0

    invoke-virtual {p0, v2}, Lcom/sunrise/reader/f;->a(I)V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {p0, v2}, Lcom/sunrise/reader/f;->a(I)V

    throw v0
.end method

.method protected a(I)V
    .locals 1

    iput p1, p0, Lcom/sunrise/reader/f;->c:I

    iget-object v0, p0, Lcom/sunrise/reader/f;->f:Lcom/sunrise/reader/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sunrise/reader/f;->f:Lcom/sunrise/reader/j;

    invoke-interface {v0, p1}, Lcom/sunrise/reader/j;->stateChanged(I)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 5

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/sunrise/reader/f;->g:Ljava/lang/String;

    const-string v1, "unicom_china"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x7d0

    :try_start_0
    new-array v0, v0, [B

    const/4 v1, 0x1

    new-array v1, v1, [S

    const/4 v2, 0x0

    new-array v2, v2, [B

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v2, v3, v0, v1, v4}, Lcom/sunrise/y/a;->c([BS[B[SI)I

    iget-object v2, p0, Lcom/sunrise/reader/f;->e:Lcom/sunrise/reader/v;

    iget-object v2, v2, Lcom/sunrise/reader/v;->e:Ljava/io/DataOutputStream;

    const/4 v3, 0x0

    const/4 v4, 0x0

    aget-short v1, v1, v4

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/DataOutputStream;->write([BII)V

    iget-object v0, p0, Lcom/sunrise/reader/f;->e:Lcom/sunrise/reader/v;

    iget-object v0, v0, Lcom/sunrise/reader/v;->e:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [B

    iget-object v2, p0, Lcom/sunrise/reader/f;->e:Lcom/sunrise/reader/v;

    iget-object v2, v2, Lcom/sunrise/reader/v;->d:Ljava/io/DataInputStream;

    invoke-virtual {v2, v1}, Ljava/io/DataInputStream;->readFully([B)V

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const/4 v1, 0x2

    new-array v1, v1, [B

    iget-object v2, p0, Lcom/sunrise/reader/f;->e:Lcom/sunrise/reader/v;

    iget-object v2, v2, Lcom/sunrise/reader/v;->d:Ljava/io/DataInputStream;

    invoke-virtual {v2, v1}, Ljava/io/DataInputStream;->readFully([B)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v2, v3, v4, v1}, Lcom/sunrise/p/a;->a(ZII[B)I

    move-result v2

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    add-int/lit8 v1, v2, -0x2

    new-array v1, v1, [B

    iget-object v2, p0, Lcom/sunrise/reader/f;->e:Lcom/sunrise/reader/v;

    iget-object v2, v2, Lcom/sunrise/reader/v;->d:Ljava/io/DataInputStream;

    invoke-virtual {v2, v1}, Ljava/io/DataInputStream;->readFully([B)V

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const/4 v1, 0x1

    new-array v1, v1, [B

    iget-object v2, p0, Lcom/sunrise/reader/f;->e:Lcom/sunrise/reader/v;

    iget-object v2, v2, Lcom/sunrise/reader/v;->d:Ljava/io/DataInputStream;

    invoke-virtual {v2, v1}, Ljava/io/DataInputStream;->readFully([B)V

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget-object v0, p0, Lcom/sunrise/reader/f;->e:Lcom/sunrise/reader/v;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sunrise/reader/f;->e:Lcom/sunrise/reader/v;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sunrise/reader/v;->a(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sunrise/reader/f;->e:Lcom/sunrise/reader/v;

    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sunrise/reader/f;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sunrise/reader/f;->d:Lcom/sunrise/r/d;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sunrise/reader/f;->d:Lcom/sunrise/r/d;

    invoke-virtual {v0, v2}, Lcom/sunrise/r/d;->a(Z)V

    iput-object v3, p0, Lcom/sunrise/reader/f;->d:Lcom/sunrise/r/d;

    goto :goto_0
.end method
