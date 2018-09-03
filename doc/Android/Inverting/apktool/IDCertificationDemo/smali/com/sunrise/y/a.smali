.class public Lcom/sunrise/y/a;
.super Ljava/lang/Object;


# direct methods
.method public static a([BS[B[SI)I
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x0

    new-instance v0, Lcom/sunrise/y/b;

    invoke-direct {v0}, Lcom/sunrise/y/b;-><init>()V

    const-string v1, "B8D98B8075A6B4517C178663996EE122"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/sunrise/y/b;->a([B[B)[B

    move-result-object v0

    array-length v1, v0

    add-int/lit8 v1, v1, 0x4

    new-array v2, v5, [B

    invoke-static {v1, v4}, Lcom/sunrise/y/a;->a(IZ)[B

    move-result-object v2

    const/16 v3, -0x60

    aput-byte v3, p2, v4

    const/4 v3, 0x1

    invoke-static {v2, v4, p2, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v2, 0x3

    array-length v3, v0

    invoke-static {v0, v4, p2, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v1, -0x1

    const/16 v2, -0x50

    aput-byte v2, p2, v0

    int-to-short v0, v1

    aput-short v0, p3, v4

    return v4
.end method

.method public static a(B)V
    .locals 0

    return-void
.end method

.method public static a([B)V
    .locals 0

    return-void
.end method

.method public static a(IZ)[B
    .locals 6

    const/4 v5, 0x4

    const/4 v0, 0x0

    new-array v2, v5, [B

    move v1, v0

    :goto_0
    if-ge v0, v5, :cond_1

    add-int/lit8 v1, v1, -0x8

    if-eqz p1, :cond_0

    ushr-int v3, p0, v1

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    rsub-int/lit8 v3, v0, 0x3

    ushr-int v4, p0, v1

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    goto :goto_1

    :cond_1
    return-object v2
.end method

.method public static b([BS[B[SI)I
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/sunrise/y/b;

    invoke-direct {v0}, Lcom/sunrise/y/b;-><init>()V

    const-string v1, "B8D98B8075A6B4517C178663996EE122"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/sunrise/y/b;->b([B[B)[B

    move-result-object v0

    array-length v1, v0

    invoke-static {v0, v2, p2, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    int-to-short v0, v0

    aput-short v0, p3, v2

    return v2
.end method

.method public static b(B)V
    .locals 0

    return-void
.end method

.method public static b([B)V
    .locals 0

    return-void
.end method

.method public static c([BS[B[SI)I
    .locals 1

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sunrise/y/a;->a([BS[B[SI)I

    move-result v0

    return v0
.end method

.method public static c(B)V
    .locals 0

    return-void
.end method

.method public static c([B)V
    .locals 0

    return-void
.end method

.method public static d([BS[B[SI)I
    .locals 1

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sunrise/y/a;->b([BS[B[SI)I

    move-result v0

    return v0
.end method

.method public static d(B)V
    .locals 0

    return-void
.end method

.method public static d([B)V
    .locals 0

    invoke-static {p0}, Lcom/sunrise/y/a;->a([B)V

    return-void
.end method

.method public static e(B)V
    .locals 0

    return-void
.end method

.method public static e([B)V
    .locals 0

    invoke-static {p0}, Lcom/sunrise/y/a;->b([B)V

    return-void
.end method

.method public static f(B)V
    .locals 0

    invoke-static {p0}, Lcom/sunrise/y/a;->b(B)V

    return-void
.end method

.method public static g(B)V
    .locals 0

    invoke-static {p0}, Lcom/sunrise/y/a;->e(B)V

    return-void
.end method
