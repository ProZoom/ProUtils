.class public Lcom/sunrise/v/a;
.super Ljava/lang/Object;


# direct methods
.method private static a(C)B
    .locals 1

    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    int-to-byte v0, v0

    return v0
.end method

.method public static a([BII)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x10

    const/4 v1, 0x1

    invoke-static {p0, p1, p2, v0, v1}, Lcom/sunrise/v/a;->a([BIIIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a([BIII)Ljava/lang/String;
    .locals 5

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p0, :cond_0

    array-length v0, p0

    if-gtz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    if-gez p1, :cond_2

    const/4 p1, 0x4

    :cond_2
    move v0, p2

    :goto_1
    add-int v2, p2, p3

    if-ge v0, v2, :cond_5

    array-length v2, p0

    if-ge v0, v2, :cond_5

    if-lez p1, :cond_3

    sub-int v2, v0, p2

    rem-int/2addr v2, p1

    if-nez v2, :cond_3

    if-le v0, p2, :cond_3

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_4

    const/16 v3, 0x30

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a([BIIIZ)Ljava/lang/String;
    .locals 9

    const/4 v8, 0x6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    if-gtz p2, :cond_4

    array-length v0, p0

    sub-int v1, v0, p1

    :goto_0
    if-lez p3, :cond_0

    if-gt p3, v1, :cond_0

    move v0, p3

    :goto_1
    move v5, p1

    :goto_2
    add-int v2, p1, v1

    if-ge v5, v2, :cond_3

    array-length v2, p0

    if-ge v5, v2, :cond_3

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v8, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    :goto_3
    if-ge v3, v8, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move-object v2, v4

    goto :goto_3

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    const-string v3, "0x"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0, v5, v0, v0, p4}, Lcom/sunrise/v/a;->b([BIIIZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-lez p3, :cond_2

    const-string v2, "\n"

    :goto_4
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int v2, v5, v0

    move v5, v2

    goto :goto_2

    :cond_2
    const-string v2, ""

    goto :goto_4

    :cond_3
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    move v1, p2

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)[B
    .locals 6

    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return-object v0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v2, v1, 0x2

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    new-array v0, v2, [B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    mul-int/lit8 v4, v1, 0x2

    aget-char v5, v3, v4

    invoke-static {v5}, Lcom/sunrise/v/a;->a(C)B

    move-result v5

    shl-int/lit8 v5, v5, 0x4

    add-int/lit8 v4, v4, 0x1

    aget-char v4, v3, v4

    invoke-static {v4}, Lcom/sunrise/v/a;->a(C)B

    move-result v4

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static b([BIIIZ)Ljava/lang/String;
    .locals 9

    const/4 v8, 0x2

    const-string v2, ""

    const-string v0, ""

    const/4 v3, 0x0

    move v4, p1

    :goto_0
    add-int v1, p1, p2

    if-ge v4, v1, :cond_6

    array-length v1, p0

    if-ge v4, v1, :cond_6

    aget-byte v5, p0, v4

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v6, v8, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz p4, :cond_3

    const/16 v1, 0x21

    if-lt v5, v1, :cond_2

    const/16 v1, 0x2f

    if-le v5, v1, :cond_1

    const/16 v1, 0x3a

    if-lt v5, v1, :cond_2

    :cond_1
    const/16 v1, 0x60

    if-eq v5, v1, :cond_2

    const/16 v1, 0x7e

    if-le v5, v1, :cond_5

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v8, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    int-to-char v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_6
    if-ge v3, p3, :cond_7

    move-object v1, v2

    move v2, v3

    :goto_3
    if-ge v2, p3, :cond_8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "   "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v3

    goto :goto_3

    :cond_7
    move-object v1, v2

    :cond_8
    if-eqz p4, :cond_9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4
    return-object v0

    :cond_9
    move-object v0, v1

    goto :goto_4
.end method
