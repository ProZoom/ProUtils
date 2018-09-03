.class public Lcom/sunrise/c/e;
.super Ljava/lang/Object;


# instance fields
.field a:I

.field b:I

.field private c:I

.field private d:[I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(II)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sunrise/c/e;->d:[I

    if-nez v0, :cond_0

    const/4 v0, 0x6

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sunrise/c/e;->d:[I

    :cond_0
    iget v0, p0, Lcom/sunrise/c/e;->c:I

    iget-object v1, p0, Lcom/sunrise/c/e;->d:[I

    array-length v1, v1

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/sunrise/c/e;->d:[I

    array-length v0, v0

    add-int/lit8 v0, v0, 0x6

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/sunrise/c/e;->d:[I

    iget-object v2, p0, Lcom/sunrise/c/e;->d:[I

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/sunrise/c/e;->d:[I

    :cond_1
    iget-object v0, p0, Lcom/sunrise/c/e;->d:[I

    iget v1, p0, Lcom/sunrise/c/e;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sunrise/c/e;->c:I

    aput p1, v0, v1

    iget-object v0, p0, Lcom/sunrise/c/e;->d:[I

    iget v1, p0, Lcom/sunrise/c/e;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sunrise/c/e;->c:I

    aput p2, v0, v1

    return-void
.end method


# virtual methods
.method a(Lcom/sunrise/c/g;I[B)V
    .locals 5

    iget v0, p0, Lcom/sunrise/c/e;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sunrise/c/e;->a:I

    iput p2, p0, Lcom/sunrise/c/e;->b:I

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/sunrise/c/e;->c:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sunrise/c/e;->d:[I

    add-int/lit8 v2, v0, 0x1

    aget v1, v1, v0

    iget-object v3, p0, Lcom/sunrise/c/e;->d:[I

    add-int/lit8 v0, v2, 0x1

    aget v2, v3, v2

    sub-int v1, p2, v1

    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v4, v1, 0x8

    int-to-byte v4, v4

    aput-byte v4, p3, v2

    int-to-byte v1, v1

    aput-byte v1, p3, v3

    goto :goto_0

    :cond_0
    return-void
.end method

.method a(Lcom/sunrise/c/g;Lcom/sunrise/c/a;I)V
    .locals 1

    iget v0, p0, Lcom/sunrise/c/e;->a:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    iget v0, p2, Lcom/sunrise/c/a;->b:I

    invoke-direct {p0, p3, v0}, Lcom/sunrise/c/e;->a(II)V

    const/4 v0, -0x1

    invoke-virtual {p2, v0}, Lcom/sunrise/c/a;->b(I)Lcom/sunrise/c/a;

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/sunrise/c/e;->b:I

    sub-int/2addr v0, p3

    invoke-virtual {p2, v0}, Lcom/sunrise/c/a;->b(I)Lcom/sunrise/c/a;

    goto :goto_0
.end method
