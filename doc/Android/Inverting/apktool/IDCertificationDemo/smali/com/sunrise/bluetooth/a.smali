.class public Lcom/sunrise/bluetooth/a;
.super Lcom/sunrise/u/a;


# instance fields
.field private a:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sunrise/u/a;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sunrise/bluetooth/a;->a:[B

    return-void
.end method


# virtual methods
.method public varargs a(II[B)Lcom/sunrise/bluetooth/a;
    .locals 2

    if-gez p2, :cond_0

    :goto_0
    return-object p0

    :cond_0
    new-array v0, p2, [B

    iput-object v0, p0, Lcom/sunrise/bluetooth/a;->a:[B

    iget-object v0, p0, Lcom/sunrise/bluetooth/a;->a:[B

    const/4 v1, 0x0

    invoke-static {p3, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public varargs a([B)Lcom/sunrise/bluetooth/a;
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/sunrise/bluetooth/a;->a(II[B)Lcom/sunrise/bluetooth/a;

    move-result-object v0

    return-object v0
.end method

.method public a([BI)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-gtz p2, :cond_0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Lcom/sunrise/bluetooth/a;->a([B)Lcom/sunrise/bluetooth/a;

    return-void

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "\u6570\u636e\u683c\u5f0f\u4e0d\u6b63\u786e"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a()[B
    .locals 1

    invoke-virtual {p0}, Lcom/sunrise/bluetooth/a;->b()[B

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(II[B)Lcom/sunrise/u/a;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcom/sunrise/bluetooth/a;->a(II[B)Lcom/sunrise/bluetooth/a;

    move-result-object v0

    return-object v0
.end method

.method public b([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sunrise/bluetooth/a;->a([BI)V

    return-void
.end method

.method public b()[B
    .locals 1

    iget-object v0, p0, Lcom/sunrise/bluetooth/a;->a:[B

    return-object v0
.end method

.method public synthetic c([B)Lcom/sunrise/u/a;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sunrise/bluetooth/a;->a([B)Lcom/sunrise/bluetooth/a;

    move-result-object v0

    return-object v0
.end method
