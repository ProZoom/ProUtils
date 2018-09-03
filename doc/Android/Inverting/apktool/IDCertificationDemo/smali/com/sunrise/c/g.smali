.class public Lcom/sunrise/c/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sunrise/c/f;


# instance fields
.field a:Lcom/sunrise/c/g;

.field final b:Lcom/sunrise/c/b;

.field c:I

.field d:[I

.field private e:I

.field private final f:I

.field private final g:I

.field private h:Lcom/sunrise/c/a;

.field private i:I

.field private j:I


# direct methods
.method public constructor <init>(Lcom/sunrise/c/b;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sunrise/c/a;

    invoke-direct {v0}, Lcom/sunrise/c/a;-><init>()V

    iput-object v0, p0, Lcom/sunrise/c/g;->h:Lcom/sunrise/c/a;

    iget-object v0, p1, Lcom/sunrise/c/b;->l:Lcom/sunrise/c/g;

    if-nez v0, :cond_0

    iput-object p0, p1, Lcom/sunrise/c/b;->l:Lcom/sunrise/c/g;

    :goto_0
    iput-object p0, p1, Lcom/sunrise/c/b;->m:Lcom/sunrise/c/g;

    iput-object p1, p0, Lcom/sunrise/c/g;->b:Lcom/sunrise/c/b;

    iput p2, p0, Lcom/sunrise/c/g;->e:I

    invoke-virtual {p1, p3}, Lcom/sunrise/c/b;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sunrise/c/g;->f:I

    invoke-virtual {p1, p4}, Lcom/sunrise/c/b;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sunrise/c/g;->g:I

    if-eqz p6, :cond_1

    array-length v0, p6

    if-lez v0, :cond_1

    array-length v0, p6

    iput v0, p0, Lcom/sunrise/c/g;->c:I

    iget v0, p0, Lcom/sunrise/c/g;->c:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sunrise/c/g;->d:[I

    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/sunrise/c/g;->c:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/sunrise/c/g;->d:[I

    aget-object v2, p6, v0

    invoke-virtual {p1, v2}, Lcom/sunrise/c/b;->b(Ljava/lang/String;)Lcom/sunrise/c/d;

    move-result-object v2

    iget v2, v2, Lcom/sunrise/c/d;->a:I

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    iget-object v0, p1, Lcom/sunrise/c/b;->m:Lcom/sunrise/c/g;

    iput-object p0, v0, Lcom/sunrise/c/g;->a:Lcom/sunrise/c/g;

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/sunrise/c/g;->h:Lcom/sunrise/c/a;

    invoke-virtual {v0, p1}, Lcom/sunrise/c/a;->a(I)Lcom/sunrise/c/a;

    return-void
.end method

.method public a(II)V
    .locals 1

    iget-object v0, p0, Lcom/sunrise/c/g;->h:Lcom/sunrise/c/a;

    invoke-virtual {v0, p1, p2}, Lcom/sunrise/c/a;->a(II)Lcom/sunrise/c/a;

    return-void
.end method

.method public a(ILcom/sunrise/c/e;)V
    .locals 2

    iget v0, p2, Lcom/sunrise/c/e;->a:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    iget v0, p2, Lcom/sunrise/c/e;->b:I

    iget-object v1, p0, Lcom/sunrise/c/g;->h:Lcom/sunrise/c/a;

    iget v1, v1, Lcom/sunrise/c/a;->b:I

    sub-int/2addr v0, v1

    const/16 v1, -0x8000

    if-ge v0, v1, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/sunrise/c/g;->h:Lcom/sunrise/c/a;

    invoke-virtual {v0, p1}, Lcom/sunrise/c/a;->a(I)Lcom/sunrise/c/a;

    iget-object v0, p0, Lcom/sunrise/c/g;->h:Lcom/sunrise/c/a;

    iget-object v1, p0, Lcom/sunrise/c/g;->h:Lcom/sunrise/c/a;

    iget v1, v1, Lcom/sunrise/c/a;->b:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p2, p0, v0, v1}, Lcom/sunrise/c/e;->a(Lcom/sunrise/c/g;Lcom/sunrise/c/a;I)V

    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/sunrise/c/g;->b:Lcom/sunrise/c/b;

    invoke-virtual {v0, p2}, Lcom/sunrise/c/b;->b(Ljava/lang/String;)Lcom/sunrise/c/d;

    move-result-object v0

    iget-object v1, p0, Lcom/sunrise/c/g;->h:Lcom/sunrise/c/a;

    iget v0, v0, Lcom/sunrise/c/d;->a:I

    invoke-virtual {v1, p1, v0}, Lcom/sunrise/c/a;->b(II)Lcom/sunrise/c/a;

    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/sunrise/c/g;->b:Lcom/sunrise/c/b;

    invoke-virtual {v0, p2, p3, p4}, Lcom/sunrise/c/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sunrise/c/d;

    move-result-object v0

    iget-object v1, p0, Lcom/sunrise/c/g;->h:Lcom/sunrise/c/a;

    iget v0, v0, Lcom/sunrise/c/d;->a:I

    invoke-virtual {v1, p1, v0}, Lcom/sunrise/c/a;->b(II)Lcom/sunrise/c/a;

    return-void
.end method

.method final a(Lcom/sunrise/c/a;)V
    .locals 4

    const/4 v1, 0x0

    iget v0, p0, Lcom/sunrise/c/g;->e:I

    const v2, -0x60001

    and-int/2addr v0, v2

    invoke-virtual {p1, v0}, Lcom/sunrise/c/a;->b(I)Lcom/sunrise/c/a;

    move-result-object v0

    iget v2, p0, Lcom/sunrise/c/g;->f:I

    invoke-virtual {v0, v2}, Lcom/sunrise/c/a;->b(I)Lcom/sunrise/c/a;

    move-result-object v0

    iget v2, p0, Lcom/sunrise/c/g;->g:I

    invoke-virtual {v0, v2}, Lcom/sunrise/c/a;->b(I)Lcom/sunrise/c/a;

    iget-object v0, p0, Lcom/sunrise/c/g;->h:Lcom/sunrise/c/a;

    iget v0, v0, Lcom/sunrise/c/a;->b:I

    if-lez v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    iget v2, p0, Lcom/sunrise/c/g;->c:I

    if-lez v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    invoke-virtual {p1, v0}, Lcom/sunrise/c/a;->b(I)Lcom/sunrise/c/a;

    iget-object v0, p0, Lcom/sunrise/c/g;->h:Lcom/sunrise/c/a;

    iget v0, v0, Lcom/sunrise/c/a;->b:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/sunrise/c/g;->h:Lcom/sunrise/c/a;

    iget v0, v0, Lcom/sunrise/c/a;->b:I

    add-int/lit8 v0, v0, 0xc

    add-int/lit8 v0, v0, 0x0

    iget-object v2, p0, Lcom/sunrise/c/g;->b:Lcom/sunrise/c/b;

    const-string v3, "Code"

    invoke-virtual {v2, v3}, Lcom/sunrise/c/b;->a(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/sunrise/c/a;->b(I)Lcom/sunrise/c/a;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sunrise/c/a;->c(I)Lcom/sunrise/c/a;

    iget v0, p0, Lcom/sunrise/c/g;->i:I

    invoke-virtual {p1, v0}, Lcom/sunrise/c/a;->b(I)Lcom/sunrise/c/a;

    move-result-object v0

    iget v2, p0, Lcom/sunrise/c/g;->j:I

    invoke-virtual {v0, v2}, Lcom/sunrise/c/a;->b(I)Lcom/sunrise/c/a;

    iget-object v0, p0, Lcom/sunrise/c/g;->h:Lcom/sunrise/c/a;

    iget v0, v0, Lcom/sunrise/c/a;->b:I

    invoke-virtual {p1, v0}, Lcom/sunrise/c/a;->c(I)Lcom/sunrise/c/a;

    move-result-object v0

    iget-object v2, p0, Lcom/sunrise/c/g;->h:Lcom/sunrise/c/a;

    iget-object v2, v2, Lcom/sunrise/c/a;->a:[B

    iget-object v3, p0, Lcom/sunrise/c/g;->h:Lcom/sunrise/c/a;

    iget v3, v3, Lcom/sunrise/c/a;->b:I

    invoke-virtual {v0, v2, v1, v3}, Lcom/sunrise/c/a;->a([BII)Lcom/sunrise/c/a;

    invoke-virtual {p1, v1}, Lcom/sunrise/c/a;->b(I)Lcom/sunrise/c/a;

    invoke-virtual {p1, v1}, Lcom/sunrise/c/a;->b(I)Lcom/sunrise/c/a;

    :cond_1
    iget v0, p0, Lcom/sunrise/c/g;->c:I

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/sunrise/c/g;->b:Lcom/sunrise/c/b;

    const-string v2, "Exceptions"

    invoke-virtual {v0, v2}, Lcom/sunrise/c/b;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sunrise/c/a;->b(I)Lcom/sunrise/c/a;

    move-result-object v0

    iget v2, p0, Lcom/sunrise/c/g;->c:I

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v2}, Lcom/sunrise/c/a;->c(I)Lcom/sunrise/c/a;

    iget v0, p0, Lcom/sunrise/c/g;->c:I

    invoke-virtual {p1, v0}, Lcom/sunrise/c/a;->b(I)Lcom/sunrise/c/a;

    :goto_1
    iget v0, p0, Lcom/sunrise/c/g;->c:I

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/sunrise/c/g;->d:[I

    aget v0, v0, v1

    invoke-virtual {p1, v0}, Lcom/sunrise/c/a;->b(I)Lcom/sunrise/c/a;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public a(Lcom/sunrise/c/e;)V
    .locals 2

    iget-object v0, p0, Lcom/sunrise/c/g;->h:Lcom/sunrise/c/a;

    iget v0, v0, Lcom/sunrise/c/a;->b:I

    iget-object v1, p0, Lcom/sunrise/c/g;->h:Lcom/sunrise/c/a;

    iget-object v1, v1, Lcom/sunrise/c/a;->a:[B

    invoke-virtual {p1, p0, v0, v1}, Lcom/sunrise/c/e;->a(Lcom/sunrise/c/g;I[B)V

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/sunrise/c/g;->b:Lcom/sunrise/c/b;

    invoke-virtual {v0, p1}, Lcom/sunrise/c/b;->a(Ljava/lang/Object;)Lcom/sunrise/c/d;

    move-result-object v0

    iget v1, v0, Lcom/sunrise/c/d;->a:I

    iget v2, v0, Lcom/sunrise/c/d;->b:I

    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    iget v0, v0, Lcom/sunrise/c/d;->b:I

    const/4 v2, 0x6

    if-ne v0, v2, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sunrise/c/g;->h:Lcom/sunrise/c/a;

    const/16 v2, 0x14

    invoke-virtual {v0, v2, v1}, Lcom/sunrise/c/a;->b(II)Lcom/sunrise/c/a;

    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x100

    if-lt v1, v0, :cond_2

    iget-object v0, p0, Lcom/sunrise/c/g;->h:Lcom/sunrise/c/a;

    const/16 v2, 0x13

    invoke-virtual {v0, v2, v1}, Lcom/sunrise/c/a;->b(II)Lcom/sunrise/c/a;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sunrise/c/g;->h:Lcom/sunrise/c/a;

    const/16 v2, 0x12

    invoke-virtual {v0, v2, v1}, Lcom/sunrise/c/a;->a(II)Lcom/sunrise/c/a;

    goto :goto_0
.end method

.method final b()I
    .locals 3

    const/16 v0, 0x8

    iget-object v1, p0, Lcom/sunrise/c/g;->h:Lcom/sunrise/c/a;

    iget v1, v1, Lcom/sunrise/c/a;->b:I

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/sunrise/c/g;->b:Lcom/sunrise/c/b;

    const-string v2, "Code"

    invoke-virtual {v1, v2}, Lcom/sunrise/c/b;->a(Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sunrise/c/g;->h:Lcom/sunrise/c/a;

    iget v1, v1, Lcom/sunrise/c/a;->b:I

    add-int/lit8 v1, v1, 0x12

    add-int/lit8 v1, v1, 0x0

    add-int/2addr v0, v1

    :cond_0
    iget v1, p0, Lcom/sunrise/c/g;->c:I

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/sunrise/c/g;->b:Lcom/sunrise/c/b;

    const-string v2, "Exceptions"

    invoke-virtual {v1, v2}, Lcom/sunrise/c/b;->a(Ljava/lang/String;)I

    iget v1, p0, Lcom/sunrise/c/g;->c:I

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    :cond_1
    return v0
.end method

.method public b(II)V
    .locals 2

    const/4 v0, 0x4

    if-ge p2, v0, :cond_1

    const/16 v0, 0xa9

    if-eq p1, v0, :cond_1

    const/16 v0, 0x36

    if-ge p1, v0, :cond_0

    add-int/lit8 v0, p1, -0x15

    shl-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1a

    add-int/2addr v0, p2

    :goto_0
    iget-object v1, p0, Lcom/sunrise/c/g;->h:Lcom/sunrise/c/a;

    invoke-virtual {v1, v0}, Lcom/sunrise/c/a;->a(I)Lcom/sunrise/c/a;

    :goto_1
    return-void

    :cond_0
    add-int/lit8 v0, p1, -0x36

    shl-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x3b

    add-int/2addr v0, p2

    goto :goto_0

    :cond_1
    const/16 v0, 0x100

    if-lt p2, v0, :cond_2

    iget-object v0, p0, Lcom/sunrise/c/g;->h:Lcom/sunrise/c/a;

    const/16 v1, 0xc4

    invoke-virtual {v0, v1}, Lcom/sunrise/c/a;->a(I)Lcom/sunrise/c/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sunrise/c/a;->b(II)Lcom/sunrise/c/a;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/sunrise/c/g;->h:Lcom/sunrise/c/a;

    invoke-virtual {v0, p1, p2}, Lcom/sunrise/c/a;->a(II)Lcom/sunrise/c/a;

    goto :goto_1
.end method

.method public b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/16 v4, 0xb9

    const/4 v1, 0x0

    if-ne p1, v4, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lcom/sunrise/c/g;->b:Lcom/sunrise/c/b;

    invoke-virtual {v2, p2, p3, p4, v0}, Lcom/sunrise/c/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/sunrise/c/d;

    move-result-object v3

    iget v2, v3, Lcom/sunrise/c/d;->c:I

    if-eqz v0, :cond_1

    if-nez v2, :cond_2

    invoke-static {p4}, Lcom/sunrise/c/h;->b(Ljava/lang/String;)I

    move-result v0

    iput v0, v3, Lcom/sunrise/c/d;->c:I

    :goto_1
    iget-object v2, p0, Lcom/sunrise/c/g;->h:Lcom/sunrise/c/a;

    iget v3, v3, Lcom/sunrise/c/d;->a:I

    invoke-virtual {v2, v4, v3}, Lcom/sunrise/c/a;->b(II)Lcom/sunrise/c/a;

    move-result-object v2

    shr-int/lit8 v0, v0, 0x2

    invoke-virtual {v2, v0, v1}, Lcom/sunrise/c/a;->a(II)Lcom/sunrise/c/a;

    :goto_2
    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sunrise/c/g;->h:Lcom/sunrise/c/a;

    iget v1, v3, Lcom/sunrise/c/d;->a:I

    invoke-virtual {v0, p1, v1}, Lcom/sunrise/c/a;->b(II)Lcom/sunrise/c/a;

    goto :goto_2

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method public c(II)V
    .locals 2

    iget-object v0, p0, Lcom/sunrise/c/g;->h:Lcom/sunrise/c/a;

    const/16 v1, 0x84

    invoke-virtual {v0, v1}, Lcom/sunrise/c/a;->a(I)Lcom/sunrise/c/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sunrise/c/a;->a(II)Lcom/sunrise/c/a;

    return-void
.end method

.method public d(II)V
    .locals 0

    iput p1, p0, Lcom/sunrise/c/g;->i:I

    iput p2, p0, Lcom/sunrise/c/g;->j:I

    return-void
.end method
