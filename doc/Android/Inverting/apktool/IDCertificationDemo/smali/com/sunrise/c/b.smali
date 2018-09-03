.class public Lcom/sunrise/c/b;
.super Ljava/lang/Object;


# instance fields
.field a:I

.field b:I

.field final c:Lcom/sunrise/c/a;

.field d:[Lcom/sunrise/c/d;

.field e:I

.field final f:Lcom/sunrise/c/d;

.field final g:Lcom/sunrise/c/d;

.field final h:Lcom/sunrise/c/d;

.field i:Ljava/lang/String;

.field j:Lcom/sunrise/c/c;

.field k:Lcom/sunrise/c/c;

.field l:Lcom/sunrise/c/g;

.field m:Lcom/sunrise/c/g;

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sunrise/c/b;-><init>(I)V

    return-void
.end method

.method private constructor <init>(I)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/sunrise/c/b;->b:I

    new-instance v0, Lcom/sunrise/c/a;

    invoke-direct {v0}, Lcom/sunrise/c/a;-><init>()V

    iput-object v0, p0, Lcom/sunrise/c/b;->c:Lcom/sunrise/c/a;

    const/16 v0, 0x100

    new-array v0, v0, [Lcom/sunrise/c/d;

    iput-object v0, p0, Lcom/sunrise/c/b;->d:[Lcom/sunrise/c/d;

    const-wide/high16 v0, 0x3fe8000000000000L    # 0.75

    iget-object v2, p0, Lcom/sunrise/c/b;->d:[Lcom/sunrise/c/d;

    array-length v2, v2

    int-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/sunrise/c/b;->e:I

    new-instance v0, Lcom/sunrise/c/d;

    invoke-direct {v0}, Lcom/sunrise/c/d;-><init>()V

    iput-object v0, p0, Lcom/sunrise/c/b;->f:Lcom/sunrise/c/d;

    new-instance v0, Lcom/sunrise/c/d;

    invoke-direct {v0}, Lcom/sunrise/c/d;-><init>()V

    iput-object v0, p0, Lcom/sunrise/c/b;->g:Lcom/sunrise/c/d;

    new-instance v0, Lcom/sunrise/c/d;

    invoke-direct {v0}, Lcom/sunrise/c/d;-><init>()V

    iput-object v0, p0, Lcom/sunrise/c/b;->h:Lcom/sunrise/c/d;

    return-void
.end method

.method private a(Lcom/sunrise/c/d;)Lcom/sunrise/c/d;
    .locals 3

    iget-object v0, p0, Lcom/sunrise/c/b;->d:[Lcom/sunrise/c/d;

    iget v1, p1, Lcom/sunrise/c/d;->h:I

    iget-object v2, p0, Lcom/sunrise/c/b;->d:[Lcom/sunrise/c/d;

    array-length v2, v2

    rem-int/2addr v1, v2

    aget-object v0, v0, v1

    :goto_0
    if-eqz v0, :cond_1

    iget v1, v0, Lcom/sunrise/c/d;->b:I

    iget v2, p1, Lcom/sunrise/c/d;->b:I

    if-ne v1, v2, :cond_0

    invoke-virtual {p1, v0}, Lcom/sunrise/c/d;->a(Lcom/sunrise/c/d;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v0, v0, Lcom/sunrise/c/d;->i:Lcom/sunrise/c/d;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private b(Lcom/sunrise/c/d;)V
    .locals 7

    iget v0, p0, Lcom/sunrise/c/b;->b:I

    iget v1, p0, Lcom/sunrise/c/b;->e:I

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lcom/sunrise/c/b;->d:[Lcom/sunrise/c/d;

    array-length v0, v0

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v3, v1, 0x1

    new-array v4, v3, [Lcom/sunrise/c/d;

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_0
    if-ltz v2, :cond_1

    iget-object v0, p0, Lcom/sunrise/c/b;->d:[Lcom/sunrise/c/d;

    aget-object v0, v0, v2

    :goto_1
    if-eqz v0, :cond_0

    iget v1, v0, Lcom/sunrise/c/d;->h:I

    array-length v5, v4

    rem-int v5, v1, v5

    iget-object v1, v0, Lcom/sunrise/c/d;->i:Lcom/sunrise/c/d;

    aget-object v6, v4, v5

    iput-object v6, v0, Lcom/sunrise/c/d;->i:Lcom/sunrise/c/d;

    aput-object v0, v4, v5

    move-object v0, v1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0

    :cond_1
    iput-object v4, p0, Lcom/sunrise/c/b;->d:[Lcom/sunrise/c/d;

    int-to-double v0, v3

    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/sunrise/c/b;->e:I

    :cond_2
    iget v0, p1, Lcom/sunrise/c/d;->h:I

    iget-object v1, p0, Lcom/sunrise/c/b;->d:[Lcom/sunrise/c/d;

    array-length v1, v1

    rem-int/2addr v0, v1

    iget-object v1, p0, Lcom/sunrise/c/b;->d:[Lcom/sunrise/c/d;

    aget-object v1, v1, v0

    iput-object v1, p1, Lcom/sunrise/c/d;->i:Lcom/sunrise/c/d;

    iget-object v1, p0, Lcom/sunrise/c/b;->d:[Lcom/sunrise/c/d;

    aput-object p1, v1, v0

    return-void
.end method

.method private c(Ljava/lang/String;)Lcom/sunrise/c/d;
    .locals 3

    const/4 v1, 0x0

    const/16 v2, 0x8

    iget-object v0, p0, Lcom/sunrise/c/b;->g:Lcom/sunrise/c/d;

    invoke-virtual {v0, v2, p1, v1, v1}, Lcom/sunrise/c/d;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sunrise/c/b;->g:Lcom/sunrise/c/d;

    invoke-direct {p0, v0}, Lcom/sunrise/c/b;->a(Lcom/sunrise/c/d;)Lcom/sunrise/c/d;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sunrise/c/b;->c:Lcom/sunrise/c/a;

    invoke-virtual {p0, p1}, Lcom/sunrise/c/b;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/sunrise/c/a;->b(II)Lcom/sunrise/c/a;

    new-instance v0, Lcom/sunrise/c/d;

    iget v1, p0, Lcom/sunrise/c/b;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sunrise/c/b;->b:I

    iget-object v2, p0, Lcom/sunrise/c/b;->g:Lcom/sunrise/c/d;

    invoke-direct {v0, v1, v2}, Lcom/sunrise/c/d;-><init>(ILcom/sunrise/c/d;)V

    invoke-direct {p0, v0}, Lcom/sunrise/c/b;->b(Lcom/sunrise/c/d;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)I
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/sunrise/c/b;->f:Lcom/sunrise/c/d;

    invoke-virtual {v0, v1, p1, v2, v2}, Lcom/sunrise/c/d;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sunrise/c/b;->f:Lcom/sunrise/c/d;

    invoke-direct {p0, v0}, Lcom/sunrise/c/b;->a(Lcom/sunrise/c/d;)Lcom/sunrise/c/d;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sunrise/c/b;->c:Lcom/sunrise/c/a;

    invoke-virtual {v0, v1}, Lcom/sunrise/c/a;->a(I)Lcom/sunrise/c/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sunrise/c/a;->a(Ljava/lang/String;)Lcom/sunrise/c/a;

    new-instance v0, Lcom/sunrise/c/d;

    iget v1, p0, Lcom/sunrise/c/b;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sunrise/c/b;->b:I

    iget-object v2, p0, Lcom/sunrise/c/b;->f:Lcom/sunrise/c/d;

    invoke-direct {v0, v1, v2}, Lcom/sunrise/c/d;-><init>(ILcom/sunrise/c/d;)V

    invoke-direct {p0, v0}, Lcom/sunrise/c/b;->b(Lcom/sunrise/c/d;)V

    :cond_0
    iget v0, v0, Lcom/sunrise/c/d;->a:I

    return v0
.end method

.method a(Ljava/lang/Object;)Lcom/sunrise/c/d;
    .locals 3

    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v0, p0, Lcom/sunrise/c/b;->f:Lcom/sunrise/c/d;

    invoke-virtual {v0, v1}, Lcom/sunrise/c/d;->a(I)V

    iget-object v0, p0, Lcom/sunrise/c/b;->f:Lcom/sunrise/c/d;

    invoke-direct {p0, v0}, Lcom/sunrise/c/b;->a(Lcom/sunrise/c/d;)Lcom/sunrise/c/d;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sunrise/c/b;->c:Lcom/sunrise/c/a;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/sunrise/c/a;->a(I)Lcom/sunrise/c/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sunrise/c/a;->c(I)Lcom/sunrise/c/a;

    new-instance v0, Lcom/sunrise/c/d;

    iget v1, p0, Lcom/sunrise/c/b;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sunrise/c/b;->b:I

    iget-object v2, p0, Lcom/sunrise/c/b;->f:Lcom/sunrise/c/d;

    invoke-direct {v0, v1, v2}, Lcom/sunrise/c/d;-><init>(ILcom/sunrise/c/d;)V

    invoke-direct {p0, v0}, Lcom/sunrise/c/b;->b(Lcom/sunrise/c/d;)V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/sunrise/c/b;->c(Ljava/lang/String;)Lcom/sunrise/c/d;

    move-result-object v0

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lcom/sunrise/c/h;

    if-eqz v0, :cond_4

    check-cast p1, Lcom/sunrise/c/h;

    iget v0, p1, Lcom/sunrise/c/h;->j:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, Lcom/sunrise/c/h;->a()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p0, v0}, Lcom/sunrise/c/b;->b(Ljava/lang/String;)Lcom/sunrise/c/d;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/sunrise/c/h;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/sunrise/c/d;
    .locals 4

    const/16 v3, 0xc

    iget-object v0, p0, Lcom/sunrise/c/b;->g:Lcom/sunrise/c/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v3, p1, p2, v1}, Lcom/sunrise/c/d;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sunrise/c/b;->g:Lcom/sunrise/c/d;

    invoke-direct {p0, v0}, Lcom/sunrise/c/b;->a(Lcom/sunrise/c/d;)Lcom/sunrise/c/d;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sunrise/c/b;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, p2}, Lcom/sunrise/c/b;->a(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/sunrise/c/b;->c:Lcom/sunrise/c/a;

    invoke-virtual {v2, v3, v0}, Lcom/sunrise/c/a;->b(II)Lcom/sunrise/c/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sunrise/c/a;->b(I)Lcom/sunrise/c/a;

    new-instance v0, Lcom/sunrise/c/d;

    iget v1, p0, Lcom/sunrise/c/b;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sunrise/c/b;->b:I

    iget-object v2, p0, Lcom/sunrise/c/b;->g:Lcom/sunrise/c/d;

    invoke-direct {v0, v1, v2}, Lcom/sunrise/c/d;-><init>(ILcom/sunrise/c/d;)V

    invoke-direct {p0, v0}, Lcom/sunrise/c/b;->b(Lcom/sunrise/c/d;)V

    :cond_0
    return-object v0
.end method

.method a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sunrise/c/d;
    .locals 4

    const/16 v3, 0x9

    iget-object v0, p0, Lcom/sunrise/c/b;->h:Lcom/sunrise/c/d;

    invoke-virtual {v0, v3, p1, p2, p3}, Lcom/sunrise/c/d;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sunrise/c/b;->h:Lcom/sunrise/c/d;

    invoke-direct {p0, v0}, Lcom/sunrise/c/b;->a(Lcom/sunrise/c/d;)Lcom/sunrise/c/d;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sunrise/c/b;->b(Ljava/lang/String;)Lcom/sunrise/c/d;

    move-result-object v0

    iget v0, v0, Lcom/sunrise/c/d;->a:I

    invoke-virtual {p0, p2, p3}, Lcom/sunrise/c/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/sunrise/c/d;

    move-result-object v1

    iget v1, v1, Lcom/sunrise/c/d;->a:I

    iget-object v2, p0, Lcom/sunrise/c/b;->c:Lcom/sunrise/c/a;

    invoke-virtual {v2, v3, v0}, Lcom/sunrise/c/a;->b(II)Lcom/sunrise/c/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sunrise/c/a;->b(I)Lcom/sunrise/c/a;

    new-instance v0, Lcom/sunrise/c/d;

    iget v1, p0, Lcom/sunrise/c/b;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sunrise/c/b;->b:I

    iget-object v2, p0, Lcom/sunrise/c/b;->h:Lcom/sunrise/c/d;

    invoke-direct {v0, v1, v2}, Lcom/sunrise/c/d;-><init>(ILcom/sunrise/c/d;)V

    invoke-direct {p0, v0}, Lcom/sunrise/c/b;->b(Lcom/sunrise/c/d;)V

    :cond_0
    return-object v0
.end method

.method a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/sunrise/c/d;
    .locals 4

    if-eqz p4, :cond_0

    const/16 v0, 0xb

    :goto_0
    iget-object v1, p0, Lcom/sunrise/c/b;->h:Lcom/sunrise/c/d;

    invoke-virtual {v1, v0, p1, p2, p3}, Lcom/sunrise/c/d;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sunrise/c/b;->h:Lcom/sunrise/c/d;

    invoke-direct {p0, v1}, Lcom/sunrise/c/b;->a(Lcom/sunrise/c/d;)Lcom/sunrise/c/d;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/sunrise/c/b;->b(Ljava/lang/String;)Lcom/sunrise/c/d;

    move-result-object v1

    iget v1, v1, Lcom/sunrise/c/d;->a:I

    invoke-virtual {p0, p2, p3}, Lcom/sunrise/c/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/sunrise/c/d;

    move-result-object v2

    iget v2, v2, Lcom/sunrise/c/d;->a:I

    iget-object v3, p0, Lcom/sunrise/c/b;->c:Lcom/sunrise/c/a;

    invoke-virtual {v3, v0, v1}, Lcom/sunrise/c/a;->b(II)Lcom/sunrise/c/a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sunrise/c/a;->b(I)Lcom/sunrise/c/a;

    new-instance v0, Lcom/sunrise/c/d;

    iget v1, p0, Lcom/sunrise/c/b;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sunrise/c/b;->b:I

    iget-object v2, p0, Lcom/sunrise/c/b;->h:Lcom/sunrise/c/d;

    invoke-direct {v0, v1, v2}, Lcom/sunrise/c/d;-><init>(ILcom/sunrise/c/d;)V

    invoke-direct {p0, v0}, Lcom/sunrise/c/b;->b(Lcom/sunrise/c/d;)V

    :goto_1
    return-object v0

    :cond_0
    const/16 v0, 0xa

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method public a(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3

    const/4 v1, 0x0

    iput p1, p0, Lcom/sunrise/c/b;->a:I

    iput p2, p0, Lcom/sunrise/c/b;->n:I

    invoke-virtual {p0, p3}, Lcom/sunrise/c/b;->b(Ljava/lang/String;)Lcom/sunrise/c/d;

    move-result-object v0

    iget v0, v0, Lcom/sunrise/c/d;->a:I

    iput v0, p0, Lcom/sunrise/c/b;->o:I

    iput-object p3, p0, Lcom/sunrise/c/b;->i:Ljava/lang/String;

    if-nez p4, :cond_0

    move v0, v1

    :goto_0
    iput v0, p0, Lcom/sunrise/c/b;->p:I

    if-eqz p5, :cond_1

    array-length v0, p5

    if-lez v0, :cond_1

    array-length v0, p5

    iput v0, p0, Lcom/sunrise/c/b;->q:I

    iget v0, p0, Lcom/sunrise/c/b;->q:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sunrise/c/b;->r:[I

    :goto_1
    iget v0, p0, Lcom/sunrise/c/b;->q:I

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/sunrise/c/b;->r:[I

    aget-object v2, p5, v1

    invoke-virtual {p0, v2}, Lcom/sunrise/c/b;->b(Ljava/lang/String;)Lcom/sunrise/c/d;

    move-result-object v2

    iget v2, v2, Lcom/sunrise/c/d;->a:I

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p4}, Lcom/sunrise/c/b;->b(Ljava/lang/String;)Lcom/sunrise/c/d;

    move-result-object v0

    iget v0, v0, Lcom/sunrise/c/d;->a:I

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a()[B
    .locals 7

    const/4 v1, 0x0

    iget v0, p0, Lcom/sunrise/c/b;->q:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v2, v0, 0x18

    iget-object v0, p0, Lcom/sunrise/c/b;->j:Lcom/sunrise/c/c;

    move v4, v1

    :goto_0
    if-eqz v0, :cond_0

    add-int/lit8 v3, v4, 0x1

    invoke-virtual {v0}, Lcom/sunrise/c/c;->b()I

    move-result v4

    add-int/2addr v2, v4

    iget-object v0, v0, Lcom/sunrise/c/c;->a:Lcom/sunrise/c/c;

    move v4, v3

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sunrise/c/b;->l:Lcom/sunrise/c/g;

    move v3, v2

    move v2, v1

    :goto_1
    if-eqz v0, :cond_1

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0}, Lcom/sunrise/c/g;->b()I

    move-result v5

    add-int/2addr v3, v5

    iget-object v0, v0, Lcom/sunrise/c/g;->a:Lcom/sunrise/c/g;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/sunrise/c/b;->c:Lcom/sunrise/c/a;

    iget v0, v0, Lcom/sunrise/c/a;->b:I

    add-int/2addr v0, v3

    new-instance v3, Lcom/sunrise/c/a;

    invoke-direct {v3, v0}, Lcom/sunrise/c/a;-><init>(I)V

    const v0, -0x35014542    # -8346975.0f

    invoke-virtual {v3, v0}, Lcom/sunrise/c/a;->c(I)Lcom/sunrise/c/a;

    move-result-object v0

    iget v5, p0, Lcom/sunrise/c/b;->a:I

    invoke-virtual {v0, v5}, Lcom/sunrise/c/a;->c(I)Lcom/sunrise/c/a;

    iget v0, p0, Lcom/sunrise/c/b;->b:I

    invoke-virtual {v3, v0}, Lcom/sunrise/c/a;->b(I)Lcom/sunrise/c/a;

    move-result-object v0

    iget-object v5, p0, Lcom/sunrise/c/b;->c:Lcom/sunrise/c/a;

    iget-object v5, v5, Lcom/sunrise/c/a;->a:[B

    iget-object v6, p0, Lcom/sunrise/c/b;->c:Lcom/sunrise/c/a;

    iget v6, v6, Lcom/sunrise/c/a;->b:I

    invoke-virtual {v0, v5, v1, v6}, Lcom/sunrise/c/a;->a([BII)Lcom/sunrise/c/a;

    iget v0, p0, Lcom/sunrise/c/b;->n:I

    const v5, -0x60001

    and-int/2addr v0, v5

    invoke-virtual {v3, v0}, Lcom/sunrise/c/a;->b(I)Lcom/sunrise/c/a;

    move-result-object v0

    iget v5, p0, Lcom/sunrise/c/b;->o:I

    invoke-virtual {v0, v5}, Lcom/sunrise/c/a;->b(I)Lcom/sunrise/c/a;

    move-result-object v0

    iget v5, p0, Lcom/sunrise/c/b;->p:I

    invoke-virtual {v0, v5}, Lcom/sunrise/c/a;->b(I)Lcom/sunrise/c/a;

    iget v0, p0, Lcom/sunrise/c/b;->q:I

    invoke-virtual {v3, v0}, Lcom/sunrise/c/a;->b(I)Lcom/sunrise/c/a;

    move v0, v1

    :goto_2
    iget v5, p0, Lcom/sunrise/c/b;->q:I

    if-ge v0, v5, :cond_2

    iget-object v5, p0, Lcom/sunrise/c/b;->r:[I

    aget v5, v5, v0

    invoke-virtual {v3, v5}, Lcom/sunrise/c/a;->b(I)Lcom/sunrise/c/a;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v3, v4}, Lcom/sunrise/c/a;->b(I)Lcom/sunrise/c/a;

    iget-object v0, p0, Lcom/sunrise/c/b;->j:Lcom/sunrise/c/c;

    :goto_3
    if-eqz v0, :cond_3

    invoke-virtual {v0, v3}, Lcom/sunrise/c/c;->a(Lcom/sunrise/c/a;)V

    iget-object v0, v0, Lcom/sunrise/c/c;->a:Lcom/sunrise/c/c;

    goto :goto_3

    :cond_3
    invoke-virtual {v3, v2}, Lcom/sunrise/c/a;->b(I)Lcom/sunrise/c/a;

    iget-object v0, p0, Lcom/sunrise/c/b;->l:Lcom/sunrise/c/g;

    :goto_4
    if-eqz v0, :cond_4

    invoke-virtual {v0, v3}, Lcom/sunrise/c/g;->a(Lcom/sunrise/c/a;)V

    iget-object v0, v0, Lcom/sunrise/c/g;->a:Lcom/sunrise/c/g;

    goto :goto_4

    :cond_4
    invoke-virtual {v3, v1}, Lcom/sunrise/c/a;->b(I)Lcom/sunrise/c/a;

    iget-object v0, v3, Lcom/sunrise/c/a;->a:[B

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/sunrise/c/d;
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x7

    iget-object v0, p0, Lcom/sunrise/c/b;->g:Lcom/sunrise/c/d;

    invoke-virtual {v0, v2, p1, v1, v1}, Lcom/sunrise/c/d;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sunrise/c/b;->g:Lcom/sunrise/c/d;

    invoke-direct {p0, v0}, Lcom/sunrise/c/b;->a(Lcom/sunrise/c/d;)Lcom/sunrise/c/d;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sunrise/c/b;->c:Lcom/sunrise/c/a;

    invoke-virtual {p0, p1}, Lcom/sunrise/c/b;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/sunrise/c/a;->b(II)Lcom/sunrise/c/a;

    new-instance v0, Lcom/sunrise/c/d;

    iget v1, p0, Lcom/sunrise/c/b;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sunrise/c/b;->b:I

    iget-object v2, p0, Lcom/sunrise/c/b;->g:Lcom/sunrise/c/d;

    invoke-direct {v0, v1, v2}, Lcom/sunrise/c/d;-><init>(ILcom/sunrise/c/d;)V

    invoke-direct {p0, v0}, Lcom/sunrise/c/b;->b(Lcom/sunrise/c/d;)V

    :cond_0
    return-object v0
.end method
