.class public Lcom/sunrise/bluetooth/b;
.super Lcom/sunrise/r/d;


# instance fields
.field private f:Ljava/io/DataInputStream;

.field private g:Ljava/io/DataOutputStream;

.field private h:[B

.field private i:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 3

    const/4 v1, 0x0

    move-object v0, v1

    check-cast v0, Ljava/net/Socket;

    move-object v2, v1

    check-cast v2, Lcom/sunrise/r/c;

    check-cast v1, Lcom/sunrise/r/b;

    invoke-direct {p0, v0, v2, v1}, Lcom/sunrise/bluetooth/b;-><init>(Ljava/net/Socket;Lcom/sunrise/r/c;Lcom/sunrise/r/b;)V

    return-void
.end method

.method protected constructor <init>(Ljava/net/Socket;Lcom/sunrise/r/c;Lcom/sunrise/r/b;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/sunrise/r/d;-><init>(Ljava/net/Socket;Lcom/sunrise/r/c;Lcom/sunrise/r/b;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sunrise/bluetooth/b;->h:[B

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sunrise/bluetooth/b;->i:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/io/DataInputStream;Ljava/io/DataOutputStream;)Lcom/sunrise/bluetooth/b;
    .locals 1

    new-instance v0, Lcom/sunrise/bluetooth/b;

    invoke-direct {v0}, Lcom/sunrise/bluetooth/b;-><init>()V

    iput-object p0, v0, Lcom/sunrise/bluetooth/b;->f:Ljava/io/DataInputStream;

    iput-object p1, v0, Lcom/sunrise/bluetooth/b;->g:Ljava/io/DataOutputStream;

    return-object v0
.end method

.method public static a([B[BI)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    if-eqz p0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    move v2, v1

    goto :goto_0

    :cond_3
    if-eq p0, p1, :cond_0

    move v0, v1

    :goto_1
    array-length v3, p0

    if-ge v0, v3, :cond_5

    array-length v3, p1

    if-ge v0, v3, :cond_5

    if-ge v0, p2, :cond_5

    aget-byte v3, p0, v0

    aget-byte v4, p1, v0

    if-eq v3, v4, :cond_4

    :goto_2
    move v2, v1

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    move v1, v2

    goto :goto_2
.end method


# virtual methods
.method public a()Lcom/sunrise/bluetooth/a;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x2

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/sunrise/bluetooth/b;->f:Ljava/io/DataInputStream;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "\u65e0\u6cd5\u83b7\u53d6\u8f93\u5165\u6d41"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iget-object v1, p0, Lcom/sunrise/bluetooth/b;->h:[B

    array-length v2, v0

    invoke-static {v1, v0, v2}, Lcom/sunrise/bluetooth/b;->a([B[BI)Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x320

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/sunrise/bluetooth/b;->f:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->available()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_1
    new-array v0, v3, [B

    iget-object v1, p0, Lcom/sunrise/bluetooth/b;->f:Ljava/io/DataInputStream;

    invoke-virtual {v1, v0}, Ljava/io/DataInputStream;->readFully([B)V

    new-array v1, v3, [B

    iget-object v2, p0, Lcom/sunrise/bluetooth/b;->f:Ljava/io/DataInputStream;

    invoke-virtual {v2, v1}, Ljava/io/DataInputStream;->readFully([B)V

    const/4 v2, 0x1

    invoke-static {v2, v6, v3, v1}, Lcom/sunrise/p/a;->a(ZII[B)I

    move-result v2

    new-array v3, v2, [B

    add-int/lit8 v2, v2, -0x4

    new-array v2, v2, [B

    iget-object v4, p0, Lcom/sunrise/bluetooth/b;->f:Ljava/io/DataInputStream;

    invoke-virtual {v4, v2}, Ljava/io/DataInputStream;->readFully([B)V

    array-length v4, v0

    invoke-static {v0, v6, v3, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v4, v0

    array-length v5, v1

    invoke-static {v1, v6, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    array-length v1, v1

    add-int/2addr v0, v1

    array-length v1, v2

    invoke-static {v2, v6, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v0, Lcom/sunrise/bluetooth/a;

    invoke-direct {v0}, Lcom/sunrise/bluetooth/a;-><init>()V

    invoke-virtual {v0, v3}, Lcom/sunrise/bluetooth/a;->a([B)Lcom/sunrise/bluetooth/a;

    move-result-object v0

    goto :goto_1

    nop

    :array_0
    .array-data 1
        0x1t
        0x0t
        0x0t
        0x5t
        0x0t
    .end array-data
.end method

.method public a(Lcom/sunrise/bluetooth/a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/sunrise/bluetooth/a;->a()[B

    move-result-object v0

    iput-object v0, p0, Lcom/sunrise/bluetooth/b;->h:[B

    iget-object v1, p0, Lcom/sunrise/bluetooth/b;->g:Ljava/io/DataOutputStream;

    const/4 v2, 0x0

    array-length v3, v0

    invoke-virtual {v1, v0, v2, v3}, Ljava/io/DataOutputStream;->write([BII)V

    iget-object v0, p0, Lcom/sunrise/bluetooth/b;->g:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    return-void
.end method

.method public a(Z)V
    .locals 4

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    new-instance v0, Lcom/sunrise/u/a;

    invoke-direct {v0}, Lcom/sunrise/u/a;-><init>()V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/sunrise/u/a;->a(B)Lcom/sunrise/u/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sunrise/bluetooth/b;->b(Lcom/sunrise/u/a;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sunrise/bluetooth/b;->f:Ljava/io/DataInputStream;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sunrise/bluetooth/b;->f:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    :cond_1
    iget-object v0, p0, Lcom/sunrise/bluetooth/b;->g:Ljava/io/DataOutputStream;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sunrise/bluetooth/b;->g:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    :goto_0
    iput-object v3, p0, Lcom/sunrise/bluetooth/b;->f:Ljava/io/DataInputStream;

    iput-object v3, p0, Lcom/sunrise/bluetooth/b;->g:Ljava/io/DataOutputStream;

    :goto_1
    return-void

    :catch_0
    move-exception v0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "socke\u5df2\u5173\u95ed"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_2
    iget-object v0, p0, Lcom/sunrise/bluetooth/b;->f:Ljava/io/DataInputStream;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sunrise/bluetooth/b;->f:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    :cond_3
    iget-object v0, p0, Lcom/sunrise/bluetooth/b;->g:Ljava/io/DataOutputStream;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sunrise/bluetooth/b;->g:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_4
    :goto_2
    iput-object v3, p0, Lcom/sunrise/bluetooth/b;->f:Ljava/io/DataInputStream;

    iput-object v3, p0, Lcom/sunrise/bluetooth/b;->g:Ljava/io/DataOutputStream;

    goto :goto_1

    :catch_2
    move-exception v0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "socke\u5df2\u5173\u95ed"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    :try_start_3
    iget-object v1, p0, Lcom/sunrise/bluetooth/b;->f:Ljava/io/DataInputStream;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sunrise/bluetooth/b;->f:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    :cond_5
    iget-object v1, p0, Lcom/sunrise/bluetooth/b;->g:Ljava/io/DataOutputStream;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sunrise/bluetooth/b;->g:Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_6
    :goto_3
    iput-object v3, p0, Lcom/sunrise/bluetooth/b;->f:Ljava/io/DataInputStream;

    iput-object v3, p0, Lcom/sunrise/bluetooth/b;->g:Ljava/io/DataOutputStream;

    throw v0

    :catch_3
    move-exception v1

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "socke\u5df2\u5173\u95ed"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public synthetic b()Lcom/sunrise/u/a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sunrise/bluetooth/b;->a()Lcom/sunrise/bluetooth/a;

    move-result-object v0

    return-object v0
.end method
