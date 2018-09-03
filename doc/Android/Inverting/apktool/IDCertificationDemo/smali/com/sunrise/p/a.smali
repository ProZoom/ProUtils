.class public Lcom/sunrise/p/a;
.super Ljava/lang/Object;


# direct methods
.method public static varargs a(ZII[B)I
    .locals 6

    const/4 v1, 0x4

    const/4 v0, 0x0

    new-array v4, v1, [B

    if-ltz p1, :cond_0

    array-length v2, p3

    if-lt p1, v2, :cond_1

    :cond_0
    move p1, v0

    :cond_1
    add-int v2, p1, p2

    array-length v3, p3

    if-lt v2, v3, :cond_8

    array-length v2, p3

    sub-int/2addr v2, p1

    :goto_0
    if-le v2, v1, :cond_7

    :goto_1
    const/4 v2, 0x3

    move v3, v2

    :goto_2
    if-gez v3, :cond_2

    move v1, v0

    :goto_3
    array-length v2, v4

    if-lt v0, v2, :cond_6

    return v1

    :cond_2
    if-eqz p0, :cond_4

    rsub-int/lit8 v5, v3, 0x3

    if-le v1, v3, :cond_3

    add-int v2, p1, v1

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v3

    aget-byte v2, p3, v2

    :goto_4
    aput-byte v2, v4, v5

    :goto_5
    add-int/lit8 v2, v3, -0x1

    move v3, v2

    goto :goto_2

    :cond_3
    move v2, v0

    goto :goto_4

    :cond_4
    rsub-int/lit8 v5, v3, 0x3

    if-le v1, v3, :cond_5

    add-int v2, p1, v3

    aget-byte v2, p3, v2

    :goto_6
    aput-byte v2, v4, v5

    goto :goto_5

    :cond_5
    move v2, v0

    goto :goto_6

    :cond_6
    shl-int/lit8 v1, v1, 0x8

    aget-byte v2, v4, v0

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    move v1, v2

    goto :goto_1

    :cond_8
    move v2, p2

    goto :goto_0
.end method

.method public static a(I)[B
    .locals 5

    const/4 v4, 0x4

    const/4 v0, 0x0

    new-array v2, v4, [B

    move v1, v0

    :goto_0
    if-lt v0, v4, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, -0x8

    ushr-int v3, p0, v1

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static a(IZ)[B
    .locals 6

    const/4 v5, 0x4

    const/4 v0, 0x0

    new-array v2, v5, [B

    move v1, v0

    :goto_0
    if-lt v0, v5, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, -0x8

    if-eqz p1, :cond_1

    ushr-int v3, p0, v1

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    rsub-int/lit8 v3, v0, 0x3

    ushr-int v4, p0, v1

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    goto :goto_1
.end method
