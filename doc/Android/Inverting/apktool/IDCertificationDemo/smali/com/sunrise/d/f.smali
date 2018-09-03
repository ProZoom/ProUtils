.class public final Lcom/sunrise/d/f;
.super Lcom/sunrise/d/e;


# static fields
.field private static final r:Ljava/lang/ThreadLocal;


# instance fields
.field private s:Ljava/io/Reader;

.field private t:[C

.field private u:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/sunrise/d/f;->r:Ljava/lang/ThreadLocal;

    return-void
.end method


# virtual methods
.method public B()Z
    .locals 2

    iget v0, p0, Lcom/sunrise/d/f;->u:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sunrise/d/f;->e:I

    iget-object v1, p0, Lcom/sunrise/d/f;->t:[C

    array-length v1, v1

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/sunrise/d/f;->d:C

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/sunrise/d/f;->e:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/sunrise/d/f;->t:[C

    array-length v1, v1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(CI)I
    .locals 3

    iget v0, p0, Lcom/sunrise/d/f;->e:I

    sub-int v0, p2, v0

    :goto_0
    iget v1, p0, Lcom/sunrise/d/f;->e:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/sunrise/d/f;->d(I)C

    move-result v1

    if-ne p1, v1, :cond_0

    iget v1, p0, Lcom/sunrise/d/f;->e:I

    add-int/2addr v0, v1

    :goto_1
    return v0

    :cond_0
    const/16 v2, 0x1a

    if-ne v1, v2, :cond_1

    const/4 v0, -0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final a(II)Ljava/lang/String;
    .locals 2

    if-gez p2, :cond_0

    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/sunrise/d/f;->t:[C

    invoke-direct {v0, v1, p1, p2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public final a(IIILcom/sunrise/d/k;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sunrise/d/f;->t:[C

    invoke-virtual {p4, v0, p1, p2, p3}, Lcom/sunrise/d/k;->a([CIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final a(II[C)V
    .locals 2

    iget-object v0, p0, Lcom/sunrise/d/f;->t:[C

    const/4 v1, 0x0

    invoke-static {v0, p1, p3, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method protected final a(I[CII)V
    .locals 1

    iget-object v0, p0, Lcom/sunrise/d/f;->t:[C

    invoke-static {v0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public final b(II)[C
    .locals 3

    if-gez p2, :cond_0

    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/sunrise/d/f;->t:[C

    :goto_0
    return-object v0

    :cond_1
    new-array v0, p2, [C

    iget-object v1, p0, Lcom/sunrise/d/f;->t:[C

    const/4 v2, 0x0

    invoke-static {v1, p1, v0, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public close()V
    .locals 2

    invoke-super {p0}, Lcom/sunrise/d/e;->close()V

    iget-object v0, p0, Lcom/sunrise/d/f;->t:[C

    array-length v0, v0

    const v1, 0x8000

    if-gt v0, v1, :cond_0

    sget-object v0, Lcom/sunrise/d/f;->r:Ljava/lang/ThreadLocal;

    iget-object v1, p0, Lcom/sunrise/d/f;->t:[C

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sunrise/d/f;->t:[C

    iget-object v0, p0, Lcom/sunrise/d/f;->s:Ljava/io/Reader;

    invoke-static {v0}, Lcom/sunrise/h/d;->a(Ljava/io/Closeable;)V

    return-void
.end method

.method public final d(I)C
    .locals 7

    const/16 v0, 0x1a

    const/4 v6, -0x1

    const/4 v5, 0x0

    iget v1, p0, Lcom/sunrise/d/f;->u:I

    if-lt p1, v1, :cond_2

    iget v1, p0, Lcom/sunrise/d/f;->u:I

    if-ne v1, v6, :cond_1

    iget v1, p0, Lcom/sunrise/d/f;->h:I

    if-ge p1, v1, :cond_0

    iget-object v0, p0, Lcom/sunrise/d/f;->t:[C

    aget-char v0, v0, p1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/sunrise/d/f;->e:I

    if-nez v1, :cond_3

    iget-object v0, p0, Lcom/sunrise/d/f;->t:[C

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    iget-object v1, p0, Lcom/sunrise/d/f;->t:[C

    iget v2, p0, Lcom/sunrise/d/f;->e:I

    iget v3, p0, Lcom/sunrise/d/f;->u:I

    invoke-static {v1, v2, v0, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v0

    iget v2, p0, Lcom/sunrise/d/f;->u:I

    sub-int/2addr v1, v2

    :try_start_0
    iget-object v2, p0, Lcom/sunrise/d/f;->s:Ljava/io/Reader;

    iget v3, p0, Lcom/sunrise/d/f;->u:I

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/Reader;->read([CII)I

    move-result v1

    iget v2, p0, Lcom/sunrise/d/f;->u:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/sunrise/d/f;->u:I

    iput-object v0, p0, Lcom/sunrise/d/f;->t:[C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/sunrise/d/f;->t:[C

    aget-char v0, v0, p1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/sunrise/a/d;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_3
    iget v1, p0, Lcom/sunrise/d/f;->u:I

    iget v2, p0, Lcom/sunrise/d/f;->e:I

    sub-int/2addr v1, v2

    if-lez v1, :cond_4

    iget-object v2, p0, Lcom/sunrise/d/f;->t:[C

    iget v3, p0, Lcom/sunrise/d/f;->e:I

    iget-object v4, p0, Lcom/sunrise/d/f;->t:[C

    invoke-static {v2, v3, v4, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    :try_start_1
    iget-object v2, p0, Lcom/sunrise/d/f;->s:Ljava/io/Reader;

    iget-object v3, p0, Lcom/sunrise/d/f;->t:[C

    iget-object v4, p0, Lcom/sunrise/d/f;->t:[C

    array-length v4, v4

    sub-int/2addr v4, v1

    invoke-virtual {v2, v3, v1, v4}, Ljava/io/Reader;->read([CII)I

    move-result v2

    iput v2, p0, Lcom/sunrise/d/f;->u:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    iget v2, p0, Lcom/sunrise/d/f;->u:I

    if-nez v2, :cond_5

    new-instance v0, Lcom/sunrise/a/d;

    const-string v1, "illegal state, textLength is zero"

    invoke-direct {v0, v1}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    new-instance v1, Lcom/sunrise/a/d;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_5
    iget v2, p0, Lcom/sunrise/d/f;->u:I

    if-eq v2, v6, :cond_0

    iget v0, p0, Lcom/sunrise/d/f;->u:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sunrise/d/f;->u:I

    iget v0, p0, Lcom/sunrise/d/f;->e:I

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/sunrise/d/f;->i:I

    iget v1, p0, Lcom/sunrise/d/f;->e:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sunrise/d/f;->i:I

    iput v5, p0, Lcom/sunrise/d/f;->e:I

    goto :goto_1
.end method

.method public final f()C
    .locals 9

    const/16 v1, 0x1a

    const/4 v5, 0x0

    const/4 v8, -0x1

    iget v0, p0, Lcom/sunrise/d/f;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sunrise/d/f;->e:I

    iget v2, p0, Lcom/sunrise/d/f;->u:I

    if-lt v0, v2, :cond_6

    iget v0, p0, Lcom/sunrise/d/f;->u:I

    if-ne v0, v8, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sunrise/d/f;->h:I

    if-lez v0, :cond_2

    iget v0, p0, Lcom/sunrise/d/f;->u:I

    iget v2, p0, Lcom/sunrise/d/f;->h:I

    sub-int/2addr v0, v2

    iget-char v2, p0, Lcom/sunrise/d/f;->d:C

    const/16 v3, 0x22

    if-ne v2, v3, :cond_1

    add-int/lit8 v0, v0, -0x1

    :cond_1
    iget-object v2, p0, Lcom/sunrise/d/f;->t:[C

    iget-object v3, p0, Lcom/sunrise/d/f;->t:[C

    iget v4, p0, Lcom/sunrise/d/f;->h:I

    invoke-static {v2, v0, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    iput v8, p0, Lcom/sunrise/d/f;->i:I

    iget v0, p0, Lcom/sunrise/d/f;->h:I

    iput v0, p0, Lcom/sunrise/d/f;->e:I

    :try_start_0
    iget v3, p0, Lcom/sunrise/d/f;->e:I

    iget-object v2, p0, Lcom/sunrise/d/f;->t:[C

    array-length v2, v2

    sub-int/2addr v2, v3

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/sunrise/d/f;->t:[C

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [C

    iget-object v4, p0, Lcom/sunrise/d/f;->t:[C

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/sunrise/d/f;->t:[C

    array-length v7, v7

    invoke-static {v4, v5, v2, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lcom/sunrise/d/f;->t:[C

    iget-object v2, p0, Lcom/sunrise/d/f;->t:[C

    array-length v2, v2

    sub-int/2addr v2, v3

    :cond_3
    iget-object v3, p0, Lcom/sunrise/d/f;->s:Ljava/io/Reader;

    iget-object v4, p0, Lcom/sunrise/d/f;->t:[C

    iget v5, p0, Lcom/sunrise/d/f;->e:I

    invoke-virtual {v3, v4, v5, v2}, Ljava/io/Reader;->read([CII)I

    move-result v2

    iput v2, p0, Lcom/sunrise/d/f;->u:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget v2, p0, Lcom/sunrise/d/f;->u:I

    if-nez v2, :cond_4

    new-instance v0, Lcom/sunrise/a/d;

    const-string v1, "illegal stat, textLength is zero"

    invoke-direct {v0, v1}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/sunrise/a/d;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_4
    iget v2, p0, Lcom/sunrise/d/f;->u:I

    if-ne v2, v8, :cond_5

    iput-char v1, p0, Lcom/sunrise/d/f;->d:C

    move v0, v1

    goto :goto_0

    :cond_5
    iget v1, p0, Lcom/sunrise/d/f;->u:I

    iget v2, p0, Lcom/sunrise/d/f;->e:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/sunrise/d/f;->u:I

    :cond_6
    iget-object v1, p0, Lcom/sunrise/d/f;->t:[C

    aget-char v0, v1, v0

    iput-char v0, p0, Lcom/sunrise/d/f;->d:C

    goto :goto_0
.end method

.method public final h([C)Z
    .locals 4

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    iget v2, p0, Lcom/sunrise/d/f;->e:I

    add-int/2addr v2, v0

    invoke-virtual {p0, v2}, Lcom/sunrise/d/f;->d(I)C

    move-result v2

    aget-char v3, p1, v0

    if-eq v2, v3, :cond_0

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public final l()Ljava/lang/String;
    .locals 4

    iget-boolean v0, p0, Lcom/sunrise/d/f;->j:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/sunrise/d/f;->i:I

    add-int/lit8 v1, v0, 0x1

    if-gez v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/sunrise/d/f;->t:[C

    array-length v0, v0

    iget v2, p0, Lcom/sunrise/d/f;->h:I

    sub-int/2addr v0, v2

    if-le v1, v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/sunrise/d/f;->t:[C

    iget v3, p0, Lcom/sunrise/d/f;->h:I

    invoke-direct {v0, v2, v1, v3}, Ljava/lang/String;-><init>([CII)V

    :goto_0
    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/sunrise/d/f;->g:[C

    const/4 v2, 0x0

    iget v3, p0, Lcom/sunrise/d/f;->h:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0
.end method

.method public final s()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lcom/sunrise/d/f;->i:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    iget v1, p0, Lcom/sunrise/d/f;->h:I

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/sunrise/d/f;->d(I)C

    move-result v2

    iget v1, p0, Lcom/sunrise/d/f;->h:I

    const/16 v3, 0x4c

    if-eq v2, v3, :cond_1

    const/16 v3, 0x53

    if-eq v2, v3, :cond_1

    const/16 v3, 0x42

    if-eq v2, v3, :cond_1

    const/16 v3, 0x46

    if-eq v2, v3, :cond_1

    const/16 v3, 0x44

    if-ne v2, v3, :cond_2

    :cond_1
    add-int/lit8 v1, v1, -0x1

    :cond_2
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/sunrise/d/f;->t:[C

    invoke-direct {v2, v3, v0, v1}, Ljava/lang/String;-><init>([CII)V

    return-object v2
.end method

.method public t()[B
    .locals 3

    iget-object v0, p0, Lcom/sunrise/d/f;->t:[C

    iget v1, p0, Lcom/sunrise/d/f;->i:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/sunrise/d/f;->h:I

    invoke-static {v0, v1, v2}, Lcom/sunrise/h/d;->a([CII)[B

    move-result-object v0

    return-object v0
.end method
