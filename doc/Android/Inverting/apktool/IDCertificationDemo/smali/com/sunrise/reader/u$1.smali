.class final Lcom/sunrise/reader/u$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sunrise/reader/u;->a(ILcom/sunrise/reader/ManagerInfo;Ljava/lang/String;ILjava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:[B


# direct methods
.method constructor <init>(Ljava/lang/String;I[B)V
    .locals 0

    iput-object p1, p0, Lcom/sunrise/reader/u$1;->a:Ljava/lang/String;

    iput p2, p0, Lcom/sunrise/reader/u$1;->b:I

    iput-object p3, p0, Lcom/sunrise/reader/u$1;->c:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    const/16 v1, 0x12

    :try_start_0
    invoke-virtual {v0, v1}, Ljava/net/Socket;->setTrafficClass(I)V

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setReceiveBufferSize(I)V

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSendBufferSize(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    new-instance v1, Ljava/net/InetSocketAddress;

    iget-object v2, p0, Lcom/sunrise/reader/u$1;->a:Ljava/lang/String;

    iget v3, p0, Lcom/sunrise/reader/u$1;->b:I

    invoke-direct {v1, v2, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    const/16 v2, 0x1388

    invoke-virtual {v0, v1, v2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    iget-object v2, p0, Lcom/sunrise/reader/u$1;->c:[B

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sunrise/reader/u$1;->c:[B

    array-length v4, v4

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/OutputStream;->write([BII)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
