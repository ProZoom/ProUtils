.class public Lcom/sunrise/r/d;
.super Ljava/lang/Object;


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Lcom/sunrise/r/c;

.field protected c:Lcom/sunrise/r/b;

.field protected d:Ljava/lang/String;

.field protected e:I

.field private f:Ljava/net/Socket;

.field private g:Ljava/io/DataInputStream;

.field private h:Ljava/io/DataOutputStream;

.field private i:Ljava/util/Map;


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0}, Lcom/sunrise/r/d;-><init>(Ljava/net/Socket;Lcom/sunrise/r/c;Lcom/sunrise/r/b;)V

    return-void
.end method

.method protected constructor <init>(Ljava/net/Socket;Lcom/sunrise/r/c;Lcom/sunrise/r/b;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sunrise/r/d;->i:Ljava/util/Map;

    invoke-static {}, Lcom/sunrise/p/c;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sunrise/r/d;->a:Ljava/lang/String;

    iput-object p1, p0, Lcom/sunrise/r/d;->f:Ljava/net/Socket;

    iget-object v0, p0, Lcom/sunrise/r/d;->f:Ljava/net/Socket;

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Ljava/io/DataInputStream;

    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/sunrise/r/d;->g:Ljava/io/DataInputStream;

    new-instance v0, Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/sunrise/r/d;->h:Ljava/io/DataOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p1}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sunrise/r/d;->d:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/Socket;->getPort()I

    move-result v0

    iput v0, p0, Lcom/sunrise/r/d;->e:I

    :cond_0
    iput-object p2, p0, Lcom/sunrise/r/d;->b:Lcom/sunrise/r/c;

    iput-object p3, p0, Lcom/sunrise/r/d;->c:Lcom/sunrise/r/b;

    if-eqz p2, :cond_1

    invoke-interface {p2, p0}, Lcom/sunrise/r/c;->a(Lcom/sunrise/r/d;)V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lcom/sunrise/v/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/sunrise/v/d;

    goto :goto_0
.end method

.method public static a(Ljava/net/Socket;Lcom/sunrise/r/c;Lcom/sunrise/r/b;)Lcom/sunrise/r/d;
    .locals 1
    .param p0    # Ljava/net/Socket;
        .annotation build Lcom/sun/istack/internal/NotNull;
        .end annotation
    .end param

    new-instance v0, Lcom/sunrise/r/d;

    invoke-direct {v0, p0, p1, p2}, Lcom/sunrise/r/d;-><init>(Ljava/net/Socket;Lcom/sunrise/r/c;Lcom/sunrise/r/b;)V

    return-object v0
.end method

.method public static a(Lcom/sunrise/u/a;Ljava/io/DataInputStream;Lcom/sunrise/r/d;)Lcom/sunrise/u/a;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v2, 0x2

    if-nez p1, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "\u65e0\u6cd5\u83b7\u53d6\u8f93\u5165\u6d41"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-array v1, v2, [B

    invoke-virtual {p1, v1}, Ljava/io/DataInputStream;->readFully([B)V

    new-array v0, v2, [B

    invoke-virtual {p1, v0}, Ljava/io/DataInputStream;->readFully([B)V

    invoke-static {v3, v3, v2, v0}, Lcom/sunrise/p/a;->a(ZII[B)I

    move-result v0

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v2

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v3

    if-nez p0, :cond_3

    invoke-static {v2}, Lcom/sunrise/t/a;->a(B)Lcom/sunrise/u/a;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/sunrise/u/a;->a(Lcom/sunrise/r/d;)Lcom/sunrise/u/a;

    move-result-object p0

    :goto_0
    add-int/lit8 v0, v0, -0x2

    new-array v0, v0, [B

    invoke-virtual {p1, v0}, Ljava/io/DataInputStream;->readFully([B)V

    iget-object v4, p2, Lcom/sunrise/r/d;->b:Lcom/sunrise/r/c;

    if-eqz v4, :cond_1

    iget-object v4, p2, Lcom/sunrise/r/d;->b:Lcom/sunrise/r/c;

    invoke-interface {v4, v0}, Lcom/sunrise/r/c;->b([B)[B

    move-result-object v0

    :cond_1
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    invoke-virtual {p0, v2}, Lcom/sunrise/u/a;->a(B)Lcom/sunrise/u/a;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/sunrise/u/a;->c(B)Lcom/sunrise/u/a;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sunrise/u/a;->d([B)Lcom/sunrise/u/a;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/sunrise/u/a;->b(B)Lcom/sunrise/u/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sunrise/u/a;->c([B)Lcom/sunrise/u/a;

    invoke-virtual {p0}, Lcom/sunrise/u/a;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sunrise/u/a;->a()[B

    move-result-object v0

    invoke-static {v0}, Lcom/sunrise/v/c;->a([B)Lcom/sunrise/v/d;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "<<<============"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p2, Lcom/sunrise/r/d;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sunrise/v/d;->a(Ljava/lang/String;)Lcom/sunrise/v/d;

    :cond_2
    return-object p0

    :cond_3
    invoke-virtual {p0, p2}, Lcom/sunrise/u/a;->a(Lcom/sunrise/r/d;)Lcom/sunrise/u/a;

    goto :goto_0
.end method

.method public static a(Lcom/sunrise/r/d;Lcom/sunrise/u/a;Ljava/io/DataOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/sunrise/u/a;->b()[B

    move-result-object v0

    iget-object v1, p0, Lcom/sunrise/r/d;->b:Lcom/sunrise/r/c;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sunrise/r/d;->b:Lcom/sunrise/r/c;

    invoke-interface {v1, v0}, Lcom/sunrise/r/c;->a([B)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sunrise/u/a;->c([B)Lcom/sunrise/u/a;

    :cond_0
    invoke-virtual {p1}, Lcom/sunrise/u/a;->a()[B

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p2, v0, v1, v2}, Ljava/io/DataOutputStream;->write([BII)V

    invoke-virtual {p2}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {p1}, Lcom/sunrise/u/a;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/sunrise/v/c;->a([B)Lcom/sunrise/v/d;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "============>>>"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sunrise/r/d;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sunrise/v/d;->a(Ljava/lang/String;)Lcom/sunrise/v/d;

    :cond_1
    return-void
.end method

.method public static b(Ljava/io/DataInputStream;Ljava/io/DataOutputStream;)Lcom/sunrise/r/d;
    .locals 1

    new-instance v0, Lcom/sunrise/r/d;

    invoke-direct {v0}, Lcom/sunrise/r/d;-><init>()V

    iput-object p0, v0, Lcom/sunrise/r/d;->g:Ljava/io/DataInputStream;

    iput-object p1, v0, Lcom/sunrise/r/d;->h:Ljava/io/DataOutputStream;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/sunrise/u/b;)I
    .locals 1

    iget-object v0, p0, Lcom/sunrise/r/d;->c:Lcom/sunrise/r/b;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sunrise/r/d;->c:Lcom/sunrise/r/b;

    invoke-interface {v0, p0, p1}, Lcom/sunrise/r/b;->a(Lcom/sunrise/r/d;Lcom/sunrise/u/b;)I

    move-result v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)Lcom/sunrise/r/d;
    .locals 1

    iget-object v0, p0, Lcom/sunrise/r/d;->i:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public a(Lcom/sunrise/u/a;)Lcom/sunrise/u/a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sunrise/r/d;->g:Ljava/io/DataInputStream;

    invoke-static {p1, v0, p0}, Lcom/sunrise/r/d;->a(Lcom/sunrise/u/a;Ljava/io/DataInputStream;Lcom/sunrise/r/d;)Lcom/sunrise/u/a;

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

    invoke-virtual {p0, v0}, Lcom/sunrise/r/d;->b(Lcom/sunrise/u/a;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sunrise/r/d;->f:Ljava/net/Socket;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sunrise/r/d;->f:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    :cond_1
    :goto_0
    iput-object v2, p0, Lcom/sunrise/r/d;->g:Ljava/io/DataInputStream;

    iput-object v2, p0, Lcom/sunrise/r/d;->h:Ljava/io/DataOutputStream;

    iput-object v2, p0, Lcom/sunrise/r/d;->f:Ljava/net/Socket;

    :goto_1
    return-void

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v0, p0, Lcom/sunrise/r/d;->f:Ljava/net/Socket;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sunrise/r/d;->f:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_2
    :goto_2
    iput-object v2, p0, Lcom/sunrise/r/d;->g:Ljava/io/DataInputStream;

    iput-object v2, p0, Lcom/sunrise/r/d;->h:Ljava/io/DataOutputStream;

    iput-object v2, p0, Lcom/sunrise/r/d;->f:Ljava/net/Socket;

    goto :goto_1

    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/sunrise/r/d;->g:Ljava/io/DataInputStream;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sunrise/r/d;->g:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    :cond_4
    iget-object v0, p0, Lcom/sunrise/r/d;->h:Ljava/io/DataOutputStream;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sunrise/r/d;->h:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_2

    :catchall_0
    move-exception v0

    :try_start_4
    iget-object v1, p0, Lcom/sunrise/r/d;->f:Ljava/net/Socket;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sunrise/r/d;->f:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_5
    :goto_3
    iput-object v2, p0, Lcom/sunrise/r/d;->g:Ljava/io/DataInputStream;

    iput-object v2, p0, Lcom/sunrise/r/d;->h:Ljava/io/DataOutputStream;

    iput-object v2, p0, Lcom/sunrise/r/d;->f:Ljava/net/Socket;

    throw v0

    :cond_6
    :try_start_5
    iget-object v1, p0, Lcom/sunrise/r/d;->g:Ljava/io/DataInputStream;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/sunrise/r/d;->g:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    :cond_7
    iget-object v1, p0, Lcom/sunrise/r/d;->h:Ljava/io/DataOutputStream;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sunrise/r/d;->h:Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_3

    :cond_8
    :try_start_6
    iget-object v0, p0, Lcom/sunrise/r/d;->g:Ljava/io/DataInputStream;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sunrise/r/d;->g:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    :cond_9
    iget-object v0, p0, Lcom/sunrise/r/d;->h:Ljava/io/DataOutputStream;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sunrise/r/d;->h:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_0

    :catch_3
    move-exception v0

    goto :goto_0
.end method

.method public b()Lcom/sunrise/u/a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sunrise/r/d;->a(Lcom/sunrise/u/a;)Lcom/sunrise/u/a;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/sunrise/u/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sunrise/r/d;->h:Ljava/io/DataOutputStream;

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
    iget-object v0, p0, Lcom/sunrise/r/d;->h:Ljava/io/DataOutputStream;

    invoke-static {p0, p1, v0}, Lcom/sunrise/r/d;->a(Lcom/sunrise/r/d;Lcom/sunrise/u/a;Ljava/io/DataOutputStream;)V

    return-void
.end method

.method public c()Ljava/io/DataInputStream;
    .locals 1

    iget-object v0, p0, Lcom/sunrise/r/d;->g:Ljava/io/DataInputStream;

    return-object v0
.end method

.method public d()Ljava/io/DataOutputStream;
    .locals 1

    iget-object v0, p0, Lcom/sunrise/r/d;->h:Ljava/io/DataOutputStream;

    return-object v0
.end method
