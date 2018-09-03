.class public Lcom/sunrise/u/a;
.super Ljava/lang/Object;


# instance fields
.field private a:[B

.field private b:[B

.field private c:B

.field private d:B

.field private e:B

.field private f:Lcom/sunrise/r/d;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/sunrise/u/a;->a:[B

    new-array v0, v1, [B

    iput-object v0, p0, Lcom/sunrise/u/a;->b:[B

    iput-byte v1, p0, Lcom/sunrise/u/a;->e:B

    return-void

    nop

    :array_0
    .array-data 1
        0x55t
        -0x56t
    .end array-data
.end method


# virtual methods
.method public a(B)Lcom/sunrise/u/a;
    .locals 0

    iput-byte p1, p0, Lcom/sunrise/u/a;->c:B

    return-object p0
.end method

.method public a(Lcom/sunrise/r/d;)Lcom/sunrise/u/a;
    .locals 0

    iput-object p1, p0, Lcom/sunrise/u/a;->f:Lcom/sunrise/r/d;

    return-object p0
.end method

.method public a([BI)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x2

    const/4 v0, 0x0

    if-gtz p2, :cond_0

    move p2, v0

    :cond_0
    if-eqz p1, :cond_1

    array-length v1, p1

    sub-int/2addr v1, p2

    const/4 v2, 0x7

    if-ge v1, v2, :cond_2

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "\u6570\u636e\u683c\u5f0f\u4e0d\u6b63\u786e\uff0c\u957f\u5ea6\u5e94\u5f53\u5927\u4e8e7"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-array v1, v4, [B

    aget-byte v2, p1, p2

    aput-byte v2, v1, v0

    const/4 v2, 0x1

    add-int/lit8 v3, p2, 0x1

    aget-byte v3, p1, v3

    aput-byte v3, v1, v2

    invoke-virtual {p0, v1}, Lcom/sunrise/u/a;->d([B)Lcom/sunrise/u/a;

    add-int/lit8 v1, p2, 0x2

    invoke-static {v0, v1, v4, p1}, Lcom/sunrise/p/a;->a(ZII[B)I

    move-result v0

    add-int/lit8 v1, p2, 0x4

    aget-byte v1, p1, v1

    iput-byte v1, p0, Lcom/sunrise/u/a;->c:B

    add-int/lit8 v1, p2, 0x5

    aget-byte v1, p1, v1

    iput-byte v1, p0, Lcom/sunrise/u/a;->d:B

    add-int/lit8 v1, p2, 0x6

    add-int/lit8 v2, v0, -0x2

    invoke-virtual {p0, v1, v2, p1}, Lcom/sunrise/u/a;->b(II[B)Lcom/sunrise/u/a;

    add-int/lit8 v1, p2, 0x6

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x2

    aget-byte v0, p1, v0

    iput-byte v0, p0, Lcom/sunrise/u/a;->e:B

    return-void
.end method

.method public a()[B
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/sunrise/u/a;->b()[B

    move-result-object v0

    iget-object v1, p0, Lcom/sunrise/u/a;->a:[B

    array-length v1, v1

    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x2

    array-length v2, v0

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [B

    iget-object v2, p0, Lcom/sunrise/u/a;->a:[B

    iget-object v3, p0, Lcom/sunrise/u/a;->a:[B

    array-length v3, v3

    invoke-static {v2, v5, v1, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lcom/sunrise/u/a;->a:[B

    array-length v2, v2

    add-int/2addr v2, v5

    array-length v3, v0

    add-int/lit8 v3, v3, 0x2

    invoke-static {v3, v5}, Lcom/sunrise/p/a;->a(IZ)[B

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v3, v5, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v2, 0x2

    iget-byte v3, p0, Lcom/sunrise/u/a;->c:B

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    iget-byte v3, p0, Lcom/sunrise/u/a;->d:B

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    array-length v3, v0

    invoke-static {v0, v5, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    iget-byte v2, p0, Lcom/sunrise/u/a;->e:B

    aput-byte v2, v1, v0

    return-object v1
.end method

.method public b(B)Lcom/sunrise/u/a;
    .locals 0

    iput-byte p1, p0, Lcom/sunrise/u/a;->e:B

    return-object p0
.end method

.method public varargs b(II[B)Lcom/sunrise/u/a;
    .locals 2

    add-int v0, p1, p2

    array-length v1, p3

    if-le v0, v1, :cond_0

    array-length v0, p3

    sub-int p2, v0, p1

    :cond_0
    if-gez p2, :cond_1

    :goto_0
    return-object p0

    :cond_1
    new-array v0, p2, [B

    iput-object v0, p0, Lcom/sunrise/u/a;->b:[B

    iget-object v0, p0, Lcom/sunrise/u/a;->b:[B

    const/4 v1, 0x0

    invoke-static {p3, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public b([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sunrise/u/a;->a([BI)V

    return-void
.end method

.method public b()[B
    .locals 1

    iget-object v0, p0, Lcom/sunrise/u/a;->b:[B

    return-object v0
.end method

.method public c(B)Lcom/sunrise/u/a;
    .locals 0

    iput-byte p1, p0, Lcom/sunrise/u/a;->d:B

    return-object p0
.end method

.method public varargs c([B)Lcom/sunrise/u/a;
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/sunrise/u/a;->b(II[B)Lcom/sunrise/u/a;

    move-result-object v0

    return-object v0
.end method

.method public c()Z
    .locals 2

    iget-byte v0, p0, Lcom/sunrise/u/a;->c:B

    const/16 v1, -0x70

    if-eq v0, v1, :cond_0

    iget-byte v0, p0, Lcom/sunrise/u/a;->c:B

    const/16 v1, -0x5b

    if-eq v0, v1, :cond_0

    iget-byte v0, p0, Lcom/sunrise/u/a;->c:B

    const/16 v1, -0x5c

    if-eq v0, v1, :cond_0

    iget-byte v0, p0, Lcom/sunrise/u/a;->c:B

    const/16 v1, -0xe

    if-eq v0, v1, :cond_0

    iget-byte v0, p0, Lcom/sunrise/u/a;->c:B

    const/16 v1, -0x5a

    if-eq v0, v1, :cond_0

    iget-byte v0, p0, Lcom/sunrise/u/a;->c:B

    const/16 v1, -0x59

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()B
    .locals 1

    iget-byte v0, p0, Lcom/sunrise/u/a;->c:B

    return v0
.end method

.method public varargs d([B)Lcom/sunrise/u/a;
    .locals 0

    iput-object p1, p0, Lcom/sunrise/u/a;->a:[B

    return-object p0
.end method

.method public e()I
    .locals 1

    iget-object v0, p0, Lcom/sunrise/u/a;->b:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sunrise/u/a;->b:[B

    array-length v0, v0

    goto :goto_0
.end method

.method public f()B
    .locals 1

    iget-byte v0, p0, Lcom/sunrise/u/a;->d:B

    return v0
.end method
